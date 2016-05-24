# WordPress MySQL database migration
#
# Generated: Thursday 19. May 2016 22:47 UTC
# Hostname: 127.0.0.1
# Database: `actorscoDBdm4oa`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_10_commentmeta`
#

DROP TABLE IF EXISTS `wp_10_commentmeta`;


#
# Table structure of table `wp_10_commentmeta`
#

CREATE TABLE `wp_10_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_commentmeta`
#

#
# End of data contents of table `wp_10_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_comments`
#

DROP TABLE IF EXISTS `wp_10_comments`;


#
# Table structure of table `wp_10_comments`
#

CREATE TABLE `wp_10_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_comments`
#
INSERT INTO `wp_10_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-04-04 10:05:36', '2016-04-04 10:05:36', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_10_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_10_csp3_subscribers`;


#
# Table structure of table `wp_10_csp3_subscribers`
#

CREATE TABLE `wp_10_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_10_csp3_subscribers`
#

#
# End of data contents of table `wp_10_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_links`
#

DROP TABLE IF EXISTS `wp_10_links`;


#
# Table structure of table `wp_10_links`
#

CREATE TABLE `wp_10_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_links`
#

#
# End of data contents of table `wp_10_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_options`
#

DROP TABLE IF EXISTS `wp_10_options`;


#
# Table structure of table `wp_10_options`
#

CREATE TABLE `wp_10_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_options`
#
INSERT INTO `wp_10_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://newtest2.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://newtest2.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'New Test 2', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'max.1@shannonmacmillan.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'AClite', 'yes'),
(40, 'stylesheet', 'AClite', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_10_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'password', '4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFExMjMh', 'yes'),
(99, 'WPLANG', '', 'yes'),
(100, 'description', 'An Actors Compass Site', 'yes') ;
INSERT INTO `wp_10_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'cron', 'a:4:{i:1463738945;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463738946;a:1:{s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463738948;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"AEV5sHAyIuEW4nsnjlxZ3DNVNF7zTMQh";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(103, 'r_notice_data', '{"type":"redux-message","title":"<strong>Redux Framework: New extension: Option Panel Ad Remover!<\\/strong><br\\/>","message":"Interested in removing this notice?  Or removing the advertisements in the options panel during development?  Need to remove the Redux News dashboard widget?  We now offer an extension to hide all three!  <a href=\\"https:\\/\\/reduxframework.com\\/extension\\/ad-remover\\/\\">Check it out!<\\/a>","color":"rgba(0,162,227,1)"}', 'yes'),
(104, 'redux_blast', '1459764546', 'yes'),
(105, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(106, '_transient_timeout__redux_activation_redirect', '1463698004', 'no'),
(107, '_transient__redux_activation_redirect', '1', 'no'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'gform_pending_installation', '1', 'yes'),
(116, 'gform_enable_background_updates', '1', 'yes'),
(117, 'gform_longtext_ready', '1', 'yes'),
(118, 'rg_form_version', '1.9.19', 'yes'),
(119, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(120, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(125, 'acf_version', '5.3.5', 'yes'),
(126, 'seed_csp3_settings_1', 'a:34:{s:6:"status";s:1:"0";s:7:"api_key";s:0:"";s:4:"logo";s:0:"";s:8:"headline";s:27:"Coming Soon Pro by SeedProd";s:11:"description";s:70:"Replace the headline above and this description with your own content.";s:9:"emaillist";s:8:"database";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:20:"gravityforms_form_id";s:2:"-1";s:17:"mailchimp_api_key";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(127, 'seed_csp3_settings_2', 'a:22:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#60AA1F";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:12:"Pontano+Sans";s:13:"headline_font";s:5:"Bevan";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:989:"<!DOCTYPE html>\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\n	<head>\n		<meta charset="utf-8">\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\n		<title>{Title}</title>\n		{MetaDescription}\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\n		{Privacy}\n		{Favicon}\n		{Head}\n		{CustomCSS}\n	</head>\n<body>\n	<div class="container">\n		<div class="row">\n			<div class="span10 offset1">\n				<div id="csp3-content">\n					{Logo}\n					{Headline}\n          {ProgressBar}\n          {Countdown}\n					{Description}\n					{Form}\n					{SocialProfiles}\n				</div><!-- end of #csp3-content -->\n			</div><!--! end of .span8 -->\n		</div> <!--! end of .row -->\n	</div> <!--! end of .container -->\n	{Credit}\n\n{Footer}\n</body>\n</html>";}', 'yes'),
(128, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(129, 'seed_csp3_version', '3.15.3', 'yes'),
(130, 'redux_builder_ac', 'a:16:{s:12:"name-options";s:0:"";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:0:"";s:13:"email-options";s:0:"";s:14:"height-options";s:0:"";s:16:"bodytype-options";s:0:"";s:12:"hair-options";s:0:"";s:12:"eyes-options";s:0:"";s:16:"headshot-options";a:1:{s:3:"url";s:40:"/wp-content/themes/AClite/img/avatar.jpg";}s:12:"union-select";a:3:{s:3:"sag";s:1:"0";s:3:"aea";s:1:"0";s:4:"agva";s:1:"0";}s:10:"agent-name";s:0:"";s:11:"agent-email";s:0:"";s:11:"agent-phone";s:0:"";s:14:"social-options";a:9:{s:8:"facebook";b:0;s:7:"twitter";b:0;s:9:"instagram";b:0;s:7:"youtube";b:0;s:5:"vimeo";b:0;s:10:"soundcloud";b:0;s:12:"actorsaccess";b:0;s:4:"imdb";b:0;s:9:"backstage";b:0;}s:17:"opt-palette-color";s:4:"teal";s:14:"opt-typography";s:6:"fonts1";}', 'yes'),
(131, 'redux_builder_ac-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1459764548;}', 'yes'),
(133, '_transient_is_multi_author', '0', 'yes'),
(142, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(143, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(144, 'tadv_version', '4000', 'yes'),
(147, 'redux_builder_ac_res-transients', 'a:2:{s:14:"changed_values";a:1:{s:15:"credits-options";a:4:{s:19:"redux_repeater_data";a:1:{i:0;a:1:{s:5:"title";s:0:"";}}s:12:"credit_title";a:1:{i:0;s:0:"";}s:4:"role";a:1:{i:0;s:0:"";}s:8:"producer";a:1:{i:0;s:0:"";}}}s:9:"last_save";i:1459771288;}', 'yes'),
(148, 'redux_builder_ac_res', 'a:5:{s:8:"last_tab";s:0:"";s:14:"resume-options";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:15:"credits-options";a:4:{s:19:"redux_repeater_data";a:1:{i:0;a:1:{s:5:"title";s:0:"";}}s:12:"credit_title";a:1:{i:0;s:5:"title";}s:4:"role";a:1:{i:0;s:12:"awesome role";}s:8:"producer";a:1:{i:0;s:12:"rad director";}}s:16:"training-options";a:4:{s:19:"redux_repeater_data";a:1:{i:0;a:1:{s:5:"title";s:0:"";}}s:15:"class_technique";a:1:{i:0;s:0:"";}s:7:"teacher";a:1:{i:0;s:0:"";}s:6:"school";a:1:{i:0;s:0:"";}}s:14:"skills-options";s:0:"";}', 'yes'),
(153, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_10_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_postmeta`
#

DROP TABLE IF EXISTS `wp_10_postmeta`;


#
# Table structure of table `wp_10_postmeta`
#

CREATE TABLE `wp_10_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_postmeta`
#
INSERT INTO `wp_10_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_10_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_posts`
#

DROP TABLE IF EXISTS `wp_10_posts`;


#
# Table structure of table `wp_10_posts`
#

CREATE TABLE `wp_10_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_posts`
#
INSERT INTO `wp_10_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 12, '2016-04-04 10:05:36', '2016-04-04 10:05:36', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-04 10:05:36', '2016-04-04 10:05:36', '', 0, 'http://newtest2.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 12, '2016-04-04 10:05:36', '2016-04-04 10:05:36', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-04 10:05:36', '2016-04-04 10:05:36', '', 0, 'http://newtest2.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_10_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_form`
#

DROP TABLE IF EXISTS `wp_10_rg_form`;


#
# Table structure of table `wp_10_rg_form`
#

CREATE TABLE `wp_10_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_form`
#

#
# End of data contents of table `wp_10_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_10_rg_form_meta`;


#
# Table structure of table `wp_10_rg_form_meta`
#

CREATE TABLE `wp_10_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_form_meta`
#

#
# End of data contents of table `wp_10_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_form_view`
#

DROP TABLE IF EXISTS `wp_10_rg_form_view`;


#
# Table structure of table `wp_10_rg_form_view`
#

CREATE TABLE `wp_10_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_form_view`
#

#
# End of data contents of table `wp_10_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_10_rg_incomplete_submissions`;


#
# Table structure of table `wp_10_rg_incomplete_submissions`
#

CREATE TABLE `wp_10_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_10_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_lead`
#

DROP TABLE IF EXISTS `wp_10_rg_lead`;


#
# Table structure of table `wp_10_rg_lead`
#

CREATE TABLE `wp_10_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_lead`
#

#
# End of data contents of table `wp_10_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_10_rg_lead_detail`;


#
# Table structure of table `wp_10_rg_lead_detail`
#

CREATE TABLE `wp_10_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_lead_detail`
#

#
# End of data contents of table `wp_10_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_10_rg_lead_detail_long`;


#
# Table structure of table `wp_10_rg_lead_detail_long`
#

CREATE TABLE `wp_10_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_lead_detail_long`
#

#
# End of data contents of table `wp_10_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_10_rg_lead_meta`;


#
# Table structure of table `wp_10_rg_lead_meta`
#

CREATE TABLE `wp_10_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_lead_meta`
#

#
# End of data contents of table `wp_10_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_10_rg_lead_notes`;


#
# Table structure of table `wp_10_rg_lead_notes`
#

CREATE TABLE `wp_10_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_rg_lead_notes`
#

#
# End of data contents of table `wp_10_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_term_relationships`
#

DROP TABLE IF EXISTS `wp_10_term_relationships`;


#
# Table structure of table `wp_10_term_relationships`
#

CREATE TABLE `wp_10_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_term_relationships`
#
INSERT INTO `wp_10_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_10_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_10_term_taxonomy`;


#
# Table structure of table `wp_10_term_taxonomy`
#

CREATE TABLE `wp_10_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_term_taxonomy`
#
INSERT INTO `wp_10_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_10_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_termmeta`
#

DROP TABLE IF EXISTS `wp_10_termmeta`;


#
# Table structure of table `wp_10_termmeta`
#

CREATE TABLE `wp_10_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_termmeta`
#

#
# End of data contents of table `wp_10_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_10_terms`
#

DROP TABLE IF EXISTS `wp_10_terms`;


#
# Table structure of table `wp_10_terms`
#

CREATE TABLE `wp_10_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_10_terms`
#
INSERT INTO `wp_10_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_10_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_commentmeta`
#

DROP TABLE IF EXISTS `wp_2_commentmeta`;


#
# Table structure of table `wp_2_commentmeta`
#

CREATE TABLE `wp_2_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_commentmeta`
#

#
# End of data contents of table `wp_2_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_comments`
#

DROP TABLE IF EXISTS `wp_2_comments`;


#
# Table structure of table `wp_2_comments`
#

CREATE TABLE `wp_2_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_comments`
#
INSERT INTO `wp_2_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://actorscompassdev.dev/', '', '2016-03-04 01:27:49', '2016-03-04 01:27:49', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_2_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_2_csp3_subscribers`;


#
# Table structure of table `wp_2_csp3_subscribers`
#

CREATE TABLE `wp_2_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_csp3_subscribers`
#

#
# End of data contents of table `wp_2_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_links`
#

DROP TABLE IF EXISTS `wp_2_links`;


#
# Table structure of table `wp_2_links`
#

CREATE TABLE `wp_2_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_links`
#

#
# End of data contents of table `wp_2_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_options`
#

DROP TABLE IF EXISTS `wp_2_options`;


#
# Table structure of table `wp_2_options`
#

CREATE TABLE `wp_2_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_options`
#
INSERT INTO `wp_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://demo.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://demo.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'ActorsCompass Demo', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'grant@kellerdigital.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'AClite', 'yes'),
(40, 'stylesheet', 'AClite', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_2_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'WPLANG', '', 'yes'),
(99, 'cron', 'a:4:{i:1463726716;a:1:{s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463728312;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463765228;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(100, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'gform_pending_installation', '1', 'yes'),
(111, 'gform_enable_background_updates', '1', 'yes'),
(112, 'gform_longtext_ready', '1', 'yes'),
(113, 'rg_form_version', '1.9.19', 'yes'),
(114, 'psts_action_log', 'a:1:{i:1457334626;s:54:"Manual extension email sent to grant@kellerdigital.com";}', 'yes'),
(115, 'psts_withdrawn', '0', 'yes'),
(118, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"MJae/n8dnxLB9062Bvm32bL6DHxAc/iO";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(119, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(120, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(125, 'acf_version', '5.3.5', 'yes'),
(126, 'seed_csp3_settings_1', 'a:34:{s:6:"status";s:1:"0";s:7:"api_key";s:0:"";s:4:"logo";s:0:"";s:8:"headline";s:27:"Coming Soon Pro by SeedProd";s:11:"description";s:70:"Replace the headline above and this description with your own content.";s:9:"emaillist";s:8:"database";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:20:"gravityforms_form_id";s:2:"-1";s:17:"mailchimp_api_key";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(127, 'seed_csp3_settings_2', 'a:22:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#60AA1F";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:12:"Pontano+Sans";s:13:"headline_font";s:5:"Bevan";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:989:"<!DOCTYPE html>\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\n	<head>\n		<meta charset="utf-8">\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\n		<title>{Title}</title>\n		{MetaDescription}\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\n		{Privacy}\n		{Favicon}\n		{Head}\n		{CustomCSS}\n	</head>\n<body>\n	<div class="container">\n		<div class="row">\n			<div class="span10 offset1">\n				<div id="csp3-content">\n					{Logo}\n					{Headline}\n          {ProgressBar}\n          {Countdown}\n					{Description}\n					{Form}\n					{SocialProfiles}\n				</div><!-- end of #csp3-content -->\n			</div><!--! end of .span8 -->\n		</div> <!--! end of .row -->\n	</div> <!--! end of .container -->\n	{Credit}\n\n{Footer}\n</body>\n</html>";}', 'yes'),
(128, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(129, 'seed_csp3_version', '3.15.3', 'yes'),
(130, 'redux_builder_ac', 'a:30:{s:8:"last_tab";s:1:"1";s:12:"name-options";s:20:"Boaty McBoatface Jr.";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:14:"(323) 555-1234";s:13:"email-options";s:23:"johnnytest@sorenson.com";s:14:"height-options";s:5:"6\' 3"";s:16:"bodytype-options";s:8:"Athletic";s:12:"hair-options";s:5:"Brown";s:12:"eyes-options";s:5:"Green";s:16:"headshot-options";a:5:{s:3:"url";s:90:"http://demo.actorscompassdev.dev/wp-content/uploads/sites/2/2016/03/subtle-light-small.jpg";s:2:"id";s:1:"9";s:6:"height";s:3:"606";s:5:"width";s:3:"909";s:9:"thumbnail";s:0:"";}s:12:"reel-options";s:26:"https://vimeo.com/92508005";s:11:"bio-options";s:163:"Boaty is an actor and fight choreographer. He does stunts and fights and all kinds of different things like that. He loves to act, eat and assemble Ikea furniture.";s:12:"union-switch";s:1:"1";s:12:"union-select";a:3:{s:3:"sag";s:1:"1";s:3:"aea";s:1:"1";s:4:"agva";s:1:"1";}s:12:"agent-switch";s:1:"1";s:10:"agent-name";s:0:"";s:11:"agent-email";s:0:"";s:11:"agent-phone";s:0:"";s:14:"social-options";a:9:{s:8:"facebook";s:1:"1";s:7:"twitter";s:1:"1";s:9:"instagram";s:1:"1";s:7:"youtube";s:1:"1";s:5:"vimeo";s:1:"1";s:10:"soundcloud";s:1:"1";s:12:"actorsaccess";s:1:"1";s:4:"imdb";s:1:"1";s:9:"backstage";s:1:"1";}s:12:"facebook-url";s:19:"http://facebook.com";s:11:"twitter-url";s:18:"http://twitter.com";s:13:"instagram-url";s:20:"http://instagram.com";s:11:"youtube-url";s:18:"http://youtube.com";s:9:"vimeo-url";s:16:"http://vimeo.com";s:14:"soundcloud-url";s:21:"http://soundcloud.com";s:16:"actorsaccess-url";s:23:"http://actorsaccess.com";s:8:"imdb-url";s:15:"http://imdb.com";s:13:"backstage-url";s:20:"http://backstage.com";s:17:"opt-palette-color";s:10:"blackwhite";s:14:"opt-typography";s:6:"fonts1";}', 'yes'),
(131, 'redux_builder_ac-transients', 'a:3:{s:14:"changed_values";a:1:{s:12:"name-options";s:16:"Boaty McBoatface";}s:9:"last_save";i:1459719941;s:7:"notices";a:1:{s:8:"warnings";a:0:{}}}', 'yes'),
(137, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1457334835;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(138, 'current_theme', 'AClite', 'yes'),
(139, 'theme_mods_AClite', 'a:2:{i:0;b:0;s:16:"redux_builder_ac";a:13:{s:12:"name-options";s:16:"Boaty McBoatface";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:14:"(323) 555-1234";s:14:"opt-typography";s:6:"fonts1";s:15:"credits-options";a:5:{i:1;s:13:"Role - Show 1";i:2;s:13:"Role - Show 2";i:3;s:13:"Role - Show 3";i:4;s:13:"Role - Show 4";i:5;s:13:"Role - Show 5";}s:17:"opt-palette-color";s:4:"teal";s:14:"social-options";a:9:{s:8:"facebook";s:1:"1";s:7:"twitter";s:1:"1";s:9:"instagram";s:1:"1";s:7:"youtube";s:1:"1";s:5:"vimeo";s:1:"1";s:10:"soundcloud";s:1:"1";s:12:"actorsaccess";s:1:"1";s:4:"imdb";s:1:"1";s:9:"backstage";s:1:"1";}s:12:"facebook-url";s:19:"http://facebook.com";s:16:"headshot-options";a:5:{s:3:"url";s:90:"http://demo.actorscompassdev.dev/wp-content/uploads/sites/2/2016/03/subtle-light-small.jpg";s:2:"id";s:1:"9";s:6:"height";s:3:"606";s:5:"width";s:3:"909";s:9:"thumbnail";s:0:"";}s:12:"reel-options";s:26:"https://vimeo.com/92508005";s:11:"bio-options";s:163:"Boaty is an actor and fight choreographer. He does stunts and fights and all kinds of different things like that. He loves to act, eat and assemble Ikea furniture.";s:12:"agent-switch";s:1:"1";s:10:"agent-name";s:0:"";}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(148, 'theme_mods_Strapped', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1457336803;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(151, 'allowedthemes', 'a:0:{}', 'yes'),
(155, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(180, 'psts_signed_up', '0', 'yes'),
(189, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(190, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(191, 'tadv_version', '4000', 'yes'),
(230, '_transient_timeout__redux_activation_redirect', '1463698027', 'no'),
(231, '_transient__redux_activation_redirect', '1', 'no'),
(232, '_transient_is_multi_author', '0', 'yes'),
(233, 'r_notice_data', '{"type":"redux-message","title":"<strong>Redux Framework: New extension: Option Panel Ad Remover!<\\/strong><br\\/>","message":"Interested in removing this notice?  Or removing the advertisements in the options panel during development?  Need to remove the Redux News dashboard widget?  We now offer an extension to hide all three!  <a href=\\"https:\\/\\/reduxframework.com\\/extension\\/ad-remover\\/\\">Check it out!<\\/a>","color":"rgba(0,162,227,1)"}', 'yes'),
(234, 'redux_blast', '1459552778', 'yes'),
(251, '_transient_aclite_categories', '1', 'yes'),
(267, 'redux_builder_ac_res', 'a:5:{s:8:"last_tab";s:0:"";s:14:"resume-options";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:15:"credits-options";a:4:{s:19:"redux_repeater_data";a:3:{i:0;a:1:{s:5:"title";s:0:"";}i:1;a:1:{s:5:"title";s:0:"";}i:2;a:1:{s:5:"title";s:0:"";}}s:12:"credit_title";a:3:{i:0;s:11:"Miss Saigon";i:1;s:7:"Pipping";i:2;s:10:"New Credit";}s:4:"role";a:3:{i:0;s:15:"Vietnamese Lady";i:1;s:8:"ksjalkjg";i:2;s:4:"Test";}s:8:"producer";a:3:{i:0;s:16:"Cameron McIntosh";i:1;s:5:"Rolen";i:2;s:7:"Testing";}}s:16:"training-options";a:4:{s:19:"redux_repeater_data";a:2:{i:0;a:1:{s:5:"title";s:0:"";}i:1;a:1:{s:5:"title";s:0:"";}}s:15:"class_technique";a:2:{i:0;s:6:"Improv";i:1;s:20:"Advanced Pop n\' Lock";}s:7:"teacher";a:2:{i:0;s:3:"i/O";i:1;s:9:"Helen Kim";}s:6:"school";a:2:{i:0;s:3:"i/O";i:1;s:19:"The Guthrie Theater";}}s:14:"skills-options";s:16:"These be skillz.";}', 'yes'),
(268, 'redux_builder_ac_res-transients', 'a:2:{s:14:"changed_values";a:1:{s:14:"skills-options";s:0:"";}s:9:"last_save";i:1459757533;}', 'yes'),
(298, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(300, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_2_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_postmeta`
#

DROP TABLE IF EXISTS `wp_2_postmeta`;


#
# Table structure of table `wp_2_postmeta`
#

CREATE TABLE `wp_2_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_postmeta`
#
INSERT INTO `wp_2_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 9, '_wp_attached_file', '2016/03/subtle-light-small.jpg'),
(3, 9, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.156129220447750238776052356115542352199554443359375;s:5:"bytes";i:2164;s:11:"size_before";i:68565;s:10:"size_after";i:66401;s:4:"time";d:0.7199999999999999733546474089962430298328399658203125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:8.800000000000000710542735760100185871124267578125;s:5:"bytes";i:263;s:11:"size_before";i:2988;s:10:"size_after";i:2725;s:4:"time";d:0.4899999999999999911182158029987476766109466552734375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:7.21999999999999975131004248396493494510650634765625;s:5:"bytes";i:464;s:11:"size_before";i:6424;s:10:"size_after";i:5960;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:5.3300000000000000710542735760100185871124267578125;s:5:"bytes";i:1437;s:11:"size_before";i:26963;s:10:"size_after";i:25526;s:4:"time";d:0.0899999999999999966693309261245303787291049957275390625;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:32190;s:10:"size_after";i:32190;s:4:"time";d:0.11000000000000000055511151231257827021181583404541015625;}}}'),
(4, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:909;s:6:"height";i:606;s:4:"file";s:30:"2016/03/subtle-light-small.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"subtle-light-small-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"subtle-light-small-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"subtle-light-small-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 10, '_wp_attached_file', '2016/04/SMacMillan_Acting_Resume.pdf') ;

#
# End of data contents of table `wp_2_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_posts`
#

DROP TABLE IF EXISTS `wp_2_posts`;


#
# Table structure of table `wp_2_posts`
#

CREATE TABLE `wp_2_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_posts`
#
INSERT INTO `wp_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 4, '2016-03-04 01:27:49', '2016-03-04 01:27:49', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-04 01:27:49', '2016-03-04 01:27:49', '', 0, 'http://demo.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 4, '2016-03-04 01:27:49', '2016-03-04 01:27:49', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://demo.actorscompassdev.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-04 01:27:49', '2016-03-04 01:27:49', '', 0, 'http://demo.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-03-07 07:11:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-07 07:11:53', '0000-00-00 00:00:00', '', 0, 'http://demo.actorscompassdev.dev/?p=3', 0, 'post', '', 0),
(4, 1, '2016-03-07 07:13:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-07 07:13:41', '0000-00-00 00:00:00', '', 0, 'http://demo.actorscompassdev.dev/?p=4', 0, 'post', '', 0),
(5, 1, '2016-03-07 07:20:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-07 07:20:25', '0000-00-00 00:00:00', '', 0, 'http://demo.actorscompassdev.dev/?p=5', 0, 'post', '', 0),
(6, 1, '2016-03-07 07:46:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-07 07:46:00', '0000-00-00 00:00:00', '', 0, 'http://demo.actorscompassdev.dev/?p=6', 0, 'post', '', 0),
(7, 1, '2016-03-07 07:46:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-07 07:46:36', '0000-00-00 00:00:00', '', 0, 'http://demo.actorscompassdev.dev/?p=7', 0, 'post', '', 0),
(8, 1, '2016-03-10 06:47:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-10 06:47:21', '0000-00-00 00:00:00', '', 0, 'http://demo.actorscompassdev.dev/?p=8', 0, 'post', '', 0),
(9, 4, '2016-03-23 06:24:51', '2016-03-23 06:24:51', '', 'subtle-light-small', '', 'inherit', 'open', 'closed', '', 'subtle-light-small', '', '', '2016-03-23 06:24:51', '2016-03-23 06:24:51', '', 0, 'http://demo.actorscompassdev.dev/wp-content/uploads/sites/2/2016/03/subtle-light-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2016-04-03 21:18:16', '2016-04-03 21:18:16', '', 'SMacMillan_Acting_Resume', '', 'inherit', 'open', 'closed', '', 'smacmillan_acting_resume', '', '', '2016-04-03 21:18:16', '2016-04-03 21:18:16', '', 0, 'http://demo.actorscompassdev.dev/wp-content/uploads/sites/2/2016/04/SMacMillan_Acting_Resume.pdf', 0, 'attachment', 'application/pdf', 0) ;

#
# End of data contents of table `wp_2_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_form`
#

DROP TABLE IF EXISTS `wp_2_rg_form`;


#
# Table structure of table `wp_2_rg_form`
#

CREATE TABLE `wp_2_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_form`
#

#
# End of data contents of table `wp_2_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_2_rg_form_meta`;


#
# Table structure of table `wp_2_rg_form_meta`
#

CREATE TABLE `wp_2_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_form_meta`
#

#
# End of data contents of table `wp_2_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_form_view`
#

DROP TABLE IF EXISTS `wp_2_rg_form_view`;


#
# Table structure of table `wp_2_rg_form_view`
#

CREATE TABLE `wp_2_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_form_view`
#

#
# End of data contents of table `wp_2_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_2_rg_incomplete_submissions`;


#
# Table structure of table `wp_2_rg_incomplete_submissions`
#

CREATE TABLE `wp_2_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_2_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_lead`
#

DROP TABLE IF EXISTS `wp_2_rg_lead`;


#
# Table structure of table `wp_2_rg_lead`
#

CREATE TABLE `wp_2_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_lead`
#

#
# End of data contents of table `wp_2_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_2_rg_lead_detail`;


#
# Table structure of table `wp_2_rg_lead_detail`
#

CREATE TABLE `wp_2_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_lead_detail`
#

#
# End of data contents of table `wp_2_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_2_rg_lead_detail_long`;


#
# Table structure of table `wp_2_rg_lead_detail_long`
#

CREATE TABLE `wp_2_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_lead_detail_long`
#

#
# End of data contents of table `wp_2_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_2_rg_lead_meta`;


#
# Table structure of table `wp_2_rg_lead_meta`
#

CREATE TABLE `wp_2_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_lead_meta`
#

#
# End of data contents of table `wp_2_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_2_rg_lead_notes`;


#
# Table structure of table `wp_2_rg_lead_notes`
#

CREATE TABLE `wp_2_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_rg_lead_notes`
#

#
# End of data contents of table `wp_2_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_term_relationships`
#

DROP TABLE IF EXISTS `wp_2_term_relationships`;


#
# Table structure of table `wp_2_term_relationships`
#

CREATE TABLE `wp_2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_term_relationships`
#
INSERT INTO `wp_2_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_2_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_2_term_taxonomy`;


#
# Table structure of table `wp_2_term_taxonomy`
#

CREATE TABLE `wp_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_term_taxonomy`
#
INSERT INTO `wp_2_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_2_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_termmeta`
#

DROP TABLE IF EXISTS `wp_2_termmeta`;


#
# Table structure of table `wp_2_termmeta`
#

CREATE TABLE `wp_2_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_termmeta`
#

#
# End of data contents of table `wp_2_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_terms`
#

DROP TABLE IF EXISTS `wp_2_terms`;


#
# Table structure of table `wp_2_terms`
#

CREATE TABLE `wp_2_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_2_terms`
#
INSERT INTO `wp_2_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_2_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_commentmeta`
#

DROP TABLE IF EXISTS `wp_3_commentmeta`;


#
# Table structure of table `wp_3_commentmeta`
#

CREATE TABLE `wp_3_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_commentmeta`
#

#
# End of data contents of table `wp_3_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_comments`
#

DROP TABLE IF EXISTS `wp_3_comments`;


#
# Table structure of table `wp_3_comments`
#

CREATE TABLE `wp_3_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_comments`
#
INSERT INTO `wp_3_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-03-21 07:58:44', '2016-03-21 07:58:44', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_3_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_3_csp3_subscribers`;


#
# Table structure of table `wp_3_csp3_subscribers`
#

CREATE TABLE `wp_3_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_3_csp3_subscribers`
#

#
# End of data contents of table `wp_3_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_links`
#

DROP TABLE IF EXISTS `wp_3_links`;


#
# Table structure of table `wp_3_links`
#

CREATE TABLE `wp_3_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_links`
#

#
# End of data contents of table `wp_3_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_options`
#

DROP TABLE IF EXISTS `wp_3_options`;


#
# Table structure of table `wp_3_options`
#

CREATE TABLE `wp_3_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_options`
#
INSERT INTO `wp_3_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://reduxtest.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://reduxtest.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'Redux Test', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shannon.1@bluestormcreative.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_3_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'WPLANG', '', 'yes') ;

#
# End of data contents of table `wp_3_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_postmeta`
#

DROP TABLE IF EXISTS `wp_3_postmeta`;


#
# Table structure of table `wp_3_postmeta`
#

CREATE TABLE `wp_3_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_postmeta`
#
INSERT INTO `wp_3_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_3_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_posts`
#

DROP TABLE IF EXISTS `wp_3_posts`;


#
# Table structure of table `wp_3_posts`
#

CREATE TABLE `wp_3_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_posts`
#
INSERT INTO `wp_3_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 5, '2016-03-21 07:58:44', '2016-03-21 07:58:44', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-21 07:58:44', '2016-03-21 07:58:44', '', 0, 'http://reduxtest.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 5, '2016-03-21 07:58:44', '2016-03-21 07:58:44', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-21 07:58:44', '2016-03-21 07:58:44', '', 0, 'http://reduxtest.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_3_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_term_relationships`
#

DROP TABLE IF EXISTS `wp_3_term_relationships`;


#
# Table structure of table `wp_3_term_relationships`
#

CREATE TABLE `wp_3_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_term_relationships`
#
INSERT INTO `wp_3_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_3_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_3_term_taxonomy`;


#
# Table structure of table `wp_3_term_taxonomy`
#

CREATE TABLE `wp_3_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_term_taxonomy`
#
INSERT INTO `wp_3_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_3_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_termmeta`
#

DROP TABLE IF EXISTS `wp_3_termmeta`;


#
# Table structure of table `wp_3_termmeta`
#

CREATE TABLE `wp_3_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_termmeta`
#

#
# End of data contents of table `wp_3_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_3_terms`
#

DROP TABLE IF EXISTS `wp_3_terms`;


#
# Table structure of table `wp_3_terms`
#

CREATE TABLE `wp_3_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_3_terms`
#
INSERT INTO `wp_3_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_3_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_commentmeta`
#

DROP TABLE IF EXISTS `wp_4_commentmeta`;


#
# Table structure of table `wp_4_commentmeta`
#

CREATE TABLE `wp_4_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_commentmeta`
#

#
# End of data contents of table `wp_4_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_comments`
#

DROP TABLE IF EXISTS `wp_4_comments`;


#
# Table structure of table `wp_4_comments`
#

CREATE TABLE `wp_4_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_comments`
#
INSERT INTO `wp_4_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-03-14 10:53:38', '2016-03-14 10:53:38', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_4_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_4_csp3_subscribers`;


#
# Table structure of table `wp_4_csp3_subscribers`
#

CREATE TABLE `wp_4_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_4_csp3_subscribers`
#

#
# End of data contents of table `wp_4_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_links`
#

DROP TABLE IF EXISTS `wp_4_links`;


#
# Table structure of table `wp_4_links`
#

CREATE TABLE `wp_4_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_links`
#

#
# End of data contents of table `wp_4_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_options`
#

DROP TABLE IF EXISTS `wp_4_options`;


#
# Table structure of table `wp_4_options`
#

CREATE TABLE `wp_4_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_options`
#
INSERT INTO `wp_4_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://keller1.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://keller1.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'Keller 1', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kellermanage@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_4_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'blog_template', '', 'yes'),
(99, 'WPLANG', '', 'yes'),
(100, 'cron', 'a:3:{i:1463741621;a:3:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463741622;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes') ;
INSERT INTO `wp_4_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"GBmWBpHvfT1R8c0/zyzWJfE0qJMV9qUE";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(102, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'gform_pending_installation', '1', 'yes'),
(113, 'gform_enable_background_updates', '1', 'yes'),
(114, 'gform_longtext_ready', '1', 'yes'),
(115, 'rg_form_version', '1.9.19', 'yes'),
(116, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(117, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(122, 'acf_version', '5.3.5', 'yes'),
(123, 'seed_csp3_settings_1', 'a:34:{s:6:"status";s:1:"0";s:7:"api_key";s:0:"";s:4:"logo";s:0:"";s:8:"headline";s:27:"Coming Soon Pro by SeedProd";s:11:"description";s:70:"Replace the headline above and this description with your own content.";s:9:"emaillist";s:8:"database";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:20:"gravityforms_form_id";s:2:"-1";s:17:"mailchimp_api_key";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(124, 'seed_csp3_settings_2', 'a:22:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#60AA1F";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:12:"Pontano+Sans";s:13:"headline_font";s:5:"Bevan";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:989:"<!DOCTYPE html>\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\n	<head>\n		<meta charset="utf-8">\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\n		<title>{Title}</title>\n		{MetaDescription}\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\n		{Privacy}\n		{Favicon}\n		{Head}\n		{CustomCSS}\n	</head>\n<body>\n	<div class="container">\n		<div class="row">\n			<div class="span10 offset1">\n				<div id="csp3-content">\n					{Logo}\n					{Headline}\n          {ProgressBar}\n          {Countdown}\n					{Description}\n					{Form}\n					{SocialProfiles}\n				</div><!-- end of #csp3-content -->\n			</div><!--! end of .span8 -->\n		</div> <!--! end of .row -->\n	</div> <!--! end of .container -->\n	{Credit}\n\n{Footer}\n</body>\n</html>";}', 'yes'),
(125, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(126, 'seed_csp3_version', '3.15.3', 'yes'),
(127, 'redux_builder_ac', 'a:15:{s:12:"name-options";s:0:"";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:0:"";s:13:"email-options";s:0:"";s:14:"height-options";s:0:"";s:16:"bodytype-options";s:0:"";s:12:"hair-options";s:0:"";s:12:"eyes-options";s:0:"";s:16:"headshot-options";a:1:{s:3:"url";s:40:"/wp-content/themes/AClite/img/avatar.jpg";}s:9:"reel-arve";s:0:"";s:15:"credits-options";a:5:{i:1;s:13:"Role - Show 1";i:2;s:13:"Role - Show 2";i:3;s:13:"Role - Show 3";i:4;s:13:"Role - Show 4";i:5;s:13:"Role - Show 5";}s:14:"skills-options";a:5:{i:1;s:7:"Skill 1";i:2;s:7:"Skill 2";i:3;s:7:"Skill 3";i:4;s:7:"Skill 4";i:5;s:7:"Skill 5";}s:14:"social-options";a:6:{s:8:"facebook";b:0;s:7:"twitter";b:0;s:9:"instagram";b:0;s:12:"actorsaccess";b:0;s:7:"youtube";b:0;s:4:"imdb";b:0;}s:17:"opt-palette-color";s:0:"";s:14:"opt-typography";a:6:{s:5:"color";s:4:"#333";s:10:"font-style";s:3:"700";s:11:"font-family";s:4:"Abel";s:6:"google";b:1;s:9:"font-size";s:4:"33px";s:11:"line-height";s:2:"10";}}', 'yes'),
(128, 'redux_builder_ac-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1457952822;}', 'yes'),
(129, '_transient_timeout__redux_activation_redirect', '1463698023', 'no'),
(130, '_transient__redux_activation_redirect', '1', 'no'),
(131, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(133, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_4_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_postmeta`
#

DROP TABLE IF EXISTS `wp_4_postmeta`;


#
# Table structure of table `wp_4_postmeta`
#

CREATE TABLE `wp_4_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_postmeta`
#
INSERT INTO `wp_4_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_4_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_posts`
#

DROP TABLE IF EXISTS `wp_4_posts`;


#
# Table structure of table `wp_4_posts`
#

CREATE TABLE `wp_4_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_posts`
#
INSERT INTO `wp_4_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 6, '2016-03-14 10:53:38', '2016-03-14 10:53:38', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-14 10:53:38', '2016-03-14 10:53:38', '', 0, 'http://keller1.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 6, '2016-03-14 10:53:38', '2016-03-14 10:53:38', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-14 10:53:38', '2016-03-14 10:53:38', '', 0, 'http://keller1.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0),
(3, 6, '2016-03-14 10:53:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-14 10:53:42', '0000-00-00 00:00:00', '', 0, 'http://keller1.actorscompassdev.dev/?p=3', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_4_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_form`
#

DROP TABLE IF EXISTS `wp_4_rg_form`;


#
# Table structure of table `wp_4_rg_form`
#

CREATE TABLE `wp_4_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_form`
#

#
# End of data contents of table `wp_4_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_4_rg_form_meta`;


#
# Table structure of table `wp_4_rg_form_meta`
#

CREATE TABLE `wp_4_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_form_meta`
#

#
# End of data contents of table `wp_4_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_form_view`
#

DROP TABLE IF EXISTS `wp_4_rg_form_view`;


#
# Table structure of table `wp_4_rg_form_view`
#

CREATE TABLE `wp_4_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_form_view`
#

#
# End of data contents of table `wp_4_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_4_rg_incomplete_submissions`;


#
# Table structure of table `wp_4_rg_incomplete_submissions`
#

CREATE TABLE `wp_4_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_4_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_lead`
#

DROP TABLE IF EXISTS `wp_4_rg_lead`;


#
# Table structure of table `wp_4_rg_lead`
#

CREATE TABLE `wp_4_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_lead`
#

#
# End of data contents of table `wp_4_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_4_rg_lead_detail`;


#
# Table structure of table `wp_4_rg_lead_detail`
#

CREATE TABLE `wp_4_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_lead_detail`
#

#
# End of data contents of table `wp_4_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_4_rg_lead_detail_long`;


#
# Table structure of table `wp_4_rg_lead_detail_long`
#

CREATE TABLE `wp_4_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_lead_detail_long`
#

#
# End of data contents of table `wp_4_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_4_rg_lead_meta`;


#
# Table structure of table `wp_4_rg_lead_meta`
#

CREATE TABLE `wp_4_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_lead_meta`
#

#
# End of data contents of table `wp_4_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_4_rg_lead_notes`;


#
# Table structure of table `wp_4_rg_lead_notes`
#

CREATE TABLE `wp_4_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_rg_lead_notes`
#

#
# End of data contents of table `wp_4_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_term_relationships`
#

DROP TABLE IF EXISTS `wp_4_term_relationships`;


#
# Table structure of table `wp_4_term_relationships`
#

CREATE TABLE `wp_4_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_term_relationships`
#
INSERT INTO `wp_4_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_4_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_4_term_taxonomy`;


#
# Table structure of table `wp_4_term_taxonomy`
#

CREATE TABLE `wp_4_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_term_taxonomy`
#
INSERT INTO `wp_4_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_4_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_termmeta`
#

DROP TABLE IF EXISTS `wp_4_termmeta`;


#
# Table structure of table `wp_4_termmeta`
#

CREATE TABLE `wp_4_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_termmeta`
#

#
# End of data contents of table `wp_4_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_4_terms`
#

DROP TABLE IF EXISTS `wp_4_terms`;


#
# Table structure of table `wp_4_terms`
#

CREATE TABLE `wp_4_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_4_terms`
#
INSERT INTO `wp_4_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_4_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_commentmeta`
#

DROP TABLE IF EXISTS `wp_5_commentmeta`;


#
# Table structure of table `wp_5_commentmeta`
#

CREATE TABLE `wp_5_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_commentmeta`
#

#
# End of data contents of table `wp_5_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_comments`
#

DROP TABLE IF EXISTS `wp_5_comments`;


#
# Table structure of table `wp_5_comments`
#

CREATE TABLE `wp_5_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_comments`
#
INSERT INTO `wp_5_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-03-22 19:12:17', '2016-03-22 19:12:17', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_5_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_5_csp3_subscribers`;


#
# Table structure of table `wp_5_csp3_subscribers`
#

CREATE TABLE `wp_5_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_5_csp3_subscribers`
#

#
# End of data contents of table `wp_5_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_links`
#

DROP TABLE IF EXISTS `wp_5_links`;


#
# Table structure of table `wp_5_links`
#

CREATE TABLE `wp_5_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_links`
#

#
# End of data contents of table `wp_5_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_options`
#

DROP TABLE IF EXISTS `wp_5_options`;


#
# Table structure of table `wp_5_options`
#

CREATE TABLE `wp_5_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_options`
#
INSERT INTO `wp_5_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shannontest1.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://shannontest1.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'Shannon MacMillan', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shannon.1@bluestormcreative.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_5_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'blog_template', '', 'yes'),
(99, 'WPLANG', '', 'yes'),
(100, 'cron', 'a:3:{i:1463771553;a:3:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463771554;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes') ;
INSERT INTO `wp_5_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"LOz+V03QJIdTBZosy6PqDLJkOIPgLzul";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(102, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'gform_pending_installation', '1', 'yes'),
(113, 'gform_enable_background_updates', '1', 'yes'),
(114, 'gform_longtext_ready', '1', 'yes'),
(115, 'rg_form_version', '1.9.19', 'yes'),
(116, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(117, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(122, 'acf_version', '5.3.5', 'yes'),
(123, 'seed_csp3_settings_1', 'a:34:{s:6:"status";s:1:"0";s:7:"api_key";s:0:"";s:4:"logo";s:0:"";s:8:"headline";s:27:"Coming Soon Pro by SeedProd";s:11:"description";s:70:"Replace the headline above and this description with your own content.";s:9:"emaillist";s:8:"database";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:20:"gravityforms_form_id";s:2:"-1";s:17:"mailchimp_api_key";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(124, 'seed_csp3_settings_2', 'a:22:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#60AA1F";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:12:"Pontano+Sans";s:13:"headline_font";s:5:"Bevan";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:989:"<!DOCTYPE html>\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\n	<head>\n		<meta charset="utf-8">\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\n		<title>{Title}</title>\n		{MetaDescription}\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\n		{Privacy}\n		{Favicon}\n		{Head}\n		{CustomCSS}\n	</head>\n<body>\n	<div class="container">\n		<div class="row">\n			<div class="span10 offset1">\n				<div id="csp3-content">\n					{Logo}\n					{Headline}\n          {ProgressBar}\n          {Countdown}\n					{Description}\n					{Form}\n					{SocialProfiles}\n				</div><!-- end of #csp3-content -->\n			</div><!--! end of .span8 -->\n		</div> <!--! end of .row -->\n	</div> <!--! end of .container -->\n	{Credit}\n\n{Footer}\n</body>\n</html>";}', 'yes'),
(125, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(126, 'seed_csp3_version', '3.15.3', 'yes'),
(127, 'redux_builder_ac', 'a:21:{s:12:"name-options";s:0:"";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:0:"";s:13:"email-options";s:0:"";s:14:"height-options";s:0:"";s:16:"bodytype-options";s:0:"";s:12:"hair-options";s:0:"";s:12:"eyes-options";s:0:"";s:16:"headshot-options";a:1:{s:3:"url";s:40:"/wp-content/themes/AClite/img/avatar.jpg";}s:9:"reel-arve";s:0:"";s:12:"union-switch";b:0;s:12:"union-select";a:3:{s:3:"sag";s:1:"0";s:3:"aea";s:1:"0";s:4:"agva";s:1:"0";}s:12:"agent-switch";b:0;s:10:"agent-name";s:0:"";s:11:"agent-email";s:0:"";s:11:"agent-phone";s:0:"";s:15:"credits-options";a:5:{i:1;s:13:"Role - Show 1";i:2;s:13:"Role - Show 2";i:3;s:13:"Role - Show 3";i:4;s:13:"Role - Show 4";i:5;s:13:"Role - Show 5";}s:14:"skills-options";a:5:{i:1;s:7:"Skill 1";i:2;s:7:"Skill 2";i:3;s:7:"Skill 3";i:4;s:7:"Skill 4";i:5;s:7:"Skill 5";}s:14:"social-options";a:7:{s:8:"facebook";b:0;s:7:"twitter";b:0;s:9:"instagram";b:0;s:12:"actorsaccess";b:0;s:7:"youtube";b:0;s:4:"imdb";b:0;s:9:"backstage";b:0;}s:17:"opt-palette-color";s:4:"teal";s:14:"opt-typography";s:6:"fonts1";}', 'yes'),
(128, 'redux_builder_ac-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1458673954;}', 'yes'),
(132, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(133, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(134, 'tadv_version', '4000', 'yes'),
(135, '_transient_timeout__redux_activation_redirect', '1463698020', 'no'),
(136, '_transient__redux_activation_redirect', '1', 'no'),
(137, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_5_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_postmeta`
#

DROP TABLE IF EXISTS `wp_5_postmeta`;


#
# Table structure of table `wp_5_postmeta`
#

CREATE TABLE `wp_5_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_postmeta`
#
INSERT INTO `wp_5_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_5_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_posts`
#

DROP TABLE IF EXISTS `wp_5_posts`;


#
# Table structure of table `wp_5_posts`
#

CREATE TABLE `wp_5_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_posts`
#
INSERT INTO `wp_5_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 7, '2016-03-22 19:12:17', '2016-03-22 19:12:17', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-22 19:12:17', '2016-03-22 19:12:17', '', 0, 'http://shannontest1.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 7, '2016-03-22 19:12:17', '2016-03-22 19:12:17', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-22 19:12:17', '2016-03-22 19:12:17', '', 0, 'http://shannontest1.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_5_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_form`
#

DROP TABLE IF EXISTS `wp_5_rg_form`;


#
# Table structure of table `wp_5_rg_form`
#

CREATE TABLE `wp_5_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_form`
#

#
# End of data contents of table `wp_5_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_5_rg_form_meta`;


#
# Table structure of table `wp_5_rg_form_meta`
#

CREATE TABLE `wp_5_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_form_meta`
#

#
# End of data contents of table `wp_5_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_form_view`
#

DROP TABLE IF EXISTS `wp_5_rg_form_view`;


#
# Table structure of table `wp_5_rg_form_view`
#

CREATE TABLE `wp_5_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_form_view`
#

#
# End of data contents of table `wp_5_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_5_rg_incomplete_submissions`;


#
# Table structure of table `wp_5_rg_incomplete_submissions`
#

CREATE TABLE `wp_5_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_5_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_lead`
#

DROP TABLE IF EXISTS `wp_5_rg_lead`;


#
# Table structure of table `wp_5_rg_lead`
#

CREATE TABLE `wp_5_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_lead`
#

#
# End of data contents of table `wp_5_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_5_rg_lead_detail`;


#
# Table structure of table `wp_5_rg_lead_detail`
#

CREATE TABLE `wp_5_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_lead_detail`
#

#
# End of data contents of table `wp_5_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_5_rg_lead_detail_long`;


#
# Table structure of table `wp_5_rg_lead_detail_long`
#

CREATE TABLE `wp_5_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_lead_detail_long`
#

#
# End of data contents of table `wp_5_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_5_rg_lead_meta`;


#
# Table structure of table `wp_5_rg_lead_meta`
#

CREATE TABLE `wp_5_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_lead_meta`
#

#
# End of data contents of table `wp_5_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_5_rg_lead_notes`;


#
# Table structure of table `wp_5_rg_lead_notes`
#

CREATE TABLE `wp_5_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_rg_lead_notes`
#

#
# End of data contents of table `wp_5_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_term_relationships`
#

DROP TABLE IF EXISTS `wp_5_term_relationships`;


#
# Table structure of table `wp_5_term_relationships`
#

CREATE TABLE `wp_5_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_term_relationships`
#
INSERT INTO `wp_5_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_5_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_5_term_taxonomy`;


#
# Table structure of table `wp_5_term_taxonomy`
#

CREATE TABLE `wp_5_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_term_taxonomy`
#
INSERT INTO `wp_5_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_5_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_termmeta`
#

DROP TABLE IF EXISTS `wp_5_termmeta`;


#
# Table structure of table `wp_5_termmeta`
#

CREATE TABLE `wp_5_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_termmeta`
#

#
# End of data contents of table `wp_5_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_5_terms`
#

DROP TABLE IF EXISTS `wp_5_terms`;


#
# Table structure of table `wp_5_terms`
#

CREATE TABLE `wp_5_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_5_terms`
#
INSERT INTO `wp_5_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_5_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_commentmeta`
#

DROP TABLE IF EXISTS `wp_6_commentmeta`;


#
# Table structure of table `wp_6_commentmeta`
#

CREATE TABLE `wp_6_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_commentmeta`
#

#
# End of data contents of table `wp_6_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_comments`
#

DROP TABLE IF EXISTS `wp_6_comments`;


#
# Table structure of table `wp_6_comments`
#

CREATE TABLE `wp_6_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_comments`
#
INSERT INTO `wp_6_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-03-25 02:54:28', '2016-03-25 02:54:28', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_6_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_links`
#

DROP TABLE IF EXISTS `wp_6_links`;


#
# Table structure of table `wp_6_links`
#

CREATE TABLE `wp_6_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_links`
#

#
# End of data contents of table `wp_6_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_options`
#

DROP TABLE IF EXISTS `wp_6_options`;


#
# Table structure of table `wp_6_options`
#

CREATE TABLE `wp_6_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_options`
#
INSERT INTO `wp_6_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shannontest2.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://shannontest2.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'Shannon Test2', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shannon.2@bluestormcreative.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_6_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'WPLANG', '', 'yes'),
(99, 'cron', 'a:3:{i:1463723711;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463723712;a:1:{s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(100, 'redux_version_upgraded_from', '3.5.9.5', 'yes') ;
INSERT INTO `wp_6_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, '_transient_timeout__redux_activation_redirect', '1463698013', 'no'),
(102, '_transient__redux_activation_redirect', '1', 'no'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'gform_pending_installation', '1', 'yes'),
(111, 'gform_enable_background_updates', '1', 'yes'),
(112, 'gform_longtext_ready', '1', 'yes'),
(113, 'rg_form_version', '1.9.19', 'yes'),
(114, '_transient_is_multi_author', '0', 'yes'),
(115, '_transient_twentysixteen_categories', '1', 'yes'),
(116, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_6_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_postmeta`
#

DROP TABLE IF EXISTS `wp_6_postmeta`;


#
# Table structure of table `wp_6_postmeta`
#

CREATE TABLE `wp_6_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_postmeta`
#
INSERT INTO `wp_6_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_6_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_posts`
#

DROP TABLE IF EXISTS `wp_6_posts`;


#
# Table structure of table `wp_6_posts`
#

CREATE TABLE `wp_6_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_posts`
#
INSERT INTO `wp_6_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 8, '2016-03-25 02:54:28', '2016-03-25 02:54:28', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-25 02:54:28', '2016-03-25 02:54:28', '', 0, 'http://shannontest2.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 8, '2016-03-25 02:54:28', '2016-03-25 02:54:28', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-25 02:54:28', '2016-03-25 02:54:28', '', 0, 'http://shannontest2.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_6_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_form`
#

DROP TABLE IF EXISTS `wp_6_rg_form`;


#
# Table structure of table `wp_6_rg_form`
#

CREATE TABLE `wp_6_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_form`
#

#
# End of data contents of table `wp_6_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_6_rg_form_meta`;


#
# Table structure of table `wp_6_rg_form_meta`
#

CREATE TABLE `wp_6_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_form_meta`
#

#
# End of data contents of table `wp_6_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_form_view`
#

DROP TABLE IF EXISTS `wp_6_rg_form_view`;


#
# Table structure of table `wp_6_rg_form_view`
#

CREATE TABLE `wp_6_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_form_view`
#

#
# End of data contents of table `wp_6_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_6_rg_incomplete_submissions`;


#
# Table structure of table `wp_6_rg_incomplete_submissions`
#

CREATE TABLE `wp_6_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_6_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_lead`
#

DROP TABLE IF EXISTS `wp_6_rg_lead`;


#
# Table structure of table `wp_6_rg_lead`
#

CREATE TABLE `wp_6_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_lead`
#

#
# End of data contents of table `wp_6_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_6_rg_lead_detail`;


#
# Table structure of table `wp_6_rg_lead_detail`
#

CREATE TABLE `wp_6_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_lead_detail`
#

#
# End of data contents of table `wp_6_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_6_rg_lead_detail_long`;


#
# Table structure of table `wp_6_rg_lead_detail_long`
#

CREATE TABLE `wp_6_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_lead_detail_long`
#

#
# End of data contents of table `wp_6_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_6_rg_lead_meta`;


#
# Table structure of table `wp_6_rg_lead_meta`
#

CREATE TABLE `wp_6_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_lead_meta`
#

#
# End of data contents of table `wp_6_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_6_rg_lead_notes`;


#
# Table structure of table `wp_6_rg_lead_notes`
#

CREATE TABLE `wp_6_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_rg_lead_notes`
#

#
# End of data contents of table `wp_6_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_term_relationships`
#

DROP TABLE IF EXISTS `wp_6_term_relationships`;


#
# Table structure of table `wp_6_term_relationships`
#

CREATE TABLE `wp_6_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_term_relationships`
#
INSERT INTO `wp_6_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_6_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_6_term_taxonomy`;


#
# Table structure of table `wp_6_term_taxonomy`
#

CREATE TABLE `wp_6_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_term_taxonomy`
#
INSERT INTO `wp_6_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_6_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_termmeta`
#

DROP TABLE IF EXISTS `wp_6_termmeta`;


#
# Table structure of table `wp_6_termmeta`
#

CREATE TABLE `wp_6_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_termmeta`
#

#
# End of data contents of table `wp_6_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_6_terms`
#

DROP TABLE IF EXISTS `wp_6_terms`;


#
# Table structure of table `wp_6_terms`
#

CREATE TABLE `wp_6_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_6_terms`
#
INSERT INTO `wp_6_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_6_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_commentmeta`
#

DROP TABLE IF EXISTS `wp_7_commentmeta`;


#
# Table structure of table `wp_7_commentmeta`
#

CREATE TABLE `wp_7_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_commentmeta`
#

#
# End of data contents of table `wp_7_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_comments`
#

DROP TABLE IF EXISTS `wp_7_comments`;


#
# Table structure of table `wp_7_comments`
#

CREATE TABLE `wp_7_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_comments`
#
INSERT INTO `wp_7_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-04-04 05:57:04', '2016-04-04 05:57:04', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_7_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_links`
#

DROP TABLE IF EXISTS `wp_7_links`;


#
# Table structure of table `wp_7_links`
#

CREATE TABLE `wp_7_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_links`
#

#
# End of data contents of table `wp_7_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_options`
#

DROP TABLE IF EXISTS `wp_7_options`;


#
# Table structure of table `wp_7_options`
#

CREATE TABLE `wp_7_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_options`
#
INSERT INTO `wp_7_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shannontest3.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://shannontest3.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'Shannon Test3', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shannon.3@bluestormcreative.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_7_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'WPLANG', '', 'yes'),
(99, 'description', 'An Actors Compass Site', 'yes'),
(100, 'cron', 'a:3:{i:1463723864;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463723866;a:1:{s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes') ;
INSERT INTO `wp_7_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(102, '_transient_timeout__redux_activation_redirect', '1463698010', 'no'),
(103, '_transient__redux_activation_redirect', '1', 'no'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'gform_pending_installation', '1', 'yes'),
(112, 'gform_enable_background_updates', '1', 'yes'),
(113, 'gform_longtext_ready', '1', 'yes'),
(115, 'rg_form_version', '1.9.19', 'yes'),
(117, '_transient_is_multi_author', '0', 'yes'),
(118, '_transient_twentysixteen_categories', '1', 'yes'),
(119, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_7_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_postmeta`
#

DROP TABLE IF EXISTS `wp_7_postmeta`;


#
# Table structure of table `wp_7_postmeta`
#

CREATE TABLE `wp_7_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_postmeta`
#
INSERT INTO `wp_7_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_7_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_posts`
#

DROP TABLE IF EXISTS `wp_7_posts`;


#
# Table structure of table `wp_7_posts`
#

CREATE TABLE `wp_7_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_posts`
#
INSERT INTO `wp_7_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 9, '2016-04-04 05:57:04', '2016-04-04 05:57:04', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-04 05:57:04', '2016-04-04 05:57:04', '', 0, 'http://shannontest3.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 9, '2016-04-04 05:57:04', '2016-04-04 05:57:04', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-04 05:57:04', '2016-04-04 05:57:04', '', 0, 'http://shannontest3.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_7_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_form`
#

DROP TABLE IF EXISTS `wp_7_rg_form`;


#
# Table structure of table `wp_7_rg_form`
#

CREATE TABLE `wp_7_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_form`
#

#
# End of data contents of table `wp_7_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_7_rg_form_meta`;


#
# Table structure of table `wp_7_rg_form_meta`
#

CREATE TABLE `wp_7_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_form_meta`
#

#
# End of data contents of table `wp_7_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_form_view`
#

DROP TABLE IF EXISTS `wp_7_rg_form_view`;


#
# Table structure of table `wp_7_rg_form_view`
#

CREATE TABLE `wp_7_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_form_view`
#

#
# End of data contents of table `wp_7_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_7_rg_incomplete_submissions`;


#
# Table structure of table `wp_7_rg_incomplete_submissions`
#

CREATE TABLE `wp_7_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_7_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_lead`
#

DROP TABLE IF EXISTS `wp_7_rg_lead`;


#
# Table structure of table `wp_7_rg_lead`
#

CREATE TABLE `wp_7_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_lead`
#

#
# End of data contents of table `wp_7_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_7_rg_lead_detail`;


#
# Table structure of table `wp_7_rg_lead_detail`
#

CREATE TABLE `wp_7_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_lead_detail`
#

#
# End of data contents of table `wp_7_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_7_rg_lead_detail_long`;


#
# Table structure of table `wp_7_rg_lead_detail_long`
#

CREATE TABLE `wp_7_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_lead_detail_long`
#

#
# End of data contents of table `wp_7_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_7_rg_lead_meta`;


#
# Table structure of table `wp_7_rg_lead_meta`
#

CREATE TABLE `wp_7_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_lead_meta`
#

#
# End of data contents of table `wp_7_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_7_rg_lead_notes`;


#
# Table structure of table `wp_7_rg_lead_notes`
#

CREATE TABLE `wp_7_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_rg_lead_notes`
#

#
# End of data contents of table `wp_7_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_term_relationships`
#

DROP TABLE IF EXISTS `wp_7_term_relationships`;


#
# Table structure of table `wp_7_term_relationships`
#

CREATE TABLE `wp_7_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_term_relationships`
#
INSERT INTO `wp_7_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_7_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_7_term_taxonomy`;


#
# Table structure of table `wp_7_term_taxonomy`
#

CREATE TABLE `wp_7_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_term_taxonomy`
#
INSERT INTO `wp_7_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_7_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_termmeta`
#

DROP TABLE IF EXISTS `wp_7_termmeta`;


#
# Table structure of table `wp_7_termmeta`
#

CREATE TABLE `wp_7_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_termmeta`
#

#
# End of data contents of table `wp_7_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_7_terms`
#

DROP TABLE IF EXISTS `wp_7_terms`;


#
# Table structure of table `wp_7_terms`
#

CREATE TABLE `wp_7_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_7_terms`
#
INSERT INTO `wp_7_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_7_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_commentmeta`
#

DROP TABLE IF EXISTS `wp_8_commentmeta`;


#
# Table structure of table `wp_8_commentmeta`
#

CREATE TABLE `wp_8_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_commentmeta`
#

#
# End of data contents of table `wp_8_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_comments`
#

DROP TABLE IF EXISTS `wp_8_comments`;


#
# Table structure of table `wp_8_comments`
#

CREATE TABLE `wp_8_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_comments`
#
INSERT INTO `wp_8_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-04-04 09:33:11', '2016-04-04 09:33:11', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_8_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_8_csp3_subscribers`;


#
# Table structure of table `wp_8_csp3_subscribers`
#

CREATE TABLE `wp_8_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_8_csp3_subscribers`
#

#
# End of data contents of table `wp_8_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_links`
#

DROP TABLE IF EXISTS `wp_8_links`;


#
# Table structure of table `wp_8_links`
#

CREATE TABLE `wp_8_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_links`
#

#
# End of data contents of table `wp_8_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_options`
#

DROP TABLE IF EXISTS `wp_8_options`;


#
# Table structure of table `wp_8_options`
#

CREATE TABLE `wp_8_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_options`
#
INSERT INTO `wp_8_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://testing.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://testing.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'Shannon Testing 777', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shannon.7@bluestormcreative.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_8_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'password', '4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFE3Nzch', 'yes'),
(99, 'WPLANG', '', 'yes'),
(100, 'description', 'An Actors Compass Site', 'yes') ;
INSERT INTO `wp_8_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'cron', 'a:3:{i:1463736800;a:3:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463736802;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"pIANoK9WSgA+mxZvVrtpKS/KAl1lSyV7";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(103, 'r_notice_data', '{"type":"redux-message","title":"<strong>Redux Framework: New extension: Option Panel Ad Remover!<\\/strong><br\\/>","message":"Interested in removing this notice?  Or removing the advertisements in the options panel during development?  Need to remove the Redux News dashboard widget?  We now offer an extension to hide all three!  <a href=\\"https:\\/\\/reduxframework.com\\/extension\\/ad-remover\\/\\">Check it out!<\\/a>","color":"rgba(0,162,227,1)"}', 'yes'),
(104, 'redux_blast', '1459762401', 'yes'),
(105, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(106, '_transient_timeout__redux_activation_redirect', '1463698008', 'no'),
(107, '_transient__redux_activation_redirect', '1', 'no'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'gform_pending_installation', '1', 'yes'),
(116, 'gform_enable_background_updates', '1', 'yes'),
(117, 'gform_longtext_ready', '1', 'yes'),
(118, 'rg_form_version', '1.9.19', 'yes'),
(119, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(120, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(125, 'acf_version', '5.3.5', 'yes'),
(126, 'seed_csp3_settings_1', 'a:34:{s:6:"status";s:1:"0";s:7:"api_key";s:0:"";s:4:"logo";s:0:"";s:8:"headline";s:27:"Coming Soon Pro by SeedProd";s:11:"description";s:70:"Replace the headline above and this description with your own content.";s:9:"emaillist";s:8:"database";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:20:"gravityforms_form_id";s:2:"-1";s:17:"mailchimp_api_key";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(127, 'seed_csp3_settings_2', 'a:22:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#60AA1F";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:12:"Pontano+Sans";s:13:"headline_font";s:5:"Bevan";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:989:"<!DOCTYPE html>\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\n	<head>\n		<meta charset="utf-8">\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\n		<title>{Title}</title>\n		{MetaDescription}\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\n		{Privacy}\n		{Favicon}\n		{Head}\n		{CustomCSS}\n	</head>\n<body>\n	<div class="container">\n		<div class="row">\n			<div class="span10 offset1">\n				<div id="csp3-content">\n					{Logo}\n					{Headline}\n          {ProgressBar}\n          {Countdown}\n					{Description}\n					{Form}\n					{SocialProfiles}\n				</div><!-- end of #csp3-content -->\n			</div><!--! end of .span8 -->\n		</div> <!--! end of .row -->\n	</div> <!--! end of .container -->\n	{Credit}\n\n{Footer}\n</body>\n</html>";}', 'yes'),
(128, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(129, 'seed_csp3_version', '3.15.3', 'yes'),
(130, 'redux_builder_ac', 'a:16:{s:12:"name-options";s:0:"";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:0:"";s:13:"email-options";s:0:"";s:14:"height-options";s:0:"";s:16:"bodytype-options";s:0:"";s:12:"hair-options";s:0:"";s:12:"eyes-options";s:0:"";s:16:"headshot-options";a:1:{s:3:"url";s:40:"/wp-content/themes/AClite/img/avatar.jpg";}s:12:"union-select";a:3:{s:3:"sag";s:1:"0";s:3:"aea";s:1:"0";s:4:"agva";s:1:"0";}s:10:"agent-name";s:0:"";s:11:"agent-email";s:0:"";s:11:"agent-phone";s:0:"";s:14:"social-options";a:9:{s:8:"facebook";b:0;s:7:"twitter";b:0;s:9:"instagram";b:0;s:7:"youtube";b:0;s:5:"vimeo";b:0;s:10:"soundcloud";b:0;s:12:"actorsaccess";b:0;s:4:"imdb";b:0;s:9:"backstage";b:0;}s:17:"opt-palette-color";s:4:"teal";s:14:"opt-typography";s:6:"fonts1";}', 'yes'),
(131, 'redux_builder_ac-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1459762403;}', 'yes'),
(133, '_transient_is_multi_author', '0', 'yes'),
(134, '_transient_twentysixteen_categories', '1', 'yes'),
(135, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_8_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_postmeta`
#

DROP TABLE IF EXISTS `wp_8_postmeta`;


#
# Table structure of table `wp_8_postmeta`
#

CREATE TABLE `wp_8_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_postmeta`
#
INSERT INTO `wp_8_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_8_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_posts`
#

DROP TABLE IF EXISTS `wp_8_posts`;


#
# Table structure of table `wp_8_posts`
#

CREATE TABLE `wp_8_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_posts`
#
INSERT INTO `wp_8_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 10, '2016-04-04 09:33:11', '2016-04-04 09:33:11', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-04 09:33:11', '2016-04-04 09:33:11', '', 0, 'http://testing.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 10, '2016-04-04 09:33:11', '2016-04-04 09:33:11', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-04 09:33:11', '2016-04-04 09:33:11', '', 0, 'http://testing.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_8_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_form`
#

DROP TABLE IF EXISTS `wp_8_rg_form`;


#
# Table structure of table `wp_8_rg_form`
#

CREATE TABLE `wp_8_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_form`
#

#
# End of data contents of table `wp_8_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_8_rg_form_meta`;


#
# Table structure of table `wp_8_rg_form_meta`
#

CREATE TABLE `wp_8_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_form_meta`
#

#
# End of data contents of table `wp_8_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_form_view`
#

DROP TABLE IF EXISTS `wp_8_rg_form_view`;


#
# Table structure of table `wp_8_rg_form_view`
#

CREATE TABLE `wp_8_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_form_view`
#

#
# End of data contents of table `wp_8_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_8_rg_incomplete_submissions`;


#
# Table structure of table `wp_8_rg_incomplete_submissions`
#

CREATE TABLE `wp_8_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_8_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_lead`
#

DROP TABLE IF EXISTS `wp_8_rg_lead`;


#
# Table structure of table `wp_8_rg_lead`
#

CREATE TABLE `wp_8_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_lead`
#

#
# End of data contents of table `wp_8_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_8_rg_lead_detail`;


#
# Table structure of table `wp_8_rg_lead_detail`
#

CREATE TABLE `wp_8_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_lead_detail`
#

#
# End of data contents of table `wp_8_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_8_rg_lead_detail_long`;


#
# Table structure of table `wp_8_rg_lead_detail_long`
#

CREATE TABLE `wp_8_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_lead_detail_long`
#

#
# End of data contents of table `wp_8_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_8_rg_lead_meta`;


#
# Table structure of table `wp_8_rg_lead_meta`
#

CREATE TABLE `wp_8_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_lead_meta`
#

#
# End of data contents of table `wp_8_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_8_rg_lead_notes`;


#
# Table structure of table `wp_8_rg_lead_notes`
#

CREATE TABLE `wp_8_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_rg_lead_notes`
#

#
# End of data contents of table `wp_8_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_term_relationships`
#

DROP TABLE IF EXISTS `wp_8_term_relationships`;


#
# Table structure of table `wp_8_term_relationships`
#

CREATE TABLE `wp_8_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_term_relationships`
#
INSERT INTO `wp_8_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_8_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_8_term_taxonomy`;


#
# Table structure of table `wp_8_term_taxonomy`
#

CREATE TABLE `wp_8_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_term_taxonomy`
#
INSERT INTO `wp_8_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_8_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_termmeta`
#

DROP TABLE IF EXISTS `wp_8_termmeta`;


#
# Table structure of table `wp_8_termmeta`
#

CREATE TABLE `wp_8_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_termmeta`
#

#
# End of data contents of table `wp_8_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_8_terms`
#

DROP TABLE IF EXISTS `wp_8_terms`;


#
# Table structure of table `wp_8_terms`
#

CREATE TABLE `wp_8_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_8_terms`
#
INSERT INTO `wp_8_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_8_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_commentmeta`
#

DROP TABLE IF EXISTS `wp_9_commentmeta`;


#
# Table structure of table `wp_9_commentmeta`
#

CREATE TABLE `wp_9_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_commentmeta`
#

#
# End of data contents of table `wp_9_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_comments`
#

DROP TABLE IF EXISTS `wp_9_comments`;


#
# Table structure of table `wp_9_comments`
#

CREATE TABLE `wp_9_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_comments`
#
INSERT INTO `wp_9_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '', '', '', '', '2016-04-04 10:01:17', '2016-04-04 10:01:17', '', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_9_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_9_csp3_subscribers`;


#
# Table structure of table `wp_9_csp3_subscribers`
#

CREATE TABLE `wp_9_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_9_csp3_subscribers`
#

#
# End of data contents of table `wp_9_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_links`
#

DROP TABLE IF EXISTS `wp_9_links`;


#
# Table structure of table `wp_9_links`
#

CREATE TABLE `wp_9_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_links`
#

#
# End of data contents of table `wp_9_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_options`
#

DROP TABLE IF EXISTS `wp_9_options`;


#
# Table structure of table `wp_9_options`
#

CREATE TABLE `wp_9_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_options`
#
INSERT INTO `wp_9_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://newtest.actorscompassdev.dev', 'yes'),
(2, 'home', 'http://newtest.actorscompassdev.dev', 'yes'),
(3, 'blogname', 'New Test', 'yes'),
(4, 'blogdescription', 'Just another ActorsCompass Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'max@shannonmacmillan.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'wp_9_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'rewrite_rules', 'a:78:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(98, 'password', '4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFExMjMh', 'yes'),
(99, 'WPLANG', '', 'yes'),
(100, 'description', 'An Actors Compass Site', 'yes') ;
INSERT INTO `wp_9_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'cron', 'a:3:{i:1463738486;a:3:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463738489;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"2pLAqTsBqnhaBGEXej4pZWpE7eu7n+xe";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(103, 'r_notice_data', '{"type":"redux-message","title":"<strong>Redux Framework: New extension: Option Panel Ad Remover!<\\/strong><br\\/>","message":"Interested in removing this notice?  Or removing the advertisements in the options panel during development?  Need to remove the Redux News dashboard widget?  We now offer an extension to hide all three!  <a href=\\"https:\\/\\/reduxframework.com\\/extension\\/ad-remover\\/\\">Check it out!<\\/a>","color":"rgba(0,162,227,1)"}', 'yes'),
(104, 'redux_blast', '1459764087', 'yes'),
(105, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(106, '_transient_timeout__redux_activation_redirect', '1463698005', 'no'),
(107, '_transient__redux_activation_redirect', '1', 'no'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'gform_pending_installation', '1', 'yes'),
(116, 'gform_enable_background_updates', '1', 'yes'),
(117, 'gform_longtext_ready', '1', 'yes'),
(118, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(120, 'rg_form_version', '1.9.19', 'yes'),
(122, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(127, 'acf_version', '5.3.5', 'yes'),
(128, 'seed_csp3_settings_1', 'a:34:{s:6:"status";s:1:"0";s:7:"api_key";s:0:"";s:4:"logo";s:0:"";s:8:"headline";s:27:"Coming Soon Pro by SeedProd";s:11:"description";s:70:"Replace the headline above and this description with your own content.";s:9:"emaillist";s:8:"database";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:20:"gravityforms_form_id";s:2:"-1";s:17:"mailchimp_api_key";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(129, 'seed_csp3_settings_2', 'a:22:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#60AA1F";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:12:"Pontano+Sans";s:13:"headline_font";s:5:"Bevan";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:989:"<!DOCTYPE html>\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\n	<head>\n		<meta charset="utf-8">\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\n		<title>{Title}</title>\n		{MetaDescription}\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\n		{Privacy}\n		{Favicon}\n		{Head}\n		{CustomCSS}\n	</head>\n<body>\n	<div class="container">\n		<div class="row">\n			<div class="span10 offset1">\n				<div id="csp3-content">\n					{Logo}\n					{Headline}\n          {ProgressBar}\n          {Countdown}\n					{Description}\n					{Form}\n					{SocialProfiles}\n				</div><!-- end of #csp3-content -->\n			</div><!--! end of .span8 -->\n		</div> <!--! end of .row -->\n	</div> <!--! end of .container -->\n	{Credit}\n\n{Footer}\n</body>\n</html>";}', 'yes'),
(130, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(131, 'seed_csp3_version', '3.15.3', 'yes'),
(132, 'redux_builder_ac', 'a:16:{s:12:"name-options";s:0:"";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:0:"";s:13:"email-options";s:0:"";s:14:"height-options";s:0:"";s:16:"bodytype-options";s:0:"";s:12:"hair-options";s:0:"";s:12:"eyes-options";s:0:"";s:16:"headshot-options";a:1:{s:3:"url";s:40:"/wp-content/themes/AClite/img/avatar.jpg";}s:12:"union-select";a:3:{s:3:"sag";s:1:"0";s:3:"aea";s:1:"0";s:4:"agva";s:1:"0";}s:10:"agent-name";s:0:"";s:11:"agent-email";s:0:"";s:11:"agent-phone";s:0:"";s:14:"social-options";a:9:{s:8:"facebook";b:0;s:7:"twitter";b:0;s:9:"instagram";b:0;s:7:"youtube";b:0;s:5:"vimeo";b:0;s:10:"soundcloud";b:0;s:12:"actorsaccess";b:0;s:4:"imdb";b:0;s:9:"backstage";b:0;}s:17:"opt-palette-color";s:4:"teal";s:14:"opt-typography";s:6:"fonts1";}', 'yes'),
(133, 'redux_builder_ac-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1459764089;}', 'yes'),
(135, '_transient_is_multi_author', '0', 'yes'),
(136, '_transient_twentysixteen_categories', '1', 'yes'),
(137, 'widget_enhancedtextwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'db_upgraded', '1', 'yes') ;

#
# End of data contents of table `wp_9_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_postmeta`
#

DROP TABLE IF EXISTS `wp_9_postmeta`;


#
# Table structure of table `wp_9_postmeta`
#

CREATE TABLE `wp_9_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_postmeta`
#
INSERT INTO `wp_9_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_9_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_posts`
#

DROP TABLE IF EXISTS `wp_9_posts`;


#
# Table structure of table `wp_9_posts`
#

CREATE TABLE `wp_9_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_posts`
#
INSERT INTO `wp_9_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 11, '2016-04-04 10:01:17', '2016-04-04 10:01:17', 'Welcome to <a href="http://actorscompassdev.dev/">ActorsCompass Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-04 10:01:17', '2016-04-04 10:01:17', '', 0, 'http://newtest.actorscompassdev.dev/?p=1', 0, 'post', '', 1),
(2, 11, '2016-04-04 10:01:17', '2016-04-04 10:01:17', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-04 10:01:17', '2016-04-04 10:01:17', '', 0, 'http://newtest.actorscompassdev.dev/?page_id=2', 0, 'page', '', 0) ;

#
# End of data contents of table `wp_9_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_form`
#

DROP TABLE IF EXISTS `wp_9_rg_form`;


#
# Table structure of table `wp_9_rg_form`
#

CREATE TABLE `wp_9_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_form`
#

#
# End of data contents of table `wp_9_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_9_rg_form_meta`;


#
# Table structure of table `wp_9_rg_form_meta`
#

CREATE TABLE `wp_9_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_form_meta`
#

#
# End of data contents of table `wp_9_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_form_view`
#

DROP TABLE IF EXISTS `wp_9_rg_form_view`;


#
# Table structure of table `wp_9_rg_form_view`
#

CREATE TABLE `wp_9_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_form_view`
#

#
# End of data contents of table `wp_9_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_9_rg_incomplete_submissions`;


#
# Table structure of table `wp_9_rg_incomplete_submissions`
#

CREATE TABLE `wp_9_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_9_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_lead`
#

DROP TABLE IF EXISTS `wp_9_rg_lead`;


#
# Table structure of table `wp_9_rg_lead`
#

CREATE TABLE `wp_9_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_lead`
#

#
# End of data contents of table `wp_9_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_9_rg_lead_detail`;


#
# Table structure of table `wp_9_rg_lead_detail`
#

CREATE TABLE `wp_9_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_lead_detail`
#

#
# End of data contents of table `wp_9_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_9_rg_lead_detail_long`;


#
# Table structure of table `wp_9_rg_lead_detail_long`
#

CREATE TABLE `wp_9_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_lead_detail_long`
#

#
# End of data contents of table `wp_9_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_9_rg_lead_meta`;


#
# Table structure of table `wp_9_rg_lead_meta`
#

CREATE TABLE `wp_9_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_lead_meta`
#

#
# End of data contents of table `wp_9_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_9_rg_lead_notes`;


#
# Table structure of table `wp_9_rg_lead_notes`
#

CREATE TABLE `wp_9_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_rg_lead_notes`
#

#
# End of data contents of table `wp_9_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_term_relationships`
#

DROP TABLE IF EXISTS `wp_9_term_relationships`;


#
# Table structure of table `wp_9_term_relationships`
#

CREATE TABLE `wp_9_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_term_relationships`
#
INSERT INTO `wp_9_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_9_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_9_term_taxonomy`;


#
# Table structure of table `wp_9_term_taxonomy`
#

CREATE TABLE `wp_9_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_term_taxonomy`
#
INSERT INTO `wp_9_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_9_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_termmeta`
#

DROP TABLE IF EXISTS `wp_9_termmeta`;


#
# Table structure of table `wp_9_termmeta`
#

CREATE TABLE `wp_9_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_termmeta`
#

#
# End of data contents of table `wp_9_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_9_terms`
#

DROP TABLE IF EXISTS `wp_9_terms`;


#
# Table structure of table `wp_9_terms`
#

CREATE TABLE `wp_9_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_9_terms`
#
INSERT INTO `wp_9_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_9_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_blog_versions`
#

DROP TABLE IF EXISTS `wp_blog_versions`;


#
# Table structure of table `wp_blog_versions`
#

CREATE TABLE `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_id`),
  KEY `db_version` (`db_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_blog_versions`
#
INSERT INTO `wp_blog_versions` ( `blog_id`, `db_version`, `last_updated`) VALUES
(1, '36686', '2016-05-19 15:43:25'),
(2, '36686', '2016-05-19 15:46:36'),
(4, '36686', '2016-05-19 15:46:32'),
(5, '36686', '2016-05-19 15:46:30'),
(6, '36686', '2016-05-19 15:46:23'),
(7, '36686', '2016-05-19 15:46:20'),
(8, '36686', '2016-05-19 15:46:18'),
(9, '36686', '2016-05-19 15:46:16'),
(10, '36686', '2016-05-19 15:46:13') ;

#
# End of data contents of table `wp_blog_versions`
# --------------------------------------------------------



#
# Delete any existing table `wp_blogs`
#

DROP TABLE IF EXISTS `wp_blogs`;


#
# Table structure of table `wp_blogs`
#

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_blogs`
#
INSERT INTO `wp_blogs` ( `blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'actorscompassdev.dev', '/', '2016-01-07 00:10:51', '2016-04-04 08:54:45', 1, 0, 0, 0, 0, 0),
(2, 1, 'demo.actorscompassdev.dev', '/', '2016-03-04 01:27:49', '2016-03-04 01:27:50', 1, 0, 0, 0, 0, 0),
(4, 1, 'keller1.actorscompassdev.dev', '/', '2016-03-14 10:53:38', '2016-03-14 10:53:38', 1, 0, 0, 0, 0, 1),
(5, 1, 'shannontest1.actorscompassdev.dev', '/', '2016-03-22 19:12:17', '2016-03-22 19:12:17', 1, 0, 0, 0, 0, 1),
(6, 1, 'shannontest2.actorscompassdev.dev', '/', '2016-04-04 05:54:36', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0),
(7, 1, 'shannontest3.actorscompassdev.dev', '/', '2016-04-04 05:57:04', '2016-04-04 05:57:05', 1, 0, 0, 0, 0, 0),
(8, 1, 'testing.actorscompassdev.dev', '/', '2016-04-04 09:33:10', '2016-04-04 09:33:11', 1, 0, 0, 0, 0, 1),
(9, 1, 'newtest.actorscompassdev.dev', '/', '2016-04-04 10:01:17', '2016-04-04 10:01:17', 1, 0, 0, 0, 0, 1),
(10, 1, 'newtest2.actorscompassdev.dev', '/', '2016-04-04 10:05:35', '2016-04-04 10:05:36', 1, 0, 0, 0, 0, 1) ;

#
# End of data contents of table `wp_blogs`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_csp3_subscribers`
#

DROP TABLE IF EXISTS `wp_csp3_subscribers`;


#
# Table structure of table `wp_csp3_subscribers`
#

CREATE TABLE `wp_csp3_subscribers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `insights` text,
  `location` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_csp3_subscribers`
#
INSERT INTO `wp_csp3_subscribers` ( `id`, `email`, `fname`, `lname`, `clicks`, `conversions`, `referrer`, `ip`, `insights`, `location`, `created`) VALUES
(1, 'meetme@thethinkfarm.com', 'Helen', 'Kim', 0, 0, -1, '45.48.254.251', '', '', '2016-01-11 12:21:52') ;

#
# End of data contents of table `wp_csp3_subscribers`
# --------------------------------------------------------



#
# Delete any existing table `wp_itsec_lockouts`
#

DROP TABLE IF EXISTS `wp_itsec_lockouts`;


#
# Table structure of table `wp_itsec_lockouts`
#

CREATE TABLE `wp_itsec_lockouts` (
  `lockout_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lockout_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockout_user` bigint(20) unsigned DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lockout_id`),
  KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  KEY `lockout_host` (`lockout_host`),
  KEY `lockout_user` (`lockout_user`),
  KEY `lockout_username` (`lockout_username`),
  KEY `lockout_active` (`lockout_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_itsec_lockouts`
#

#
# End of data contents of table `wp_itsec_lockouts`
# --------------------------------------------------------



#
# Delete any existing table `wp_itsec_log`
#

DROP TABLE IF EXISTS `wp_itsec_log`;


#
# Table structure of table `wp_itsec_log`
#

CREATE TABLE `wp_itsec_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_function` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_host` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_user` bigint(20) unsigned DEFAULT NULL,
  `log_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=843 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_itsec_log`
#

#
# End of data contents of table `wp_itsec_log`
# --------------------------------------------------------



#
# Delete any existing table `wp_itsec_temp`
#

DROP TABLE IF EXISTS `wp_itsec_temp`;


#
# Table structure of table `wp_itsec_temp`
#

CREATE TABLE `wp_itsec_temp` (
  `temp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `temp_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_user` bigint(20) unsigned DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`temp_id`),
  KEY `temp_date_gmt` (`temp_date_gmt`),
  KEY `temp_host` (`temp_host`),
  KEY `temp_user` (`temp_user`),
  KEY `temp_username` (`temp_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_itsec_temp`
#

#
# End of data contents of table `wp_itsec_temp`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_nbt_categories_relationships_table`
#

DROP TABLE IF EXISTS `wp_nbt_categories_relationships_table`;


#
# Table structure of table `wp_nbt_categories_relationships_table`
#

CREATE TABLE `wp_nbt_categories_relationships_table` (
  `cat_id` bigint(20) unsigned NOT NULL,
  `template_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`,`template_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_nbt_categories_relationships_table`
#

#
# End of data contents of table `wp_nbt_categories_relationships_table`
# --------------------------------------------------------



#
# Delete any existing table `wp_nbt_templates`
#

DROP TABLE IF EXISTS `wp_nbt_templates`;


#
# Table structure of table `wp_nbt_templates`
#

CREATE TABLE `wp_nbt_templates` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_default` int(1) DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_nbt_templates`
#

#
# End of data contents of table `wp_nbt_templates`
# --------------------------------------------------------



#
# Delete any existing table `wp_nbt_templates_categories`
#

DROP TABLE IF EXISTS `wp_nbt_templates_categories`;


#
# Table structure of table `wp_nbt_templates_categories`
#

CREATE TABLE `wp_nbt_templates_categories` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_default` int(1) NOT NULL DEFAULT '0',
  `templates_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_nbt_templates_categories`
#
INSERT INTO `wp_nbt_templates_categories` ( `ID`, `name`, `description`, `is_default`, `templates_count`) VALUES
(1, 'Default category', '', 1, 0) ;

#
# End of data contents of table `wp_nbt_templates_categories`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1711 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://actorscompassdev.dev', 'yes'),
(2, 'home', 'http://actorscompassdev.dev', 'yes'),
(3, 'blogname', 'ActorsCompass', 'yes'),
(4, 'blogdescription', 'Put yourself on the map.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shannon@bluestormcreative.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:41:"wordpress-importer/wordpress-importer.php";i:2;s:32:"wp-sync-db-master/wp-sync-db.php";i:3;s:56:"wp-sync-db-media-files-master/wp-sync-db-media-files.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', 'a:5:{i:0;s:118:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/themes/ActorsCompass/style.css";i:1;s:116:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/themes/AClite/front-page.php";i:2;s:112:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/themes/AClite/header.php";i:3;s:111:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/themes/AClite/style.css";i:4;s:0:"";}', 'no'),
(39, 'template', 'ActorsCompass', 'yes'),
(40, 'stylesheet', 'ActorsCompass', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:1;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '14', 'yes'),
(83, 'page_on_front', '6', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:20:"enhancedtextwidget-2";i:1;s:12:"categories-2";i:2;s:8:"search-2";i:3;s:10:"nav_menu-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:9:"Follow Us";s:8:"nav_menu";i:12;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:10:{i:1463701800;a:1:{s:18:"psts_process_stats";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463702700;a:2:{s:14:"updraft_backup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:23:"updraft_backup_database";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463703008;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463713836;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463714702;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1463715915;a:1:{s:22:"wpmudev_scheduled_jobs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1463775142;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463780045;a:1:{s:32:"check_plugin_updates-updraftplus";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463783587;a:1:{s:24:"akismet_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', '[_,N?rY$;ek)Y4t_%N|N~J7[5ZatwO6|xCB0]V+:Vp=Er~nE%E(70.OzXU_@{`/P', 'yes'),
(107, 'nonce_salt', '/~^c2{HM}c*n86rl&),bH/$nV^.U(9W.t5KH5A&l$Wm(Z5{4}|sNqNnfn9o[d.1X', 'yes'),
(116, 'auth_key', '8j8B9PAU>m4m,CEH@$LD#&N}H{eRyr|^n5`LBm<PN$/kd1{#4=v@&(13`x/Vl.R/', 'yes'),
(117, 'auth_salt', 'H@.bH!dFWI~IlgA7gA.,`h}IU^b ]&?W]x_Q1Pot)|L2Sk2:Y9g{4vyE6]:_yQ.w', 'yes'),
(118, 'logged_in_key', '{CQ{1xw6s%Z`r0d>t$H5k@%3<{R3u1)a$aW.yRALztR_ZF8gQNJ[[.ap0P&>&M=w', 'yes'),
(119, 'logged_in_salt', '4;L@a:[FjcKXC//BooRO]l&3H`?t0ui^a:SPU&1MTtw+LE{.gyHQ{mB^4Y3A>/1A', 'yes'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(145, 'seed_csp3_google_font_families', 'a:523:{s:4:"Abel";s:7:"\'Abel\';";s:13:"Abril+Fatface";s:16:"\'Abril Fatface\';";s:8:"Aclonica";s:11:"\'Aclonica\';";s:4:"Acme";s:7:"\'Acme\';";s:5:"Actor";s:8:"\'Actor\';";s:7:"Adamina";s:10:"\'Adamina\';";s:10:"Advent+Pro";s:13:"\'Advent Pro\';";s:15:"Aguafina+Script";s:18:"\'Aguafina Script\';";s:6:"Aladin";s:9:"\'Aladin\';";s:7:"Aldrich";s:10:"\'Aldrich\';";s:8:"Alegreya";s:11:"\'Alegreya\';";s:11:"Alegreya+SC";s:14:"\'Alegreya SC\';";s:10:"Alex+Brush";s:13:"\'Alex Brush\';";s:13:"Alfa+Slab+One";s:16:"\'Alfa Slab One\';";s:5:"Alice";s:8:"\'Alice\';";s:5:"Alike";s:8:"\'Alike\';";s:13:"Alike+Angular";s:16:"\'Alike Angular\';";s:5:"Allan";s:8:"\'Allan\';";s:7:"Allerta";s:10:"\'Allerta\';";s:15:"Allerta+Stencil";s:18:"\'Allerta Stencil\';";s:6:"Allura";s:9:"\'Allura\';";s:8:"Almendra";s:11:"\'Almendra\';";s:11:"Almendra+SC";s:14:"\'Almendra SC\';";s:8:"Amaranth";s:11:"\'Amaranth\';";s:9:"Amatic+SC";s:12:"\'Amatic SC\';";s:9:"Amethysta";s:12:"\'Amethysta\';";s:6:"Andada";s:9:"\'Andada\';";s:6:"Andika";s:9:"\'Andika\';";s:6:"Angkor";s:9:"\'Angkor\';";s:24:"Annie+Use+Your+Telescope";s:27:"\'Annie Use Your Telescope\';";s:13:"Anonymous+Pro";s:16:"\'Anonymous Pro\';";s:5:"Antic";s:8:"\'Antic\';";s:12:"Antic+Didone";s:15:"\'Antic Didone\';";s:10:"Antic+Slab";s:13:"\'Antic Slab\';";s:5:"Anton";s:8:"\'Anton\';";s:6:"Arapey";s:9:"\'Arapey\';";s:7:"Arbutus";s:10:"\'Arbutus\';";s:19:"Architects+Daughter";s:22:"\'Architects Daughter\';";s:5:"Arimo";s:8:"\'Arimo\';";s:8:"Arizonia";s:11:"\'Arizonia\';";s:6:"Armata";s:9:"\'Armata\';";s:8:"Artifika";s:11:"\'Artifika\';";s:4:"Arvo";s:7:"\'Arvo\';";s:4:"Asap";s:7:"\'Asap\';";s:5:"Asset";s:8:"\'Asset\';";s:7:"Astloch";s:10:"\'Astloch\';";s:4:"Asul";s:7:"\'Asul\';";s:10:"Atomic+Age";s:13:"\'Atomic Age\';";s:6:"Aubrey";s:9:"\'Aubrey\';";s:9:"Audiowide";s:12:"\'Audiowide\';";s:7:"Average";s:10:"\'Average\';";s:19:"Averia+Gruesa+Libre";s:22:"\'Averia Gruesa Libre\';";s:12:"Averia+Libre";s:15:"\'Averia Libre\';";s:17:"Averia+Sans+Libre";s:20:"\'Averia Sans Libre\';";s:18:"Averia+Serif+Libre";s:21:"\'Averia Serif Libre\';";s:10:"Bad+Script";s:13:"\'Bad Script\';";s:9:"Balthazar";s:12:"\'Balthazar\';";s:7:"Bangers";s:10:"\'Bangers\';";s:5:"Basic";s:8:"\'Basic\';";s:10:"Battambang";s:13:"\'Battambang\';";s:7:"Baumans";s:10:"\'Baumans\';";s:5:"Bayon";s:8:"\'Bayon\';";s:8:"Belgrano";s:11:"\'Belgrano\';";s:7:"Belleza";s:10:"\'Belleza\';";s:7:"Bentham";s:10:"\'Bentham\';";s:15:"Berkshire+Swash";s:18:"\'Berkshire Swash\';";s:5:"Bevan";s:8:"\'Bevan\';";s:11:"Bigshot+One";s:14:"\'Bigshot One\';";s:5:"Bilbo";s:8:"\'Bilbo\';";s:16:"Bilbo+Swash+Caps";s:19:"\'Bilbo Swash Caps\';";s:6:"Bitter";s:9:"\'Bitter\';";s:13:"Black+Ops+One";s:16:"\'Black Ops One\';";s:5:"Bokor";s:8:"\'Bokor\';";s:6:"Bonbon";s:9:"\'Bonbon\';";s:8:"Boogaloo";s:11:"\'Boogaloo\';";s:10:"Bowlby+One";s:13:"\'Bowlby One\';";s:13:"Bowlby+One+SC";s:16:"\'Bowlby One SC\';";s:7:"Brawler";s:10:"\'Brawler\';";s:10:"Bree+Serif";s:13:"\'Bree Serif\';";s:14:"Bubblegum+Sans";s:17:"\'Bubblegum Sans\';";s:4:"Buda";s:7:"\'Buda\';";s:7:"Buenard";s:10:"\'Buenard\';";s:10:"Butcherman";s:13:"\'Butcherman\';";s:14:"Butterfly+Kids";s:17:"\'Butterfly Kids\';";s:5:"Cabin";s:8:"\'Cabin\';";s:15:"Cabin+Condensed";s:18:"\'Cabin Condensed\';";s:12:"Cabin+Sketch";s:15:"\'Cabin Sketch\';";s:15:"Caesar+Dressing";s:18:"\'Caesar Dressing\';";s:10:"Cagliostro";s:13:"\'Cagliostro\';";s:14:"Calligraffitti";s:17:"\'Calligraffitti\';";s:5:"Cambo";s:8:"\'Cambo\';";s:6:"Candal";s:9:"\'Candal\';";s:9:"Cantarell";s:12:"\'Cantarell\';";s:11:"Cantata+One";s:14:"\'Cantata One\';";s:5:"Cardo";s:8:"\'Cardo\';";s:5:"Carme";s:8:"\'Carme\';";s:10:"Carter+One";s:13:"\'Carter One\';";s:6:"Caudex";s:9:"\'Caudex\';";s:18:"Cedarville+Cursive";s:21:"\'Cedarville Cursive\';";s:11:"Ceviche+One";s:14:"\'Ceviche One\';";s:10:"Changa+One";s:13:"\'Changa One\';";s:6:"Chango";s:9:"\'Chango\';";s:18:"Chau+Philomene+One";s:21:"\'Chau Philomene One\';";s:14:"Chelsea+Market";s:17:"\'Chelsea Market\';";s:6:"Chenla";s:9:"\'Chenla\';";s:17:"Cherry+Cream+Soda";s:20:"\'Cherry Cream Soda\';";s:5:"Chewy";s:8:"\'Chewy\';";s:6:"Chicle";s:9:"\'Chicle\';";s:5:"Chivo";s:8:"\'Chivo\';";s:4:"Coda";s:7:"\'Coda\';";s:12:"Coda+Caption";s:15:"\'Coda Caption\';";s:8:"Codystar";s:11:"\'Codystar\';";s:9:"Comfortaa";s:12:"\'Comfortaa\';";s:11:"Coming+Soon";s:14:"\'Coming Soon\';";s:11:"Concert+One";s:14:"\'Concert One\';";s:9:"Condiment";s:12:"\'Condiment\';";s:7:"Content";s:10:"\'Content\';";s:12:"Contrail+One";s:15:"\'Contrail One\';";s:11:"Convergence";s:14:"\'Convergence\';";s:6:"Cookie";s:9:"\'Cookie\';";s:5:"Copse";s:8:"\'Copse\';";s:6:"Corben";s:9:"\'Corben\';";s:7:"Cousine";s:10:"\'Cousine\';";s:8:"Coustard";s:11:"\'Coustard\';";s:21:"Covered+By+Your+Grace";s:24:"\'Covered By Your Grace\';";s:12:"Crafty+Girls";s:15:"\'Crafty Girls\';";s:9:"Creepster";s:12:"\'Creepster\';";s:11:"Crete+Round";s:14:"\'Crete Round\';";s:12:"Crimson+Text";s:15:"\'Crimson Text\';";s:7:"Crushed";s:10:"\'Crushed\';";s:6:"Cuprum";s:9:"\'Cuprum\';";s:6:"Cutive";s:9:"\'Cutive\';";s:6:"Damion";s:9:"\'Damion\';";s:14:"Dancing+Script";s:17:"\'Dancing Script\';";s:7:"Dangrek";s:10:"\'Dangrek\';";s:20:"Dawning+of+a+New+Day";s:23:"\'Dawning of a New Day\';";s:8:"Days+One";s:11:"\'Days One\';";s:6:"Delius";s:9:"\'Delius\';";s:17:"Delius+Swash+Caps";s:20:"\'Delius Swash Caps\';";s:14:"Delius+Unicase";s:17:"\'Delius Unicase\';";s:13:"Della+Respira";s:16:"\'Della Respira\';";s:10:"Devonshire";s:13:"\'Devonshire\';";s:13:"Didact+Gothic";s:16:"\'Didact Gothic\';";s:9:"Diplomata";s:12:"\'Diplomata\';";s:12:"Diplomata+SC";s:15:"\'Diplomata SC\';";s:10:"Doppio+One";s:13:"\'Doppio One\';";s:5:"Dorsa";s:8:"\'Dorsa\';";s:5:"Dosis";s:8:"\'Dosis\';";s:11:"Dr+Sugiyama";s:14:"\'Dr Sugiyama\';";s:10:"Droid+Sans";s:13:"\'Droid Sans\';";s:15:"Droid+Sans+Mono";s:18:"\'Droid Sans Mono\';";s:11:"Droid+Serif";s:14:"\'Droid Serif\';";s:9:"Duru+Sans";s:12:"\'Duru Sans\';";s:9:"Dynalight";s:12:"\'Dynalight\';";s:11:"EB+Garamond";s:14:"\'EB Garamond\';";s:5:"Eater";s:8:"\'Eater\';";s:9:"Economica";s:12:"\'Economica\';";s:11:"Electrolize";s:14:"\'Electrolize\';";s:11:"Emblema+One";s:14:"\'Emblema One\';";s:12:"Emilys+Candy";s:15:"\'Emilys Candy\';";s:10:"Engagement";s:13:"\'Engagement\';";s:9:"Enriqueta";s:12:"\'Enriqueta\';";s:9:"Erica+One";s:12:"\'Erica One\';";s:7:"Esteban";s:10:"\'Esteban\';";s:15:"Euphoria+Script";s:18:"\'Euphoria Script\';";s:5:"Ewert";s:8:"\'Ewert\';";s:3:"Exo";s:6:"\'Exo\';";s:13:"Expletus+Sans";s:16:"\'Expletus Sans\';";s:12:"Fanwood+Text";s:15:"\'Fanwood Text\';";s:9:"Fascinate";s:12:"\'Fascinate\';";s:16:"Fascinate+Inline";s:19:"\'Fascinate Inline\';";s:8:"Federant";s:11:"\'Federant\';";s:6:"Federo";s:9:"\'Federo\';";s:6:"Felipa";s:9:"\'Felipa\';";s:9:"Fjord+One";s:12:"\'Fjord One\';";s:8:"Flamenco";s:11:"\'Flamenco\';";s:7:"Flavors";s:10:"\'Flavors\';";s:10:"Fondamento";s:13:"\'Fondamento\';";s:16:"Fontdiner+Swanky";s:19:"\'Fontdiner Swanky\';";s:5:"Forum";s:8:"\'Forum\';";s:12:"Francois+One";s:15:"\'Francois One\';";s:20:"Fredericka+the+Great";s:23:"\'Fredericka the Great\';";s:11:"Fredoka+One";s:14:"\'Fredoka One\';";s:8:"Freehand";s:11:"\'Freehand\';";s:6:"Fresca";s:9:"\'Fresca\';";s:7:"Frijole";s:10:"\'Frijole\';";s:9:"Fugaz+One";s:12:"\'Fugaz One\';";s:9:"GFS+Didot";s:12:"\'GFS Didot\';";s:15:"GFS+Neohellenic";s:18:"\'GFS Neohellenic\';";s:8:"Galdeano";s:11:"\'Galdeano\';";s:13:"Gentium+Basic";s:16:"\'Gentium Basic\';";s:18:"Gentium+Book+Basic";s:21:"\'Gentium Book Basic\';";s:3:"Geo";s:6:"\'Geo\';";s:7:"Geostar";s:10:"\'Geostar\';";s:12:"Geostar+Fill";s:15:"\'Geostar Fill\';";s:12:"Germania+One";s:15:"\'Germania One\';";s:14:"Give+You+Glory";s:17:"\'Give You Glory\';";s:13:"Glass+Antiqua";s:16:"\'Glass Antiqua\';";s:6:"Glegoo";s:9:"\'Glegoo\';";s:17:"Gloria+Hallelujah";s:20:"\'Gloria Hallelujah\';";s:10:"Goblin+One";s:13:"\'Goblin One\';";s:10:"Gochi+Hand";s:13:"\'Gochi Hand\';";s:8:"Gorditas";s:11:"\'Gorditas\';";s:21:"Goudy+Bookletter+1911";s:24:"\'Goudy Bookletter 1911\';";s:8:"Graduate";s:11:"\'Graduate\';";s:12:"Gravitas+One";s:15:"\'Gravitas One\';";s:11:"Great+Vibes";s:14:"\'Great Vibes\';";s:6:"Gruppo";s:9:"\'Gruppo\';";s:5:"Gudea";s:8:"\'Gudea\';";s:6:"Habibi";s:9:"\'Habibi\';";s:15:"Hammersmith+One";s:18:"\'Hammersmith One\';";s:7:"Handlee";s:10:"\'Handlee\';";s:7:"Hanuman";s:10:"\'Hanuman\';";s:12:"Happy+Monkey";s:15:"\'Happy Monkey\';";s:11:"Henny+Penny";s:14:"\'Henny Penny\';";s:20:"Herr+Von+Muellerhoff";s:23:"\'Herr Von Muellerhoff\';";s:15:"Holtwood+One+SC";s:18:"\'Holtwood One SC\';";s:14:"Homemade+Apple";s:17:"\'Homemade Apple\';";s:8:"Homenaje";s:11:"\'Homenaje\';";s:15:"IM+Fell+DW+Pica";s:18:"\'IM Fell DW Pica\';";s:18:"IM+Fell+DW+Pica+SC";s:21:"\'IM Fell DW Pica SC\';";s:19:"IM+Fell+Double+Pica";s:22:"\'IM Fell Double Pica\';";s:22:"IM+Fell+Double+Pica+SC";s:25:"\'IM Fell Double Pica SC\';";s:15:"IM+Fell+English";s:18:"\'IM Fell English\';";s:18:"IM+Fell+English+SC";s:21:"\'IM Fell English SC\';";s:20:"IM+Fell+French+Canon";s:23:"\'IM Fell French Canon\';";s:23:"IM+Fell+French+Canon+SC";s:26:"\'IM Fell French Canon SC\';";s:20:"IM+Fell+Great+Primer";s:23:"\'IM Fell Great Primer\';";s:23:"IM+Fell+Great+Primer+SC";s:26:"\'IM Fell Great Primer SC\';";s:7:"Iceberg";s:10:"\'Iceberg\';";s:7:"Iceland";s:10:"\'Iceland\';";s:7:"Imprima";s:10:"\'Imprima\';";s:11:"Inconsolata";s:14:"\'Inconsolata\';";s:5:"Inder";s:8:"\'Inder\';";s:12:"Indie+Flower";s:15:"\'Indie Flower\';";s:5:"Inika";s:8:"\'Inika\';";s:12:"Irish+Grover";s:15:"\'Irish Grover\';";s:9:"Istok+Web";s:12:"\'Istok Web\';";s:8:"Italiana";s:11:"\'Italiana\';";s:9:"Italianno";s:12:"\'Italianno\';";s:14:"Jim+Nightshade";s:17:"\'Jim Nightshade\';";s:10:"Jockey+One";s:13:"\'Jockey One\';";s:12:"Jolly+Lodger";s:15:"\'Jolly Lodger\';";s:12:"Josefin+Sans";s:15:"\'Josefin Sans\';";s:12:"Josefin+Slab";s:15:"\'Josefin Slab\';";s:6:"Judson";s:9:"\'Judson\';";s:5:"Julee";s:8:"\'Julee\';";s:5:"Junge";s:8:"\'Junge\';";s:4:"Jura";s:7:"\'Jura\';";s:17:"Just+Another+Hand";s:20:"\'Just Another Hand\';";s:23:"Just+Me+Again+Down+Here";s:26:"\'Just Me Again Down Here\';";s:7:"Kameron";s:10:"\'Kameron\';";s:5:"Karla";s:8:"\'Karla\';";s:14:"Kaushan+Script";s:17:"\'Kaushan Script\';";s:10:"Kelly+Slab";s:13:"\'Kelly Slab\';";s:5:"Kenia";s:8:"\'Kenia\';";s:5:"Khmer";s:8:"\'Khmer\';";s:7:"Knewave";s:10:"\'Knewave\';";s:9:"Kotta+One";s:12:"\'Kotta One\';";s:6:"Koulen";s:9:"\'Koulen\';";s:6:"Kranky";s:9:"\'Kranky\';";s:5:"Kreon";s:8:"\'Kreon\';";s:6:"Kristi";s:9:"\'Kristi\';";s:9:"Krona+One";s:12:"\'Krona One\';";s:15:"La+Belle+Aurore";s:18:"\'La Belle Aurore\';";s:8:"Lancelot";s:11:"\'Lancelot\';";s:4:"Lato";s:7:"\'Lato\';";s:13:"League+Script";s:16:"\'League Script\';";s:12:"Leckerli+One";s:15:"\'Leckerli One\';";s:6:"Ledger";s:9:"\'Ledger\';";s:6:"Lekton";s:9:"\'Lekton\';";s:5:"Lemon";s:8:"\'Lemon\';";s:10:"Lilita+One";s:13:"\'Lilita One\';";s:9:"Limelight";s:12:"\'Limelight\';";s:11:"Linden+Hill";s:14:"\'Linden Hill\';";s:7:"Lobster";s:10:"\'Lobster\';";s:11:"Lobster+Two";s:14:"\'Lobster Two\';";s:16:"Londrina+Outline";s:19:"\'Londrina Outline\';";s:15:"Londrina+Shadow";s:18:"\'Londrina Shadow\';";s:15:"Londrina+Sketch";s:18:"\'Londrina Sketch\';";s:14:"Londrina+Solid";s:17:"\'Londrina Solid\';";s:4:"Lora";s:7:"\'Lora\';";s:21:"Love+Ya+Like+A+Sister";s:24:"\'Love Ya Like A Sister\';";s:17:"Loved+by+the+King";s:20:"\'Loved by the King\';";s:14:"Lovers+Quarrel";s:17:"\'Lovers Quarrel\';";s:12:"Luckiest+Guy";s:15:"\'Luckiest Guy\';";s:8:"Lusitana";s:11:"\'Lusitana\';";s:7:"Lustria";s:10:"\'Lustria\';";s:7:"Macondo";s:10:"\'Macondo\';";s:18:"Macondo+Swash+Caps";s:21:"\'Macondo Swash Caps\';";s:5:"Magra";s:8:"\'Magra\';";s:13:"Maiden+Orange";s:16:"\'Maiden Orange\';";s:4:"Mako";s:7:"\'Mako\';";s:12:"Marck+Script";s:15:"\'Marck Script\';";s:9:"Marko+One";s:12:"\'Marko One\';";s:8:"Marmelad";s:11:"\'Marmelad\';";s:6:"Marvel";s:9:"\'Marvel\';";s:4:"Mate";s:7:"\'Mate\';";s:7:"Mate+SC";s:10:"\'Mate SC\';";s:9:"Maven+Pro";s:12:"\'Maven Pro\';";s:6:"Meddon";s:9:"\'Meddon\';";s:13:"MedievalSharp";s:16:"\'MedievalSharp\';";s:10:"Medula+One";s:13:"\'Medula One\';";s:6:"Megrim";s:9:"\'Megrim\';";s:12:"Merienda+One";s:15:"\'Merienda One\';";s:12:"Merriweather";s:15:"\'Merriweather\';";s:5:"Metal";s:8:"\'Metal\';";s:12:"Metamorphous";s:15:"\'Metamorphous\';";s:11:"Metrophobic";s:14:"\'Metrophobic\';";s:8:"Michroma";s:11:"\'Michroma\';";s:9:"Miltonian";s:12:"\'Miltonian\';";s:16:"Miltonian+Tattoo";s:19:"\'Miltonian Tattoo\';";s:7:"Miniver";s:10:"\'Miniver\';";s:14:"Miss+Fajardose";s:17:"\'Miss Fajardose\';";s:14:"Modern+Antiqua";s:17:"\'Modern Antiqua\';";s:7:"Molengo";s:10:"\'Molengo\';";s:8:"Monofett";s:11:"\'Monofett\';";s:7:"Monoton";s:10:"\'Monoton\';";s:20:"Monsieur+La+Doulaise";s:23:"\'Monsieur La Doulaise\';";s:7:"Montaga";s:10:"\'Montaga\';";s:6:"Montez";s:9:"\'Montez\';";s:10:"Montserrat";s:13:"\'Montserrat\';";s:4:"Moul";s:7:"\'Moul\';";s:8:"Moulpali";s:11:"\'Moulpali\';";s:22:"Mountains+of+Christmas";s:25:"\'Mountains of Christmas\';";s:10:"Mr+Bedfort";s:13:"\'Mr Bedfort\';";s:8:"Mr+Dafoe";s:11:"\'Mr Dafoe\';";s:14:"Mr+De+Haviland";s:17:"\'Mr De Haviland\';";s:19:"Mrs+Saint+Delafield";s:22:"\'Mrs Saint Delafield\';";s:13:"Mrs+Sheppards";s:16:"\'Mrs Sheppards\';";s:4:"Muli";s:7:"\'Muli\';";s:13:"Mystery+Quest";s:16:"\'Mystery Quest\';";s:6:"Neucha";s:9:"\'Neucha\';";s:6:"Neuton";s:9:"\'Neuton\';";s:10:"News+Cycle";s:13:"\'News Cycle\';";s:7:"Niconne";s:10:"\'Niconne\';";s:9:"Nixie+One";s:12:"\'Nixie One\';";s:6:"Nobile";s:9:"\'Nobile\';";s:6:"Nokora";s:9:"\'Nokora\';";s:7:"Norican";s:10:"\'Norican\';";s:7:"Nosifer";s:10:"\'Nosifer\';";s:20:"Nothing+You+Could+Do";s:23:"\'Nothing You Could Do\';";s:12:"Noticia+Text";s:15:"\'Noticia Text\';";s:8:"Nova+Cut";s:11:"\'Nova Cut\';";s:9:"Nova+Flat";s:12:"\'Nova Flat\';";s:9:"Nova+Mono";s:12:"\'Nova Mono\';";s:9:"Nova+Oval";s:12:"\'Nova Oval\';";s:10:"Nova+Round";s:13:"\'Nova Round\';";s:11:"Nova+Script";s:14:"\'Nova Script\';";s:9:"Nova+Slim";s:12:"\'Nova Slim\';";s:11:"Nova+Square";s:14:"\'Nova Square\';";s:6:"Numans";s:9:"\'Numans\';";s:6:"Nunito";s:9:"\'Nunito\';";s:14:"Odor+Mean+Chey";s:17:"\'Odor Mean Chey\';";s:15:"Old+Standard+TT";s:18:"\'Old Standard TT\';";s:9:"Oldenburg";s:12:"\'Oldenburg\';";s:11:"Oleo+Script";s:14:"\'Oleo Script\';";s:9:"Open+Sans";s:12:"\'Open Sans\';";s:19:"Open+Sans+Condensed";s:22:"\'Open Sans Condensed\';";s:8:"Orbitron";s:11:"\'Orbitron\';";s:15:"Original+Surfer";s:18:"\'Original Surfer\';";s:6:"Oswald";s:9:"\'Oswald\';";s:16:"Over+the+Rainbow";s:19:"\'Over the Rainbow\';";s:8:"Overlock";s:11:"\'Overlock\';";s:11:"Overlock+SC";s:14:"\'Overlock SC\';";s:3:"Ovo";s:6:"\'Ovo\';";s:6:"Oxygen";s:9:"\'Oxygen\';";s:7:"PT+Mono";s:10:"\'PT Mono\';";s:7:"PT+Sans";s:10:"\'PT Sans\';";s:15:"PT+Sans+Caption";s:18:"\'PT Sans Caption\';";s:14:"PT+Sans+Narrow";s:17:"\'PT Sans Narrow\';";s:8:"PT+Serif";s:11:"\'PT Serif\';";s:16:"PT+Serif+Caption";s:19:"\'PT Serif Caption\';";s:8:"Pacifico";s:11:"\'Pacifico\';";s:10:"Parisienne";s:13:"\'Parisienne\';";s:11:"Passero+One";s:14:"\'Passero One\';";s:11:"Passion+One";s:14:"\'Passion One\';";s:12:"Patrick+Hand";s:15:"\'Patrick Hand\';";s:9:"Patua+One";s:12:"\'Patua One\';";s:11:"Paytone+One";s:14:"\'Paytone One\';";s:16:"Permanent+Marker";s:19:"\'Permanent Marker\';";s:7:"Petrona";s:10:"\'Petrona\';";s:11:"Philosopher";s:14:"\'Philosopher\';";s:6:"Piedra";s:9:"\'Piedra\';";s:13:"Pinyon+Script";s:16:"\'Pinyon Script\';";s:7:"Plaster";s:10:"\'Plaster\';";s:4:"Play";s:7:"\'Play\';";s:8:"Playball";s:11:"\'Playball\';";s:16:"Playfair+Display";s:19:"\'Playfair Display\';";s:7:"Podkova";s:10:"\'Podkova\';";s:10:"Poiret+One";s:13:"\'Poiret One\';";s:10:"Poller+One";s:13:"\'Poller One\';";s:4:"Poly";s:7:"\'Poly\';";s:8:"Pompiere";s:11:"\'Pompiere\';";s:12:"Pontano+Sans";s:15:"\'Pontano Sans\';";s:16:"Port+Lligat+Sans";s:19:"\'Port Lligat Sans\';";s:16:"Port+Lligat+Slab";s:19:"\'Port Lligat Slab\';";s:5:"Prata";s:8:"\'Prata\';";s:11:"Preahvihear";s:14:"\'Preahvihear\';";s:14:"Press+Start+2P";s:17:"\'Press Start 2P\';";s:14:"Princess+Sofia";s:17:"\'Princess Sofia\';";s:8:"Prociono";s:11:"\'Prociono\';";s:10:"Prosto+One";s:13:"\'Prosto One\';";s:7:"Puritan";s:10:"\'Puritan\';";s:8:"Quantico";s:11:"\'Quantico\';";s:12:"Quattrocento";s:15:"\'Quattrocento\';";s:17:"Quattrocento+Sans";s:20:"\'Quattrocento Sans\';";s:9:"Questrial";s:12:"\'Questrial\';";s:9:"Quicksand";s:12:"\'Quicksand\';";s:7:"Qwigley";s:10:"\'Qwigley\';";s:6:"Radley";s:9:"\'Radley\';";s:7:"Raleway";s:10:"\'Raleway\';";s:12:"Rammetto+One";s:15:"\'Rammetto One\';";s:6:"Rancho";s:9:"\'Rancho\';";s:9:"Rationale";s:12:"\'Rationale\';";s:9:"Redressed";s:12:"\'Redressed\';";s:13:"Reenie+Beanie";s:16:"\'Reenie Beanie\';";s:7:"Revalia";s:10:"\'Revalia\';";s:6:"Ribeye";s:9:"\'Ribeye\';";s:13:"Ribeye+Marrow";s:16:"\'Ribeye Marrow\';";s:9:"Righteous";s:12:"\'Righteous\';";s:9:"Rochester";s:12:"\'Rochester\';";s:9:"Rock+Salt";s:12:"\'Rock Salt\';";s:7:"Rokkitt";s:10:"\'Rokkitt\';";s:9:"Ropa+Sans";s:12:"\'Ropa Sans\';";s:7:"Rosario";s:10:"\'Rosario\';";s:8:"Rosarivo";s:11:"\'Rosarivo\';";s:12:"Rouge+Script";s:15:"\'Rouge Script\';";s:4:"Ruda";s:7:"\'Ruda\';";s:11:"Ruge+Boogie";s:14:"\'Ruge Boogie\';";s:6:"Ruluko";s:9:"\'Ruluko\';";s:14:"Ruslan+Display";s:17:"\'Ruslan Display\';";s:9:"Russo+One";s:12:"\'Russo One\';";s:6:"Ruthie";s:9:"\'Ruthie\';";s:4:"Sail";s:7:"\'Sail\';";s:5:"Salsa";s:8:"\'Salsa\';";s:8:"Sancreek";s:11:"\'Sancreek\';";s:11:"Sansita+One";s:14:"\'Sansita One\';";s:6:"Sarina";s:9:"\'Sarina\';";s:7:"Satisfy";s:10:"\'Satisfy\';";s:10:"Schoolbell";s:13:"\'Schoolbell\';";s:14:"Seaweed+Script";s:17:"\'Seaweed Script\';";s:9:"Sevillana";s:12:"\'Sevillana\';";s:18:"Shadows+Into+Light";s:21:"\'Shadows Into Light\';";s:22:"Shadows+Into+Light+Two";s:25:"\'Shadows Into Light Two\';";s:6:"Shanti";s:9:"\'Shanti\';";s:5:"Share";s:8:"\'Share\';";s:9:"Shojumaru";s:12:"\'Shojumaru\';";s:11:"Short+Stack";s:14:"\'Short Stack\';";s:8:"Siemreap";s:11:"\'Siemreap\';";s:10:"Sigmar+One";s:13:"\'Sigmar One\';";s:7:"Signika";s:10:"\'Signika\';";s:16:"Signika+Negative";s:19:"\'Signika Negative\';";s:9:"Simonetta";s:12:"\'Simonetta\';";s:13:"Sirin+Stencil";s:16:"\'Sirin Stencil\';";s:8:"Six+Caps";s:11:"\'Six Caps\';";s:7:"Slackey";s:10:"\'Slackey\';";s:6:"Smokum";s:9:"\'Smokum\';";s:6:"Smythe";s:9:"\'Smythe\';";s:7:"Sniglet";s:10:"\'Sniglet\';";s:7:"Snippet";s:10:"\'Snippet\';";s:5:"Sofia";s:8:"\'Sofia\';";s:10:"Sonsie+One";s:13:"\'Sonsie One\';";s:16:"Sorts+Mill+Goudy";s:19:"\'Sorts Mill Goudy\';";s:13:"Special+Elite";s:16:"\'Special Elite\';";s:10:"Spicy+Rice";s:13:"\'Spicy Rice\';";s:9:"Spinnaker";s:12:"\'Spinnaker\';";s:6:"Spirax";s:9:"\'Spirax\';";s:10:"Squada+One";s:13:"\'Squada One\';";s:15:"Stardos+Stencil";s:18:"\'Stardos Stencil\';";s:21:"Stint+Ultra+Condensed";s:24:"\'Stint Ultra Condensed\';";s:20:"Stint+Ultra+Expanded";s:23:"\'Stint Ultra Expanded\';";s:5:"Stoke";s:8:"\'Stoke\';";s:19:"Sue+Ellen+Francisco";s:22:"\'Sue Ellen Francisco\';";s:9:"Sunshiney";s:12:"\'Sunshiney\';";s:16:"Supermercado+One";s:19:"\'Supermercado One\';";s:11:"Suwannaphum";s:14:"\'Suwannaphum\';";s:18:"Swanky+and+Moo+Moo";s:21:"\'Swanky and Moo Moo\';";s:9:"Syncopate";s:12:"\'Syncopate\';";s:9:"Tangerine";s:12:"\'Tangerine\';";s:6:"Taprom";s:9:"\'Taprom\';";s:5:"Telex";s:8:"\'Telex\';";s:10:"Tenor+Sans";s:13:"\'Tenor Sans\';";s:18:"The+Girl+Next+Door";s:21:"\'The Girl Next Door\';";s:6:"Tienne";s:9:"\'Tienne\';";s:5:"Tinos";s:8:"\'Tinos\';";s:9:"Titan+One";s:12:"\'Titan One\';";s:11:"Trade+Winds";s:14:"\'Trade Winds\';";s:7:"Trocchi";s:10:"\'Trocchi\';";s:7:"Trochut";s:10:"\'Trochut\';";s:7:"Trykker";s:10:"\'Trykker\';";s:10:"Tulpen+One";s:13:"\'Tulpen One\';";s:6:"Ubuntu";s:9:"\'Ubuntu\';";s:16:"Ubuntu+Condensed";s:19:"\'Ubuntu Condensed\';";s:11:"Ubuntu+Mono";s:14:"\'Ubuntu Mono\';";s:5:"Ultra";s:8:"\'Ultra\';";s:14:"Uncial+Antiqua";s:17:"\'Uncial Antiqua\';";s:14:"UnifrakturCook";s:17:"\'UnifrakturCook\';";s:18:"UnifrakturMaguntia";s:21:"\'UnifrakturMaguntia\';";s:7:"Unkempt";s:10:"\'Unkempt\';";s:6:"Unlock";s:9:"\'Unlock\';";s:4:"Unna";s:7:"\'Unna\';";s:5:"VT323";s:8:"\'VT323\';";s:6:"Varela";s:9:"\'Varela\';";s:12:"Varela+Round";s:15:"\'Varela Round\';";s:11:"Vast+Shadow";s:14:"\'Vast Shadow\';";s:5:"Vibur";s:8:"\'Vibur\';";s:8:"Vidaloka";s:11:"\'Vidaloka\';";s:4:"Viga";s:7:"\'Viga\';";s:5:"Voces";s:8:"\'Voces\';";s:7:"Volkhov";s:10:"\'Volkhov\';";s:8:"Vollkorn";s:11:"\'Vollkorn\';";s:8:"Voltaire";s:11:"\'Voltaire\';";s:23:"Waiting+for+the+Sunrise";s:26:"\'Waiting for the Sunrise\';";s:8:"Wallpoet";s:11:"\'Wallpoet\';";s:15:"Walter+Turncoat";s:18:"\'Walter Turncoat\';";s:9:"Wellfleet";s:12:"\'Wellfleet\';";s:8:"Wire+One";s:11:"\'Wire One\';";s:17:"Yanone+Kaffeesatz";s:20:"\'Yanone Kaffeesatz\';";s:10:"Yellowtail";s:13:"\'Yellowtail\';";s:10:"Yeseva+One";s:13:"\'Yeseva One\';";s:10:"Yesteryear";s:13:"\'Yesteryear\';";s:6:"Zeyada";s:9:"\'Zeyada\';";}', 'yes'),
(148, 'seed_csp3_settings_1', 'a:61:{s:6:"status";s:1:"0";s:7:"api_key";s:16:"fs9hrl4v06gsgg03";s:4:"logo";s:73:"http://actorscompassdev.dev/wp-content/uploads/2016/01/ac-logo-300x24.png";s:8:"headline";s:27:"We\'re getting a makeover...";s:11:"description";s:101:"The new-and-improved ActorsCompass is coming soon -\r\nsign up below to be the first to know!\r\n\r\n&nbsp;";s:9:"emaillist";s:9:"mailchimp";s:6:"fields";a:1:{i:0;s:4:"name";}s:29:"database_notifications_emails";s:0:"";s:15:"feedburner_addr";s:0:"";s:16:"feedburner_local";s:2:"EN";s:25:"aweber_authorization_code";s:0:"";s:23:"campaignmonitor_api_key";s:0:"";s:24:"constantcontact_username";s:0:"";s:24:"constantcontact_password";s:0:"";s:19:"getresponse_api_key";s:0:"";s:16:"madmini_username";s:0:"";s:15:"madmini_api_key";s:0:"";s:16:"infusionsoft_app";s:0:"";s:20:"infusionsoft_api_key";s:0:"";s:16:"html_integration";s:0:"";s:17:"icontact_username";s:0:"";s:17:"icontact_password";s:0:"";s:14:"wysija_list_id";s:2:"-1";s:9:"sendy_url";s:0:"";s:13:"sendy_list_id";s:0:"";s:17:"mailchimp_api_key";s:36:"a2a4128f40cd9378ef8ed8eb9ae2714e-us9";s:16:"mailchimp_listid";s:10:"ea64e04eee";s:23:"mailchimp_welcome_email";a:1:{i:0;s:1:"1";}s:20:"mailchimp_group_name";s:0:"";s:16:"mailchimp_groups";s:0:"";s:12:"thankyou_msg";s:0:"";s:13:"share_buttons";a:3:{s:10:"tweet_text";s:0:"";s:12:"facebook_img";s:0:"";s:13:"pinterest_img";s:0:"";}s:22:"progressbar_date_range";a:6:{s:11:"start_month";s:2:"01";s:9:"start_day";s:0:"";s:10:"start_year";s:0:"";s:9:"end_month";s:2:"01";s:7:"end_day";s:0:"";s:8:"end_year";s:0:"";}s:22:"progressbar_percentage";s:0:"";s:18:"progressbar_effect";s:5:"basic";s:14:"countdown_date";a:5:{s:5:"month";s:2:"01";s:3:"day";s:0:"";s:4:"year";s:0:"";s:4:"hour";s:0:"";s:6:"minute";s:0:"";}s:16:"countdown_format";s:0:"";s:14:"countdown_days";s:0:"";s:13:"countdown_day";s:0:"";s:15:"countdown_hours";s:0:"";s:14:"countdown_hour";s:0:"";s:17:"countdown_minutes";s:0:"";s:16:"countdown_minute";s:0:"";s:17:"countdown_seconds";s:0:"";s:16:"countdown_second";s:0:"";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";s:17:"footer_credit_img";s:0:"";s:18:"footer_credit_link";s:0:"";s:22:"social_media_icon_size";s:2:"24";s:15:"social_profiles";a:14:{s:8:"Facebook";s:0:"";s:7:"Twitter";s:0:"";s:8:"Linkedin";s:0:"";s:10:"GooglePlus";s:0:"";s:7:"YouTube";s:0:"";s:6:"Flickr";s:0:"";s:5:"Vimeo";s:0:"";s:9:"Pinterest";s:0:"";s:9:"Instagram";s:0:"";s:10:"Foursquare";s:0:"";s:5:"Skype";s:0:"";s:6:"Tumblr";s:0:"";s:3:"RSS";s:0:"";s:5:"Email";s:0:"";}s:5:"txt_1";s:9:"Notify Me";s:5:"txt_2";s:16:"Enter Your Email";s:9:"txt_fname";s:10:"First Name";s:9:"txt_lname";s:9:"Last Name";s:5:"txt_5";s:24:"You\'ll be notified soon!";s:5:"txt_3";s:26:"You\'re already subscribed.";s:5:"txt_4";s:27:"Please enter a valid email.";s:5:"txt_6";s:24:"Error, please try again.";}', 'yes'),
(149, 'seed_csp3_settings_2', 'a:24:{s:8:"bg_color";s:7:"#ffffff";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"bg_effect";s:1:"0";s:24:"bg_slideshow_slide_speed";s:4:"3000";s:29:"bg_slideshow_slide_transition";s:1:"1";s:19:"bg_slideshow_images";s:0:"";s:12:"bg_video_url";s:0:"";s:10:"text_color";s:7:"#999999";s:10:"link_color";s:7:"#438d8a";s:14:"headline_color";s:7:"#9e0717";s:9:"text_font";s:4:"Lato";s:13:"headline_font";s:6:"Bitter";s:11:"button_font";s:7:"inherit";s:10:"typekit_id";s:0:"";s:16:"enable_container";a:1:{i:0;s:1:"1";}s:15:"container_color";s:7:"#f5f5f5";s:18:"container_position";s:4:"none";s:16:"container_effect";a:5:{s:7:"effects";a:3:{i:0;s:1:"5";i:1;s:1:"2";i:2;s:1:"3";}s:9:"thickness";s:1:"0";s:12:"border_color";s:7:"#e6e6e6";s:6:"radius";s:1:"2";s:13:"opacity_level";s:1:"8";}s:10:"custom_css";s:0:"";s:8:"template";s:1025:"<!DOCTYPE html>\r\n<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->\r\n<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->\r\n<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->\r\n	<head>\r\n		<meta charset="utf-8">\r\n		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">\r\n		<title>{Title}</title>\r\n		{MetaDescription}\r\n		<meta name="viewport" content="width=device-width, initial-scale=1.0">\r\n		{Privacy}\r\n		{Favicon}\r\n		{Head}\r\n		{CustomCSS}\r\n	</head>\r\n<body>\r\n	<div class="container">\r\n		<div class="row">\r\n			<div class="span10 offset1">\r\n				<div id="csp3-content">\r\n					{Logo}\r\n					{Headline}\r\n          {ProgressBar}\r\n          {Countdown}\r\n					{Description}\r\n					{Form}\r\n					{SocialProfiles}\r\n				</div><!-- end of #csp3-content -->\r\n			</div><!--! end of .span8 -->\r\n		</div> <!--! end of .row -->\r\n	</div> <!--! end of .container -->\r\n	{Credit}\r\n\r\n{Footer}\r\n</body>\r\n</html>";}', 'yes'),
(150, 'seed_csp3_settings_4', 'a:9:{s:15:"client_view_url";s:0:"";s:9:"ip_access";s:0:"";s:12:"include_page";s:2:"-1";s:13:"include_roles";s:1:"0";s:11:"enable_ajax";a:1:{i:0;s:1:"1";}s:21:"enable_responsiveness";a:1:{i:0;s:1:"1";}s:15:"enable_fitvidjs";a:1:{i:0;s:1:"1";}s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(151, 'seed_csp3_version', '3.15.3', 'yes'),
(153, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(170, 'WPLANG', '', 'yes'),
(171, 'new_admin_email', 'shannon@bluestormcreative.com', 'yes'),
(177, 'seedprod-coming-soon-pro_update_msg', 'WARNING: Update not available, your license key is invalid.', 'yes'),
(235, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1452481813;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(236, 'current_theme', 'ActorsCompass Strapped', 'yes'),
(237, 'theme_mods_Strapped', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1459150904;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:12:"categories-2";i:1;s:8:"search-2";i:2;s:10:"nav_menu-2";}}}}', 'yes'),
(238, 'theme_switched', '', 'yes'),
(242, 'post_count', '6', 'yes'),
(249, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(256, 'psts_signed_up', '0', 'yes'),
(326, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(328, 'gform_enable_background_updates', '1', 'yes'),
(329, 'rg_form_version', '1.9.19', 'yes'),
(332, 'rg_gforms_key', '0908434398de178db8596db6909e7e60', 'yes'),
(333, 'rg_gforms_enable_akismet', '1', 'yes'),
(334, 'rg_gforms_captcha_public_key', '', 'yes'),
(335, 'rg_gforms_captcha_private_key', '', 'yes'),
(336, 'rg_gforms_currency', 'USD', 'yes'),
(337, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(402, 'acf_version', '5.3.6.1', 'yes'),
(403, 'akismet_strictness', '0', 'yes'),
(404, 'akismet_show_user_comments_approved', '0', 'yes'),
(405, 'wordpress_api_key', '444f2de83d32', 'yes'),
(410, 'updraftplus_unlocked_fd', '1', 'yes'),
(411, 'updraftplus_last_lock_time_fd', '2016-05-19 22:41:23', 'yes'),
(412, 'updraftplus_semaphore_fd', '0', 'yes'),
(421, 'updraft_last_scheduled_fd', '1463697683', 'yes'),
(432, 'updraftplus_unlocked_', '1', 'yes'),
(433, 'updraftplus_last_lock_time_', '2016-01-14 00:06:06', 'yes'),
(434, 'updraftplus_semaphore_', '0', 'yes'),
(730, 'redux_version_upgraded_from', '3.5.9.5', 'yes'),
(737, 'redux_builder_ac', 'a:21:{s:12:"name-options";s:0:"";s:15:"tagline-options";s:0:"";s:13:"phone-options";s:0:"";s:13:"email-options";s:0:"";s:14:"height-options";s:0:"";s:16:"bodytype-options";s:0:"";s:12:"hair-options";s:0:"";s:12:"eyes-options";s:0:"";s:16:"headshot-options";a:1:{s:3:"url";s:40:"/wp-content/themes/AClite/img/avatar.jpg";}s:9:"reel-arve";s:0:"";s:15:"credits-options";a:5:{i:1;s:13:"Role - Show 1";i:2;s:13:"Role - Show 2";i:3;s:13:"Role - Show 3";i:4;s:13:"Role - Show 4";i:5;s:13:"Role - Show 5";}s:14:"skills-options";a:5:{i:1;s:7:"Skill 1";i:2;s:7:"Skill 2";i:3;s:7:"Skill 3";i:4;s:7:"Skill 4";i:5;s:7:"Skill 5";}s:14:"social-options";a:6:{s:8:"facebook";b:0;s:7:"twitter";b:0;s:9:"instagram";b:0;s:12:"actorsaccess";b:0;s:7:"youtube";b:0;s:4:"imdb";b:0;}s:17:"opt-palette-color";s:0:"";s:14:"opt-typography";a:6:{s:5:"color";s:4:"#333";s:10:"font-style";s:3:"700";s:11:"font-family";s:4:"Abel";s:6:"google";b:1;s:9:"font-size";s:4:"33px";s:11:"line-height";s:2:"10";}s:12:"union-switch";b:0;s:12:"union-select";a:3:{s:3:"sag";s:1:"0";s:3:"aea";s:1:"0";s:4:"agva";s:1:"0";}s:12:"agent-switch";b:0;s:10:"agent-name";s:0:"";s:11:"agent-email";s:0:"";s:11:"agent-phone";s:0:"";}', 'yes'),
(738, 'redux_builder_ac-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1458553849;}', 'yes'),
(767, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(768, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(769, 'tadv_version', '4000', 'yes'),
(772, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TlRFNE1UbDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQXpMVEV5SURBeE9qQXhPalUzIjtzOjM6InVybCI7czoyNzoiaHR0cDovL2FjdG9yc2NvbXBhc3NkZXYuZGV2Ijt9', 'yes'),
(795, 'arve_install_date', '1457335205', 'yes'),
(958, 'category_children', 'a:0:{}', 'yes'),
(1439, 'theme_mods_AClite', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1459150947;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:12:"categories-2";i:1;s:8:"search-2";i:2;s:10:"nav_menu-2";}}}}', 'yes'),
(1443, 'theme_mods_ActorsCompass', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(1557, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"/F6zzO9rKd0xjvxUt9sQOnTCQAj1f1Re";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:0;a:19:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"pull";s:15:"connection_info";s:61:"http://actorscompassdev.com\r\nRlQ7W1loFr9vGIoJxodhhY+kouRfdXcU";s:11:"replace_old";a:2:{i:1;s:22:"//actorscompassdev.com";i:2;s:47:"/home/bluestor/public_html/actorscompassdev.com";}s:11:"replace_new";a:2:{i:1;s:22:"//actorscompassdev.dev";i:2;s:76:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:11:"media_files";s:1:"1";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:20:"actorscompassdev.com";s:4:"name";s:20:"actorscompassdev.com";}}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(1558, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:16:".*wp-signup.php$";s:21:"index.php?signup=true";s:18:".*wp-activate.php$";s:23:"index.php?activate=true";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(1563, '_transient_timeout__redux_activation_redirect', '1463698395', 'no'),
(1564, '_transient__redux_activation_redirect', '1', 'no'),
(1565, 'r_notice_data', '{"type":"redux-message","title":"<strong>Redux Framework: New Documentation coming!<\\/strong><br\\/>","message":"We\'ve heard your screams and we\'re completely redoing our documentation. For a preview of things to come, please <a href=\\"http:\\/\\/reduxframework.github.io\\/docs.redux.io\\/getting-started\\/\\">visit our new docs repo<\\/a>. P.S. You can contribute! If you have an idea for a doc, <a href=\\"https:\\/\\/github.com\\/reduxframework\\/docs.redux.io\\/issues\\">post your ideas here<\\/a>. ","color":"rgba(0,162,227,1)"}', 'yes'),
(1566, 'redux_blast', '1463697475', 'yes'),
(1615, 'redux_builder_ac_res-transients', 'a:1:{s:14:"changed_values";a:0:{}}', 'yes'),
(1649, '_transient_is_multi_author', '1', 'yes'),
(1655, '_transient_strapped_categories', '2', 'yes'),
(1680, 'widget_enhancedtextwidget', 'a:2:{i:2;a:9:{s:5:"title";s:16:"Stay in the Loop";s:4:"text";s:1174:"<form class="" action="//actorscompass.us9.list-manage.com/subscribe/post?u=1a274b588b38fbdca0e423cb2&amp;id=ea64e04eee" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>\r\n<div class="form-fields-top">\r\n<label class="screenreader" for="mce-FNAME">First Name</label>\r\n<input type="text" value="First Name" name="FNAME" class="" id="mce-FNAME" onblur=" if (this.value == \'\' ) this.value = \'First Name\'; " onfocus="if(this.value == \'First Name\') this.value = \'\';">\r\n<label class="screenreader" for="mce-LNAME">Last Name</label>\r\n<input type="text" value="Last Name" name="LNAME" class="" id="mce-LNAME" onblur=" if (this.value == \'\' ) this.value = \'Last Name\'; " onfocus="if(this.value == \'Last Name\') this.value = \'\';">\r\n</div>\r\n<label class="screenreader" for="mce-EMAIL">Email</label>\r\n<input type="email" value="Enter Your Email" name="EMAIL" class="required email" id="mce-EMAIL" onblur=" if (this.value == \'\' ) this.value = \'Enter Your Email\'; " onfocus="if(this.value == \'Enter Your Email\') this.value = \'\';">\r\n<input type="submit" class="btn btn-green" type="button" value="Sign Up" />\r\n</form>";s:8:"titleUrl";s:0:"";s:8:"cssClass";s:19:"optin sidebar-optin";s:9:"hideTitle";b:0;s:9:"hideEmpty";b:0;s:9:"newWindow";b:0;s:6:"filter";b:0;s:4:"bare";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(1696, '_transient_timeout_seed_csp3_mailchimp_lists', '1463783875', 'no'),
(1697, '_transient_seed_csp3_mailchimp_lists', 's:110:"a:2:{s:10:"90dfd749b6";s:27:"Actors Compass Beta Testers";s:10:"ea64e04eee";s:25:"Actors Compass Newsletter";}";', 'no'),
(1698, '_transient_timeout_seed_csp3_pro_fonts', '1464302275', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1699, '_transient_seed_csp3_pro_fonts', 's:18138:"a:1:{s:12:"Google Fonts";a:523:{s:4:"Abel";s:4:"Abel";s:13:"Abril+Fatface";s:13:"Abril Fatface";s:8:"Aclonica";s:8:"Aclonica";s:4:"Acme";s:4:"Acme";s:5:"Actor";s:5:"Actor";s:7:"Adamina";s:7:"Adamina";s:10:"Advent+Pro";s:10:"Advent Pro";s:15:"Aguafina+Script";s:15:"Aguafina Script";s:6:"Aladin";s:6:"Aladin";s:7:"Aldrich";s:7:"Aldrich";s:8:"Alegreya";s:8:"Alegreya";s:11:"Alegreya+SC";s:11:"Alegreya SC";s:10:"Alex+Brush";s:10:"Alex Brush";s:13:"Alfa+Slab+One";s:13:"Alfa Slab One";s:5:"Alice";s:5:"Alice";s:5:"Alike";s:5:"Alike";s:13:"Alike+Angular";s:13:"Alike Angular";s:5:"Allan";s:5:"Allan";s:7:"Allerta";s:7:"Allerta";s:15:"Allerta+Stencil";s:15:"Allerta Stencil";s:6:"Allura";s:6:"Allura";s:8:"Almendra";s:8:"Almendra";s:11:"Almendra+SC";s:11:"Almendra SC";s:8:"Amaranth";s:8:"Amaranth";s:9:"Amatic+SC";s:9:"Amatic SC";s:9:"Amethysta";s:9:"Amethysta";s:6:"Andada";s:6:"Andada";s:6:"Andika";s:6:"Andika";s:6:"Angkor";s:6:"Angkor";s:24:"Annie+Use+Your+Telescope";s:24:"Annie Use Your Telescope";s:13:"Anonymous+Pro";s:13:"Anonymous Pro";s:5:"Antic";s:5:"Antic";s:12:"Antic+Didone";s:12:"Antic Didone";s:10:"Antic+Slab";s:10:"Antic Slab";s:5:"Anton";s:5:"Anton";s:6:"Arapey";s:6:"Arapey";s:7:"Arbutus";s:7:"Arbutus";s:19:"Architects+Daughter";s:19:"Architects Daughter";s:5:"Arimo";s:5:"Arimo";s:8:"Arizonia";s:8:"Arizonia";s:6:"Armata";s:6:"Armata";s:8:"Artifika";s:8:"Artifika";s:4:"Arvo";s:4:"Arvo";s:4:"Asap";s:4:"Asap";s:5:"Asset";s:5:"Asset";s:7:"Astloch";s:7:"Astloch";s:4:"Asul";s:4:"Asul";s:10:"Atomic+Age";s:10:"Atomic Age";s:6:"Aubrey";s:6:"Aubrey";s:9:"Audiowide";s:9:"Audiowide";s:7:"Average";s:7:"Average";s:19:"Averia+Gruesa+Libre";s:19:"Averia Gruesa Libre";s:12:"Averia+Libre";s:12:"Averia Libre";s:17:"Averia+Sans+Libre";s:17:"Averia Sans Libre";s:18:"Averia+Serif+Libre";s:18:"Averia Serif Libre";s:10:"Bad+Script";s:10:"Bad Script";s:9:"Balthazar";s:9:"Balthazar";s:7:"Bangers";s:7:"Bangers";s:5:"Basic";s:5:"Basic";s:10:"Battambang";s:10:"Battambang";s:7:"Baumans";s:7:"Baumans";s:5:"Bayon";s:5:"Bayon";s:8:"Belgrano";s:8:"Belgrano";s:7:"Belleza";s:7:"Belleza";s:7:"Bentham";s:7:"Bentham";s:15:"Berkshire+Swash";s:15:"Berkshire Swash";s:5:"Bevan";s:5:"Bevan";s:11:"Bigshot+One";s:11:"Bigshot One";s:5:"Bilbo";s:5:"Bilbo";s:16:"Bilbo+Swash+Caps";s:16:"Bilbo Swash Caps";s:6:"Bitter";s:6:"Bitter";s:13:"Black+Ops+One";s:13:"Black Ops One";s:5:"Bokor";s:5:"Bokor";s:6:"Bonbon";s:6:"Bonbon";s:8:"Boogaloo";s:8:"Boogaloo";s:10:"Bowlby+One";s:10:"Bowlby One";s:13:"Bowlby+One+SC";s:13:"Bowlby One SC";s:7:"Brawler";s:7:"Brawler";s:10:"Bree+Serif";s:10:"Bree Serif";s:14:"Bubblegum+Sans";s:14:"Bubblegum Sans";s:4:"Buda";s:4:"Buda";s:7:"Buenard";s:7:"Buenard";s:10:"Butcherman";s:10:"Butcherman";s:14:"Butterfly+Kids";s:14:"Butterfly Kids";s:5:"Cabin";s:5:"Cabin";s:15:"Cabin+Condensed";s:15:"Cabin Condensed";s:12:"Cabin+Sketch";s:12:"Cabin Sketch";s:15:"Caesar+Dressing";s:15:"Caesar Dressing";s:10:"Cagliostro";s:10:"Cagliostro";s:14:"Calligraffitti";s:14:"Calligraffitti";s:5:"Cambo";s:5:"Cambo";s:6:"Candal";s:6:"Candal";s:9:"Cantarell";s:9:"Cantarell";s:11:"Cantata+One";s:11:"Cantata One";s:5:"Cardo";s:5:"Cardo";s:5:"Carme";s:5:"Carme";s:10:"Carter+One";s:10:"Carter One";s:6:"Caudex";s:6:"Caudex";s:18:"Cedarville+Cursive";s:18:"Cedarville Cursive";s:11:"Ceviche+One";s:11:"Ceviche One";s:10:"Changa+One";s:10:"Changa One";s:6:"Chango";s:6:"Chango";s:18:"Chau+Philomene+One";s:18:"Chau Philomene One";s:14:"Chelsea+Market";s:14:"Chelsea Market";s:6:"Chenla";s:6:"Chenla";s:17:"Cherry+Cream+Soda";s:17:"Cherry Cream Soda";s:5:"Chewy";s:5:"Chewy";s:6:"Chicle";s:6:"Chicle";s:5:"Chivo";s:5:"Chivo";s:4:"Coda";s:4:"Coda";s:12:"Coda+Caption";s:12:"Coda Caption";s:8:"Codystar";s:8:"Codystar";s:9:"Comfortaa";s:9:"Comfortaa";s:11:"Coming+Soon";s:11:"Coming Soon";s:11:"Concert+One";s:11:"Concert One";s:9:"Condiment";s:9:"Condiment";s:7:"Content";s:7:"Content";s:12:"Contrail+One";s:12:"Contrail One";s:11:"Convergence";s:11:"Convergence";s:6:"Cookie";s:6:"Cookie";s:5:"Copse";s:5:"Copse";s:6:"Corben";s:6:"Corben";s:7:"Cousine";s:7:"Cousine";s:8:"Coustard";s:8:"Coustard";s:21:"Covered+By+Your+Grace";s:21:"Covered By Your Grace";s:12:"Crafty+Girls";s:12:"Crafty Girls";s:9:"Creepster";s:9:"Creepster";s:11:"Crete+Round";s:11:"Crete Round";s:12:"Crimson+Text";s:12:"Crimson Text";s:7:"Crushed";s:7:"Crushed";s:6:"Cuprum";s:6:"Cuprum";s:6:"Cutive";s:6:"Cutive";s:6:"Damion";s:6:"Damion";s:14:"Dancing+Script";s:14:"Dancing Script";s:7:"Dangrek";s:7:"Dangrek";s:20:"Dawning+of+a+New+Day";s:20:"Dawning of a New Day";s:8:"Days+One";s:8:"Days One";s:6:"Delius";s:6:"Delius";s:17:"Delius+Swash+Caps";s:17:"Delius Swash Caps";s:14:"Delius+Unicase";s:14:"Delius Unicase";s:13:"Della+Respira";s:13:"Della Respira";s:10:"Devonshire";s:10:"Devonshire";s:13:"Didact+Gothic";s:13:"Didact Gothic";s:9:"Diplomata";s:9:"Diplomata";s:12:"Diplomata+SC";s:12:"Diplomata SC";s:10:"Doppio+One";s:10:"Doppio One";s:5:"Dorsa";s:5:"Dorsa";s:5:"Dosis";s:5:"Dosis";s:11:"Dr+Sugiyama";s:11:"Dr Sugiyama";s:10:"Droid+Sans";s:10:"Droid Sans";s:15:"Droid+Sans+Mono";s:15:"Droid Sans Mono";s:11:"Droid+Serif";s:11:"Droid Serif";s:9:"Duru+Sans";s:9:"Duru Sans";s:9:"Dynalight";s:9:"Dynalight";s:11:"EB+Garamond";s:11:"EB Garamond";s:5:"Eater";s:5:"Eater";s:9:"Economica";s:9:"Economica";s:11:"Electrolize";s:11:"Electrolize";s:11:"Emblema+One";s:11:"Emblema One";s:12:"Emilys+Candy";s:12:"Emilys Candy";s:10:"Engagement";s:10:"Engagement";s:9:"Enriqueta";s:9:"Enriqueta";s:9:"Erica+One";s:9:"Erica One";s:7:"Esteban";s:7:"Esteban";s:15:"Euphoria+Script";s:15:"Euphoria Script";s:5:"Ewert";s:5:"Ewert";s:3:"Exo";s:3:"Exo";s:13:"Expletus+Sans";s:13:"Expletus Sans";s:12:"Fanwood+Text";s:12:"Fanwood Text";s:9:"Fascinate";s:9:"Fascinate";s:16:"Fascinate+Inline";s:16:"Fascinate Inline";s:8:"Federant";s:8:"Federant";s:6:"Federo";s:6:"Federo";s:6:"Felipa";s:6:"Felipa";s:9:"Fjord+One";s:9:"Fjord One";s:8:"Flamenco";s:8:"Flamenco";s:7:"Flavors";s:7:"Flavors";s:10:"Fondamento";s:10:"Fondamento";s:16:"Fontdiner+Swanky";s:16:"Fontdiner Swanky";s:5:"Forum";s:5:"Forum";s:12:"Francois+One";s:12:"Francois One";s:20:"Fredericka+the+Great";s:20:"Fredericka the Great";s:11:"Fredoka+One";s:11:"Fredoka One";s:8:"Freehand";s:8:"Freehand";s:6:"Fresca";s:6:"Fresca";s:7:"Frijole";s:7:"Frijole";s:9:"Fugaz+One";s:9:"Fugaz One";s:9:"GFS+Didot";s:9:"GFS Didot";s:15:"GFS+Neohellenic";s:15:"GFS Neohellenic";s:8:"Galdeano";s:8:"Galdeano";s:13:"Gentium+Basic";s:13:"Gentium Basic";s:18:"Gentium+Book+Basic";s:18:"Gentium Book Basic";s:3:"Geo";s:3:"Geo";s:7:"Geostar";s:7:"Geostar";s:12:"Geostar+Fill";s:12:"Geostar Fill";s:12:"Germania+One";s:12:"Germania One";s:14:"Give+You+Glory";s:14:"Give You Glory";s:13:"Glass+Antiqua";s:13:"Glass Antiqua";s:6:"Glegoo";s:6:"Glegoo";s:17:"Gloria+Hallelujah";s:17:"Gloria Hallelujah";s:10:"Goblin+One";s:10:"Goblin One";s:10:"Gochi+Hand";s:10:"Gochi Hand";s:8:"Gorditas";s:8:"Gorditas";s:21:"Goudy+Bookletter+1911";s:21:"Goudy Bookletter 1911";s:8:"Graduate";s:8:"Graduate";s:12:"Gravitas+One";s:12:"Gravitas One";s:11:"Great+Vibes";s:11:"Great Vibes";s:6:"Gruppo";s:6:"Gruppo";s:5:"Gudea";s:5:"Gudea";s:6:"Habibi";s:6:"Habibi";s:15:"Hammersmith+One";s:15:"Hammersmith One";s:7:"Handlee";s:7:"Handlee";s:7:"Hanuman";s:7:"Hanuman";s:12:"Happy+Monkey";s:12:"Happy Monkey";s:11:"Henny+Penny";s:11:"Henny Penny";s:20:"Herr+Von+Muellerhoff";s:20:"Herr Von Muellerhoff";s:15:"Holtwood+One+SC";s:15:"Holtwood One SC";s:14:"Homemade+Apple";s:14:"Homemade Apple";s:8:"Homenaje";s:8:"Homenaje";s:15:"IM+Fell+DW+Pica";s:15:"IM Fell DW Pica";s:18:"IM+Fell+DW+Pica+SC";s:18:"IM Fell DW Pica SC";s:19:"IM+Fell+Double+Pica";s:19:"IM Fell Double Pica";s:22:"IM+Fell+Double+Pica+SC";s:22:"IM Fell Double Pica SC";s:15:"IM+Fell+English";s:15:"IM Fell English";s:18:"IM+Fell+English+SC";s:18:"IM Fell English SC";s:20:"IM+Fell+French+Canon";s:20:"IM Fell French Canon";s:23:"IM+Fell+French+Canon+SC";s:23:"IM Fell French Canon SC";s:20:"IM+Fell+Great+Primer";s:20:"IM Fell Great Primer";s:23:"IM+Fell+Great+Primer+SC";s:23:"IM Fell Great Primer SC";s:7:"Iceberg";s:7:"Iceberg";s:7:"Iceland";s:7:"Iceland";s:7:"Imprima";s:7:"Imprima";s:11:"Inconsolata";s:11:"Inconsolata";s:5:"Inder";s:5:"Inder";s:12:"Indie+Flower";s:12:"Indie Flower";s:5:"Inika";s:5:"Inika";s:12:"Irish+Grover";s:12:"Irish Grover";s:9:"Istok+Web";s:9:"Istok Web";s:8:"Italiana";s:8:"Italiana";s:9:"Italianno";s:9:"Italianno";s:14:"Jim+Nightshade";s:14:"Jim Nightshade";s:10:"Jockey+One";s:10:"Jockey One";s:12:"Jolly+Lodger";s:12:"Jolly Lodger";s:12:"Josefin+Sans";s:12:"Josefin Sans";s:12:"Josefin+Slab";s:12:"Josefin Slab";s:6:"Judson";s:6:"Judson";s:5:"Julee";s:5:"Julee";s:5:"Junge";s:5:"Junge";s:4:"Jura";s:4:"Jura";s:17:"Just+Another+Hand";s:17:"Just Another Hand";s:23:"Just+Me+Again+Down+Here";s:23:"Just Me Again Down Here";s:7:"Kameron";s:7:"Kameron";s:5:"Karla";s:5:"Karla";s:14:"Kaushan+Script";s:14:"Kaushan Script";s:10:"Kelly+Slab";s:10:"Kelly Slab";s:5:"Kenia";s:5:"Kenia";s:5:"Khmer";s:5:"Khmer";s:7:"Knewave";s:7:"Knewave";s:9:"Kotta+One";s:9:"Kotta One";s:6:"Koulen";s:6:"Koulen";s:6:"Kranky";s:6:"Kranky";s:5:"Kreon";s:5:"Kreon";s:6:"Kristi";s:6:"Kristi";s:9:"Krona+One";s:9:"Krona One";s:15:"La+Belle+Aurore";s:15:"La Belle Aurore";s:8:"Lancelot";s:8:"Lancelot";s:4:"Lato";s:4:"Lato";s:13:"League+Script";s:13:"League Script";s:12:"Leckerli+One";s:12:"Leckerli One";s:6:"Ledger";s:6:"Ledger";s:6:"Lekton";s:6:"Lekton";s:5:"Lemon";s:5:"Lemon";s:10:"Lilita+One";s:10:"Lilita One";s:9:"Limelight";s:9:"Limelight";s:11:"Linden+Hill";s:11:"Linden Hill";s:7:"Lobster";s:7:"Lobster";s:11:"Lobster+Two";s:11:"Lobster Two";s:16:"Londrina+Outline";s:16:"Londrina Outline";s:15:"Londrina+Shadow";s:15:"Londrina Shadow";s:15:"Londrina+Sketch";s:15:"Londrina Sketch";s:14:"Londrina+Solid";s:14:"Londrina Solid";s:4:"Lora";s:4:"Lora";s:21:"Love+Ya+Like+A+Sister";s:21:"Love Ya Like A Sister";s:17:"Loved+by+the+King";s:17:"Loved by the King";s:14:"Lovers+Quarrel";s:14:"Lovers Quarrel";s:12:"Luckiest+Guy";s:12:"Luckiest Guy";s:8:"Lusitana";s:8:"Lusitana";s:7:"Lustria";s:7:"Lustria";s:7:"Macondo";s:7:"Macondo";s:18:"Macondo+Swash+Caps";s:18:"Macondo Swash Caps";s:5:"Magra";s:5:"Magra";s:13:"Maiden+Orange";s:13:"Maiden Orange";s:4:"Mako";s:4:"Mako";s:12:"Marck+Script";s:12:"Marck Script";s:9:"Marko+One";s:9:"Marko One";s:8:"Marmelad";s:8:"Marmelad";s:6:"Marvel";s:6:"Marvel";s:4:"Mate";s:4:"Mate";s:7:"Mate+SC";s:7:"Mate SC";s:9:"Maven+Pro";s:9:"Maven Pro";s:6:"Meddon";s:6:"Meddon";s:13:"MedievalSharp";s:13:"MedievalSharp";s:10:"Medula+One";s:10:"Medula One";s:6:"Megrim";s:6:"Megrim";s:12:"Merienda+One";s:12:"Merienda One";s:12:"Merriweather";s:12:"Merriweather";s:5:"Metal";s:5:"Metal";s:12:"Metamorphous";s:12:"Metamorphous";s:11:"Metrophobic";s:11:"Metrophobic";s:8:"Michroma";s:8:"Michroma";s:9:"Miltonian";s:9:"Miltonian";s:16:"Miltonian+Tattoo";s:16:"Miltonian Tattoo";s:7:"Miniver";s:7:"Miniver";s:14:"Miss+Fajardose";s:14:"Miss Fajardose";s:14:"Modern+Antiqua";s:14:"Modern Antiqua";s:7:"Molengo";s:7:"Molengo";s:8:"Monofett";s:8:"Monofett";s:7:"Monoton";s:7:"Monoton";s:20:"Monsieur+La+Doulaise";s:20:"Monsieur La Doulaise";s:7:"Montaga";s:7:"Montaga";s:6:"Montez";s:6:"Montez";s:10:"Montserrat";s:10:"Montserrat";s:4:"Moul";s:4:"Moul";s:8:"Moulpali";s:8:"Moulpali";s:22:"Mountains+of+Christmas";s:22:"Mountains of Christmas";s:10:"Mr+Bedfort";s:10:"Mr Bedfort";s:8:"Mr+Dafoe";s:8:"Mr Dafoe";s:14:"Mr+De+Haviland";s:14:"Mr De Haviland";s:19:"Mrs+Saint+Delafield";s:19:"Mrs Saint Delafield";s:13:"Mrs+Sheppards";s:13:"Mrs Sheppards";s:4:"Muli";s:4:"Muli";s:13:"Mystery+Quest";s:13:"Mystery Quest";s:6:"Neucha";s:6:"Neucha";s:6:"Neuton";s:6:"Neuton";s:10:"News+Cycle";s:10:"News Cycle";s:7:"Niconne";s:7:"Niconne";s:9:"Nixie+One";s:9:"Nixie One";s:6:"Nobile";s:6:"Nobile";s:6:"Nokora";s:6:"Nokora";s:7:"Norican";s:7:"Norican";s:7:"Nosifer";s:7:"Nosifer";s:20:"Nothing+You+Could+Do";s:20:"Nothing You Could Do";s:12:"Noticia+Text";s:12:"Noticia Text";s:8:"Nova+Cut";s:8:"Nova Cut";s:9:"Nova+Flat";s:9:"Nova Flat";s:9:"Nova+Mono";s:9:"Nova Mono";s:9:"Nova+Oval";s:9:"Nova Oval";s:10:"Nova+Round";s:10:"Nova Round";s:11:"Nova+Script";s:11:"Nova Script";s:9:"Nova+Slim";s:9:"Nova Slim";s:11:"Nova+Square";s:11:"Nova Square";s:6:"Numans";s:6:"Numans";s:6:"Nunito";s:6:"Nunito";s:14:"Odor+Mean+Chey";s:14:"Odor Mean Chey";s:15:"Old+Standard+TT";s:15:"Old Standard TT";s:9:"Oldenburg";s:9:"Oldenburg";s:11:"Oleo+Script";s:11:"Oleo Script";s:9:"Open+Sans";s:9:"Open Sans";s:19:"Open+Sans+Condensed";s:19:"Open Sans Condensed";s:8:"Orbitron";s:8:"Orbitron";s:15:"Original+Surfer";s:15:"Original Surfer";s:6:"Oswald";s:6:"Oswald";s:16:"Over+the+Rainbow";s:16:"Over the Rainbow";s:8:"Overlock";s:8:"Overlock";s:11:"Overlock+SC";s:11:"Overlock SC";s:3:"Ovo";s:3:"Ovo";s:6:"Oxygen";s:6:"Oxygen";s:7:"PT+Mono";s:7:"PT Mono";s:7:"PT+Sans";s:7:"PT Sans";s:15:"PT+Sans+Caption";s:15:"PT Sans Caption";s:14:"PT+Sans+Narrow";s:14:"PT Sans Narrow";s:8:"PT+Serif";s:8:"PT Serif";s:16:"PT+Serif+Caption";s:16:"PT Serif Caption";s:8:"Pacifico";s:8:"Pacifico";s:10:"Parisienne";s:10:"Parisienne";s:11:"Passero+One";s:11:"Passero One";s:11:"Passion+One";s:11:"Passion One";s:12:"Patrick+Hand";s:12:"Patrick Hand";s:9:"Patua+One";s:9:"Patua One";s:11:"Paytone+One";s:11:"Paytone One";s:16:"Permanent+Marker";s:16:"Permanent Marker";s:7:"Petrona";s:7:"Petrona";s:11:"Philosopher";s:11:"Philosopher";s:6:"Piedra";s:6:"Piedra";s:13:"Pinyon+Script";s:13:"Pinyon Script";s:7:"Plaster";s:7:"Plaster";s:4:"Play";s:4:"Play";s:8:"Playball";s:8:"Playball";s:16:"Playfair+Display";s:16:"Playfair Display";s:7:"Podkova";s:7:"Podkova";s:10:"Poiret+One";s:10:"Poiret One";s:10:"Poller+One";s:10:"Poller One";s:4:"Poly";s:4:"Poly";s:8:"Pompiere";s:8:"Pompiere";s:12:"Pontano+Sans";s:12:"Pontano Sans";s:16:"Port+Lligat+Sans";s:16:"Port Lligat Sans";s:16:"Port+Lligat+Slab";s:16:"Port Lligat Slab";s:5:"Prata";s:5:"Prata";s:11:"Preahvihear";s:11:"Preahvihear";s:14:"Press+Start+2P";s:14:"Press Start 2P";s:14:"Princess+Sofia";s:14:"Princess Sofia";s:8:"Prociono";s:8:"Prociono";s:10:"Prosto+One";s:10:"Prosto One";s:7:"Puritan";s:7:"Puritan";s:8:"Quantico";s:8:"Quantico";s:12:"Quattrocento";s:12:"Quattrocento";s:17:"Quattrocento+Sans";s:17:"Quattrocento Sans";s:9:"Questrial";s:9:"Questrial";s:9:"Quicksand";s:9:"Quicksand";s:7:"Qwigley";s:7:"Qwigley";s:6:"Radley";s:6:"Radley";s:7:"Raleway";s:7:"Raleway";s:12:"Rammetto+One";s:12:"Rammetto One";s:6:"Rancho";s:6:"Rancho";s:9:"Rationale";s:9:"Rationale";s:9:"Redressed";s:9:"Redressed";s:13:"Reenie+Beanie";s:13:"Reenie Beanie";s:7:"Revalia";s:7:"Revalia";s:6:"Ribeye";s:6:"Ribeye";s:13:"Ribeye+Marrow";s:13:"Ribeye Marrow";s:9:"Righteous";s:9:"Righteous";s:9:"Rochester";s:9:"Rochester";s:9:"Rock+Salt";s:9:"Rock Salt";s:7:"Rokkitt";s:7:"Rokkitt";s:9:"Ropa+Sans";s:9:"Ropa Sans";s:7:"Rosario";s:7:"Rosario";s:8:"Rosarivo";s:8:"Rosarivo";s:12:"Rouge+Script";s:12:"Rouge Script";s:4:"Ruda";s:4:"Ruda";s:11:"Ruge+Boogie";s:11:"Ruge Boogie";s:6:"Ruluko";s:6:"Ruluko";s:14:"Ruslan+Display";s:14:"Ruslan Display";s:9:"Russo+One";s:9:"Russo One";s:6:"Ruthie";s:6:"Ruthie";s:4:"Sail";s:4:"Sail";s:5:"Salsa";s:5:"Salsa";s:8:"Sancreek";s:8:"Sancreek";s:11:"Sansita+One";s:11:"Sansita One";s:6:"Sarina";s:6:"Sarina";s:7:"Satisfy";s:7:"Satisfy";s:10:"Schoolbell";s:10:"Schoolbell";s:14:"Seaweed+Script";s:14:"Seaweed Script";s:9:"Sevillana";s:9:"Sevillana";s:18:"Shadows+Into+Light";s:18:"Shadows Into Light";s:22:"Shadows+Into+Light+Two";s:22:"Shadows Into Light Two";s:6:"Shanti";s:6:"Shanti";s:5:"Share";s:5:"Share";s:9:"Shojumaru";s:9:"Shojumaru";s:11:"Short+Stack";s:11:"Short Stack";s:8:"Siemreap";s:8:"Siemreap";s:10:"Sigmar+One";s:10:"Sigmar One";s:7:"Signika";s:7:"Signika";s:16:"Signika+Negative";s:16:"Signika Negative";s:9:"Simonetta";s:9:"Simonetta";s:13:"Sirin+Stencil";s:13:"Sirin Stencil";s:8:"Six+Caps";s:8:"Six Caps";s:7:"Slackey";s:7:"Slackey";s:6:"Smokum";s:6:"Smokum";s:6:"Smythe";s:6:"Smythe";s:7:"Sniglet";s:7:"Sniglet";s:7:"Snippet";s:7:"Snippet";s:5:"Sofia";s:5:"Sofia";s:10:"Sonsie+One";s:10:"Sonsie One";s:16:"Sorts+Mill+Goudy";s:16:"Sorts Mill Goudy";s:13:"Special+Elite";s:13:"Special Elite";s:10:"Spicy+Rice";s:10:"Spicy Rice";s:9:"Spinnaker";s:9:"Spinnaker";s:6:"Spirax";s:6:"Spirax";s:10:"Squada+One";s:10:"Squada One";s:15:"Stardos+Stencil";s:15:"Stardos Stencil";s:21:"Stint+Ultra+Condensed";s:21:"Stint Ultra Condensed";s:20:"Stint+Ultra+Expanded";s:20:"Stint Ultra Expanded";s:5:"Stoke";s:5:"Stoke";s:19:"Sue+Ellen+Francisco";s:19:"Sue Ellen Francisco";s:9:"Sunshiney";s:9:"Sunshiney";s:16:"Supermercado+One";s:16:"Supermercado One";s:11:"Suwannaphum";s:11:"Suwannaphum";s:18:"Swanky+and+Moo+Moo";s:18:"Swanky and Moo Moo";s:9:"Syncopate";s:9:"Syncopate";s:9:"Tangerine";s:9:"Tangerine";s:6:"Taprom";s:6:"Taprom";s:5:"Telex";s:5:"Telex";s:10:"Tenor+Sans";s:10:"Tenor Sans";s:18:"The+Girl+Next+Door";s:18:"The Girl Next Door";s:6:"Tienne";s:6:"Tienne";s:5:"Tinos";s:5:"Tinos";s:9:"Titan+One";s:9:"Titan One";s:11:"Trade+Winds";s:11:"Trade Winds";s:7:"Trocchi";s:7:"Trocchi";s:7:"Trochut";s:7:"Trochut";s:7:"Trykker";s:7:"Trykker";s:10:"Tulpen+One";s:10:"Tulpen One";s:6:"Ubuntu";s:6:"Ubuntu";s:16:"Ubuntu+Condensed";s:16:"Ubuntu Condensed";s:11:"Ubuntu+Mono";s:11:"Ubuntu Mono";s:5:"Ultra";s:5:"Ultra";s:14:"Uncial+Antiqua";s:14:"Uncial Antiqua";s:14:"UnifrakturCook";s:14:"UnifrakturCook";s:18:"UnifrakturMaguntia";s:18:"UnifrakturMaguntia";s:7:"Unkempt";s:7:"Unkempt";s:6:"Unlock";s:6:"Unlock";s:4:"Unna";s:4:"Unna";s:5:"VT323";s:5:"VT323";s:6:"Varela";s:6:"Varela";s:12:"Varela+Round";s:12:"Varela Round";s:11:"Vast+Shadow";s:11:"Vast Shadow";s:5:"Vibur";s:5:"Vibur";s:8:"Vidaloka";s:8:"Vidaloka";s:4:"Viga";s:4:"Viga";s:5:"Voces";s:5:"Voces";s:7:"Volkhov";s:7:"Volkhov";s:8:"Vollkorn";s:8:"Vollkorn";s:8:"Voltaire";s:8:"Voltaire";s:23:"Waiting+for+the+Sunrise";s:23:"Waiting for the Sunrise";s:8:"Wallpoet";s:8:"Wallpoet";s:15:"Walter+Turncoat";s:15:"Walter Turncoat";s:9:"Wellfleet";s:9:"Wellfleet";s:8:"Wire+One";s:8:"Wire One";s:17:"Yanone+Kaffeesatz";s:17:"Yanone Kaffeesatz";s:10:"Yellowtail";s:10:"Yellowtail";s:10:"Yeseva+One";s:10:"Yeseva One";s:10:"Yesteryear";s:10:"Yesteryear";s:6:"Zeyada";s:6:"Zeyada";}}";', 'no'),
(1700, '_transient_timeout_gform_update_info', '1463784085', 'no'),
(1701, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:8:{s:4:"date";s:29:"Thu, 19 May 2016 22:41:25 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:21:"PHP/5.5.9-1ubuntu4.16";s:4:"vary";s:15:"Accept-Encoding";s:16:"content-encoding";s:4:"gzip";s:14:"content-length";s:4:"1989";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:10226:"{"is_valid_key":"1","version":"1.9.19","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.19.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=vj%2BqhQQM%2B9euH%2BdUn%2F6NvlfbE54%3D","expiration_time":1469854800,"offerings":{"gravityforms":{"is_available":true,"version":"1.9.19","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.9.19.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=vj%2BqhQQM%2B9euH%2BdUn%2F6NvlfbE54%3D"},"gravityformsactivecampaign":{"is_available":true,"version":"1.3.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=Pt9jLcZmR7hrjaIV4ECcHpVOSqc%3D"},"gravityformsagilecrm":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=Ta1yx9w6fmb64orliqom3nwd3ZQ%3D"},"gravityformsauthorizenet":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=ak07LT3RWoQVWCN89jA7EE8loxk%3D"},"gravityformsaweber":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=JmuT48DtTxgEzU%2BvkoHECV90JmI%3D"},"gravityformsbatchbook":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=P6jaUipz%2BI1rYIjrNzJstKW7IkE%3D"},"gravityformsbreeze":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/breeze\\/gravityformsbreeze_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=9B8gmvmNwdHQ6EjIE5YVB2knDjI%3D"},"gravityformscampaignmonitor":{"is_available":true,"version":"3.4.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=7npY03xOLgJp9GxnMIGB3dVKSZM%3D"},"gravityformscampfire":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=biyiq%2BPpRL%2FPg2bjTVoVaRf19%2FI%3D"},"gravityformscapsulecrm":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=JkmpuP0shvfKg8NlE94KqFtls9E%3D"},"gravityformscleverreach":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=o07ftc7UeNNbFzcuTcXNT1WmUHo%3D"},"gravityformscoupons":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=KclIQ2GHe9%2FmOd%2BBPsHPN63vx1g%3D"},"gravityformsdebug":{"is_available":true,"version":"","url":""},"gravityformsdropbox":{"is_available":true,"version":"1.1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=aIGjJPoxO9tnLCE0nzTb6p0O3cA%3D"},"gravityformsemma":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=IdeUSyGoxBEHztMKevRvFykWZgA%3D"},"gravityformsfreshbooks":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=EDwCl3tE0lkRHSsX6oJko729aIc%3D"},"gravityformsgetresponse":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=RD%2BSxH2TpKhIdZ7smvNkW7HIXZI%3D"},"gravityformshelpscout":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=Cwv1%2FLmMWA1RsAa9JCtwDMruH5o%3D"},"gravityformshighrise":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=dkaQHGefBjyO%2FCvXxL5gRt5T1R4%3D"},"gravityformshipchat":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=L4W0RYBsLgaig3gyMUDOO55fqtw%3D"},"gravityformsicontact":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=cjUNLoqUdpPMKRRiLsAYldcS0pg%3D"},"gravityformslogging":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=RjqzpfOy2%2FWog3mh9HvPC6uTh%2B4%3D"},"gravityformsmadmimi":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=c45wP%2FSuegvy4bjMJCcChUF6nlo%3D"},"gravityformsmailchimp":{"is_available":true,"version":"3.7.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_3.7.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=k3Nqm2uZWmJ9dxoIrjjcDwkrWmU%3D"},"gravityformspartialentries":{"is_available":true,"version":"1.0-beta-2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=xca8J2xcAi5IYBPIL68%2Ftn7izdI%3D"},"gravityformspaypal":{"is_available":true,"version":"2.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=D4O46AJlPY19Eq1dNSIuPzjrq2M%3D"},"gravityformspaypalexpresscheckout":{"is_available":false,"version":""},"gravityformspaypalpaymentspro":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=mnno4mFqUMi9PLplktpW4jRYP%2Bc%3D"},"gravityformspaypalpro":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=Oqdo4fEAoIYnMxBXY0ZmHI9IbW4%3D"},"gravityformspicatcha":{"is_available":false,"version":"2.0"},"gravityformspolls":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=mb3LlLm9%2BWvw%2BPRrP%2BK2yYm6PJc%3D"},"gravityformsquiz":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=sz9rokv8GeJXJygp%2BPt1qzENwCs%3D"},"gravityformssignature":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=TE1934OIkHmGcP5vVuPehb1ovCY%3D"},"gravityformsslack":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=UXgUgtFbx2f9SUQeiMgYe3%2FQXC8%3D"},"gravityformsstripe":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=%2FrfGWEe3ZhCWqlAa7NGkQr2ir%2BQ%3D"},"gravityformssurvey":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=oYMNBRd60ml3Uy%2BBjFfTaQukSRQ%3D"},"gravityformstrello":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=oKFbqnrf3PqRpL93%2F8emtjKBHIo%3D"},"gravityformstwilio":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=BtuQ4KyppV4t1nGc3vuGj%2BhW0TY%3D"},"gravityformsuserregistration":{"is_available":true,"version":"3.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=UXCLOsW%2BjL7WzeyY5ZwYL6Ynwms%3D"},"gravityformszapier":{"is_available":true,"version":"1.8","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=3yDAFIKigv8gG5ajwLXf6CDNHqw%3D"},"gravityformszohocrm":{"is_available":true,"version":"1.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1463870485&Signature=9W1JucCM9vF7K8AkbQWmeJRZ5RQ%3D"}},"is_active":"1"}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(1702, '_transient_timeout_acf_pro_get_remote_info', '1463740886', 'no'),
(1703, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:7:"5.3.8.1";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.5.2";s:4:"tags";a:38:{i:0;s:5:"5.3.7";i:1;s:5:"5.3.6";i:2;s:5:"5.3.5";i:3;s:5:"5.3.4";i:4;s:5:"5.3.3";i:5;s:5:"5.3.2";i:6;s:5:"5.3.1";i:7;s:5:"5.3.0";i:8;s:5:"5.2.9";i:9;s:5:"5.2.8";i:10;s:5:"5.2.7";i:11;s:5:"5.2.6";i:12;s:5:"5.2.5";i:13;s:5:"5.2.4";i:14;s:5:"5.2.3";i:15;s:5:"5.2.2";i:16;s:5:"5.2.1";i:17;s:5:"5.2.0";i:18;s:5:"5.1.9";i:19;s:5:"5.1.8";i:20;s:5:"5.1.7";i:21;s:5:"5.1.6";i:22;s:5:"5.1.5";i:23;s:5:"5.1.4";i:24;s:5:"5.1.3";i:25;s:5:"5.1.2";i:26;s:5:"5.1.1";i:27;s:5:"5.1.0";i:28;s:5:"5.0.9";i:29;s:5:"5.0.8";i:30;s:5:"5.0.7";i:31;s:5:"5.0.6";i:32;s:5:"5.0.5";i:33;s:5:"5.0.4";i:34;s:5:"5.0.3";i:35;s:5:"5.0.2";i:36;s:5:"5.0.1";i:37;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4463:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="https://http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="https://http://www.advancedcustomfields.com/">http://www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="https://http://www.advancedcustomfields.com/resources/#getting-started)">http://www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="https://http://www.advancedcustomfields.com/resources/#field-types)">http://www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="https://http://www.advancedcustomfields.com/resources/#functions)">http://www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="https://http://www.advancedcustomfields.com/resources/#actions)">http://www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="https://http://www.advancedcustomfields.com/resources/#filters)">http://www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="https://http://www.advancedcustomfields.com/resources/#how-to)">http://www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="https://http://www.advancedcustomfields.com/resources/#tutorials)">http://www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group\'s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:7370:"<h4> 5.3.8.1 </h4>\n<ul><li>Image field: Fixed JS bug causing errors when <code>Uploaded to post</code> library setting is checked</li><li>File field: Same as above</li><li>Gallery field: Same as above</li><li>Flexible Content field: Fixed bug preventing `get_sub_field()` from working within <code>layout_title</code> filter</li><li>Radio field: Fixed bug causing field name to change when adding <code>other</code> choice to a sub field</li></ul>\n<h4> 5.3.8 </h4>\n<ul><li>Gallery field: Added new <code>Insert</code> setting to control where new attachments are added</li><li>Radio field: Added new <code>Allow Null</code> setting</li><li>Relationship field: Added attachment mime type icons when no thumbnail is available</li><li>Core: Fixed bug causing customizer preview values from loading on newly added widgets</li><li>Core: Improved attachments location rule for future compatibility with specific mime types</li><li>Core: Fixed bug causing select2 to appear blank after duplicating a field setting</li><li>Core: Fixed bug causing PHP error on front-end plugin update check</li><li>Core: Updated title elements (h1, h2, h3) to match WP 4.5</li><li>Core: Minor fixes and improvements</li><li>Core: Fixed bug where comment fields appeared in different locations for logged in/out users</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonca</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.3.7 </h4>\n<ul><li>Options page: Added new <code>update_button</code> setting to modify update button text</li><li>Options page: Added columns support (Screen Options)</li><li>Core: Added widget preview / save compatibility with the customizer</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.3.6.1 </h4>\n<ul><li>Flexible Content field: Fixed PHP error in <code>acf/fields/flexible_content/layout_title</code> filter (when used as a sub field)</li><li>Core: Fixed bug causing `get_field()` to load from the incorrect post (when within a custom WP_Query loop)</li></ul>\n<h4> 5.3.6 </h4>\n<ul><li>Flexible Content field: Added new <code>acf/fields/flexible_content/layout_title</code> filter to customize layout title</li><li>Image field: Fixed bug where searching within media library would ignore restriction settings</li><li>File field: Same as above</li><li>Field group: Added post types to comment form location rules</li><li>Color Picker field: Added <code>color_picker_args</code> JS filter to modify wpColorPicker args</li><li>API: Improved `get_` functions to load value from the current queried object (post, user, term)</li><li>Core: Added new <code>acf/translate_field</code> filter to translate field settings text</li><li>Core: Added new <code>acf/translate_field_group</code> filter to translate field group settings text</li><li>Core: Removed <code>l10n_field</code> and <code>l10n_field_group</code> settings</li><li>Core: Fixed bug causing <code>acf/input/admin_head</code> action to run twice</li><li>Core: Added support for new WP 4.5 term edit page</li><li>Core: Moved google map and wysiwyg JS initialisation later in the page load to help speed up edit screens</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.3.5 </h4>\n<ul><li>User field: Fixed pagination bug causing missing results</li><li>Core: Added new filter <code>acf/location/screen</code> to customize location rules matching args</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Added Swiss German translation - thanks to Raphael Hüni</li></ul>\n<h4> 5.3.4 </h4>\n<ul><li>User field: Added pagination for Select2 results</li><li>Tab field: Fixed issue where no tab was active within a widget</li><li>Taxonomy field: Fixed issue where term order was lost when using <code>load_terms</code> setting</li><li>Image field: Alt tag will now update when editing/changing selected image</li><li>Field group: Removed Comic sans <code>Drag/drop</code> text (OMG)</li><li>Core: Changed button classes from <code>.acf-button</code> to <code>.button</code></li><li>Core: Fixed double `__()` issue when exporting field group with new l10n settings</li><li>Core: Removed some <code>wp_cache_delete()</code> functions to improve load speed on heavily cached websites</li><li>Core: Removed `esc_html()` from field label and added new filter <code>acf/get_field_label</code></li><li>Core: Minor fixes and improvements</li><li>API: Added new <code>honeypot</code> setting to the `acf_form()` function</li><li>Language: Added Bulgarian translation - thanks to Marin Atanasov</li><li>Language: Added Swiss German translation - thanks to Raphael Hüni</li><li>Language: Added Indonesian translation - thanks to Rio Bermano</li></ul>\n<h4> 5.3.3.2 </h4>\n<ul><li>Core: Fixed bug preventing new translation settings <code>l10n_field</code> and <code>l10n_field_group</code></li><li>Core: Fixed bug preventing plugin updates when included within theme</li><li>Core: Added `esc_html()` to field label</li></ul>\n<h4> 5.3.3.1 </h4>\n<ul><li>Tab field: Fixed bug causing issues with conditional logic</li><li>WYSIWYG field: Fixed PHP error on front end form</li></ul>\n<h4> 5.3.3 </h4>\n<ul><li>Google Maps field: Fixed bug where pasting value did not trigger auto complete</li><li>Select field: Improved Select2 search matching for special characters</li><li>Select field: Improved asset loading to allow other Select2 libraries to load first</li><li>Select field: Added compatibility for both Select2 v3 and v4</li><li>WYSIWYG field: Added new responsive images filter to the <code>acf_the_content</code> filter</li><li>oEmbed field: Added compatibility for custom oEmbed handlers</li><li>Flexible Content field: Fixed bug causing sub fields to move when duplicating layouts</li><li>Core: Added new translation settings <code>l10n</code>, <code>l10n_textdomain</code>, <code>l10n_field</code> and <code>l10n_field_group</code></li><li>Core: Improved Export to PHP feature which now uses the above translation settings</li><li>Core: Fixed PHP error preventing new field groups from loading when editing a post</li><li>Core: Added hierarchy to taxonomy terms shown in drop down elements</li><li>Core: Improved update logic to ignore plugin when included within a theme / plugin</li><li>API: Improved `acf_form()` loading efficiency when using <code>new_post</code> setting</li><li>API: Improved `add_row()` function to work when no value exists</li><li>API: Added new function `get_row_index()` to use within the `have_rows()` loop</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li><li>Language: Updated Persian translation - thanks to Kamel</li><li>Language: Updated Spanish translation - thanks to Federico Schäfer</li><li>Language: Updated Norwegian translation - thanks to Havard Grimelid</li><li>Language: Updated Swedish translation - thanks to Björn Göransson</li></ul>\n";s:14:"upgrade_notice";s:565:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://http://www.advancedcustomfields.com/resources/acfcompatibility/">http://www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(1704, '_transient_timeout_feed_7fa907073bddbc2fc2b2bb18c9dfef16', '1463740890', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1705, '_transient_feed_7fa907073bddbc2fc2b2bb18c9dfef16', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"Redux Framework";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://reduxframework.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:42:"The definitive WordPress options framework";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 25 Apr 2016 13:24:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:30:"https://wordpress.org/?v=4.5.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Theme-Check Compliant, at Long Last";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://reduxframework.com/2015/07/theme-check-compliant/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://reduxframework.com/2015/07/theme-check-compliant/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 04 Jul 2015 20:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://reduxframework.com/?p=3403";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"For a long time now, we&#8217;ve wanted Redux Framework to be Theme-Check compliant. The two factors preventing this were mainly [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Dovy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2784:"<p>For a long time now, we&#8217;ve wanted Redux Framework to be Theme-Check compliant. The two factors preventing this were mainly WP FileSystem API failure (we included some hardcoded fallbacks in place), and vendor files (other projects we utilize). Today, we are proud to announce that the most recent <a href="http://github.com/ReduxFramework/redux-framework" target="_blank">development build</a> of Redux will pass Theme-Check with flying colors!</p>\n<div class="tip-box"><span class="box-icon"> </span>And on that note, may freedom ring! Happy Independence Day America! <img src="https://s.w.org/images/core/emoji/72x72/1f609.png" alt="😉" class="wp-smiley" style="height: 1em; max-height: 1em;" /></div>\n<p>We took a hard look at all things within Redux that made Theme-Check bark like a schizophrenic dog. Honestly, we didn&#8217;t do anything horrible, we simply used direct functions rather than letting WordPress run the same functions. So, we decided to make the plunge. We shifted all file input/output to the WP Filesystem and made the changes to our Redux_Filesystem proxy class to handle our problem cases. We also removed a few URLs here, and some function names there.</p>\n<p>We also embedded some really useful custom Theme-Check checks to further assist developers in submitting their themes to marketplaces. We want you &#8211; as developers &#8211; to know exactly what you need to do to comply. We also added a custom WP.org check, to further help WP.org theme developers.</p>\n<p>Our next step is to add proper escaping to our field HTML output. Though Redux already escapes properly &#8211; since we use the WordPress settings API &#8211; we wanted to ensure you don&#8217;t have to tell your reviewers anything. We don&#8217;t want our code to be the cause of your work being flagged by marketplace reviewers. If we already escape something, we&#8217;ll add an inline comment so reviewers know what we are doing.</p>\n<p>In the end, we seek to comply. We want to ensure Redux is for for the masses and ready for any marketplace (no matter how specific the rules may be).</p>\n<h3>We Need Your Help!</h3>\n<p>Please test the <a href="http://github.com/ReduxFramework/redux-framework" target="_blank">development build</a> of Redux Framework in your own theme. Try out Theme-Check, and make sure we didn’t break anything. The sooner we have more eyes on these improvements, the sooner we’ll be able to make an official release, and the sooner we can push down some of our customizer fixes.   <img src="https://s.w.org/images/core/emoji/72x72/1f609.png" alt="😉" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<p>As always, a special thank you our developers. We hope you like Redux and that it makes your life easier.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:62:"https://reduxframework.com/2015/07/theme-check-compliant/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Updated WordPress.org Theme Requirements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://reduxframework.com/2015/04/updated-wordpress-org-theme-requirements/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:85:"https://reduxframework.com/2015/04/updated-wordpress-org-theme-requirements/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Apr 2015 21:27:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=2792";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"To all devs who develop themes on WordPress.org. There is a new requirement that will go into effect within the [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Kevin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2142:"<p>To all devs who develop <strong>themes</strong> on WordPress.org. There is a new requirement that will go into effect within the next 6 months. You can read all the details here: <a href="https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options/" target="_blank">https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options</a></p>\n<p>&nbsp;</p>\n<p>Essentially, the WordPress.org themes submission teams is mandating that theme developers ONLY use the Customizer for options.</p>\n<p>&nbsp;</p>\n<p>What does this mean for Redux users? Here are the terms:</p>\n<p>&nbsp;</p>\n<p>In 6 months time, all options MUST be customizer based for themes submitted to WP.org. Redux may be used, but only under these conditions.</p>\n<ul>\n<li>TGM to recommend Redux installed as a plugin OR follow the (instructions to embed Redux in a way that is approved by WP.org)[http://docs.reduxframework.com/core/wordpress-org-submissions/].</li>\n<li>Redux panel must be disabled, and only the `customizer_only` argument used.</li>\n<li>Only Customizer field types may be used. Any field that isn&#8217;t supported by the customizer must be coded by the developer or not used.</li>\n</ul>\n<p>&nbsp;</p>\n<p>These are the following field types that can be used in the customizer, but most cannot have advanced options.</p>\n<ul>\n<li>text</li>\n<li>checkbox</li>\n<li>radio</li>\n<li>select</li>\n<li>textarea</li>\n<li>color</li>\n<li>media</li>\n</ul>\n<p>&nbsp;</p>\n<p>Unfortunately this is beyond our control. You are welcome to voice your opinion if you feel motivated to do so here: <a href="https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options/" target="_blank">https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options</a></p>\n<p>&nbsp;</p>\n<p>It seems that any framework, aside from <a href="http://kirki.org" target="_blank">http://kirki.org</a>, should not be used in WordPress.org themes. Please voice your opinion if you have one to the WP.org team.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:81:"https://reduxframework.com/2015/04/updated-wordpress-org-theme-requirements/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Happy Holidays";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"https://reduxframework.com/2014/12/happy-holidays/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://reduxframework.com/2014/12/happy-holidays/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Dec 2014 09:26:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=2093";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Holy cow, it&#8217;s already the end of the year! With no small amount of help from our incredible community, we&#8217;ve [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Team Redux";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:504:"<p><span class="drop-caps">H</span>oly cow, it&#8217;s already the end of the year! With no small amount of help from our incredible community, we&#8217;ve managed to make Redux the definitive options framework for 2014, and we&#8217;re still just getting started! In fact, we&#8217;ve got some big changes coming in 2015 that are going to blow your mind! So buckle up and stay tuned&#8230; 2015 is going to be the Year of Redux!</p>\n<p>Happy Holidays from Team Redux, and have a fantastic new year!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://reduxframework.com/2014/12/happy-holidays/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Redux and SASS";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://reduxframework.com/2014/12/redux-sass/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:55:"https://reduxframework.com/2014/12/redux-sass/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 17 Dec 2014 05:42:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"sass";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=2070";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:141:"Beginning with Redux Framework version 3.3.9.22, we&#8217;ve removed all LESS files from the Redux core and replaced them with SCSS [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Kevin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4662:"<p><span class="drop-caps">B</span>eginning with Redux Framework version 3.3.9.22, we&#8217;ve removed all <a href="http://en.wikipedia.org/wiki/Less_%28stylesheet_language%29" target="_blank">LESS</a> files from the Redux core and replaced them with <a href="http://en.wikipedia.org/wiki/Sass_%28stylesheet_language%29" target="_blank">SCSS</a> (Sassy CSS) files.</p>\n<p>If you&#8217;re wondering what this means, please use the provided links which will open information pages in new windows.  This article won&#8217;t cover the finer points and debates between SASS and LESS.  That&#8217;s fodder for a completely different article.  <img src="https://s.w.org/images/core/emoji/72x72/1f642.png" alt="🙂" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<p>By default Redux now compiles all active field and extension CSS into a single file using the <a href="http://en.wikipedia.org/wiki/Sass_%28stylesheet_language%29" target="_blank">SASS</a> (<b>S</b>yntactically <b>A</b>wesome <b>S</b>tyle<b>s</b>heets) compiler.  When we say &#8216;active&#8217; fields, we mean only fields actually in use.  This, in theory, should speed things up a bit not only be combining only the required CSS into a central file, but by eliminating the need for the enqueuing of multiple CSS files.</p>\n<p>We&#8217;re asking all the Redux aficionados out there to download the latest Redux version for our Github and give the new code a spin.  Should glitches or bugs be found, please report them to us.  We&#8217;d like to get this new code base ironed out for official release by the new year.</p>\n<p>There&#8217;s nothing you need to do special to test out the new code.  Download, install and go!  That said, we&#8217;ve included a new argument array within Redux to deal with specific settings for the SASS compiler.  Consider the following:</p>\n<div id="wpshdo_1" class="wp-synhighlighter-outer"><div id="wpshdt_1" class="wp-synhighlighter-expanded"><table border="0" width="100%"><tr><td align="left" width="80%"><a name="#codesyntax_1"></a><a id="wpshat_1" class="wp-synhighlighter-title" href="#codesyntax_1"  onClick="javascript:wpsh_toggleBlock(1)" title="Click to show/hide code block">Source code</a></td><td align="right"><a href="#codesyntax_1" onClick="javascript:wpsh_code(1)" title="Show code only"><img border="0" style="border: 0 none" src="https://reduxframework.com/wp-content/plugins/wp-synhighlight/themes/default/images/code.png" /></a>&nbsp;<a href="#codesyntax_1" onClick="javascript:wpsh_print(1)" title="Print code"><img border="0" style="border: 0 none" src="https://reduxframework.com/wp-content/plugins/wp-synhighlight/themes/default/images/printer.png" /></a>&nbsp;<a href="https://reduxframework.com/wp-content/plugins/wp-synhighlight/About.html" target="_blank" title="Show plugin information"><img border="0" style="border: 0 none" src="https://reduxframework.com/wp-content/plugins/wp-synhighlight/themes/default/images/info.gif" /></a>&nbsp;</td></tr></table></div><div id="wpshdi_1" class="wp-synhighlighter-inner" style="display: block;"><pre class="php" style="font-family:monospace;"><span class="st_h">\'sass\'</span> <span class="sy0">=&gt;</span> <a href="http://www.php.net/array"><span class="kw3">array</span></a> <span class="br0">&#40;</span>\n    <span class="st_h">\'enabled\'</span>     <span class="sy0">=&gt;</span> <span class="kw4">true</span><span class="sy0">,</span>\n    <span class="st_h">\'page_output\'</span> <span class="sy0">=&gt;</span> <span class="kw4">false</span>\n<span class="br0">&#41;</span><span class="sy0">,</span></pre></div></div>\n<p>These are the defaults set in the Redux core, and argument you could (but don&#8217;t need to) add to the arguments array in your Redux configuration file (within the setArguments() function).</p>\n<p>The enabled argument enabled or disables the SASS compiler.  We at Team Redux enjoy giving our devs the option to enable or disable features as desired.  Setting this argument to false will disable the SASS compiler.  All CSS will then be enqueued separately, just as we&#8217;ve done for so long before adding the SASS compiler option.</p>\n<p>The page_output determines where the SASS compiler output is place.  By default, this option is set to false.  This mean all CSS output is placed into a singular file and placed in the WordPress upload folder.  Setting this argument to true will output the SASS compiled CSS directly into the page itself, in a style tag.</p>\n<p>We here as Team Redux hope you enjoy the new benefits of the SASS compiler in our ever evolving options framework.  Please feel free to leave your comments below!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:51:"https://reduxframework.com/2014/12/redux-sass/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"Sometimes Standards Don’t Always Work – Redux 3.3.4 Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://reduxframework.com/2014/07/sometimes-standards-dont-always-work/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"https://reduxframework.com/2014/07/sometimes-standards-dont-always-work/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Jul 2014 00:35:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=1546";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"When we released Redux 3.3.0 on June 8th, 2014, we decided to follow a standard as per the suggestion of [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Dovy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1894:"<p>When we released Redux 3.3.0 on June 8th, 2014, we decided to follow a standard as per the suggestion of Otto.</p>\n<p>He wrote, “If you need to write files to be included in the page, like stylesheets, then you should make your own folder under <code>/wp-content</code>, not under <code>/wp-content/uploads</code>. The uploads directory should be used strictly for media files and downloads and other things uploaded through the various wp_upload functions.” <a href="http://wordpress.stackexchange.com/questions/124900/using-wp-filesystem-in-plugins" target="_blank">http://wordpress.stackexchange.com/questions/124900/using-wp-filesystem-in-plugins</a></p>\n<p>Believing his advice to be sound, we followed his suggestion. It caused more misery to devs than not. The lingering issue is simple, too many users install WordPress incorrectly. Often the ONLY directory that is writable is <code>/uploads/</code>. Combined that with the file owner of WordPress and the theme/plugin directories often being different, and the 3.3.0 changes have been a disaster in the making.</p>\n<p>As the Redux 3.3.0 code base spread out to our devs, and consequently their users, we received TONS of issues. We’ve worked to resolve each of them, but the fact remains that Otto&#8217;s advice is flawed, and users don’t know how to fix the problems is causes.</p>\n<p>We implemented this great new filesystem code believing it was the correct way to handle local storage, but it will never be used again. We’re writing to our proprietary directory the uploads directory from here on out.</p>\n<p>If anyone wishes to contribute code that works with Otto&#8217;s model, that actually works we would consider switching back. But for now, we choose function over opinion. <img src="https://s.w.org/images/core/emoji/72x72/1f61b.png" alt="😛" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"https://reduxframework.com/2014/07/sometimes-standards-dont-always-work/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Reduce Your Panel Load Time by 80%";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://reduxframework.com/2014/06/load-time-reduced-by-80/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:68:"https://reduxframework.com/2014/06/load-time-reduced-by-80/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 Jun 2014 01:08:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=1261";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Okay, so it&#8217;s only been a few days since our last release, and already we have another. We couldn&#8217;t wait, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Dovy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2762:"<h3>Okay, so it&#8217;s only been a few days since our last release, and already we have another. We couldn&#8217;t wait, because, this is <strong><em>big</em></strong>! <span style="text-decoration: underline;">We&#8217;ve shaved off the panel load time by up to 80%</span>.</h3>\n<h4>Yeah, you read that correctly. <strong>80 PERCENT!</strong></h4>\n<h6>This means &#8211; for example &#8211; a large option panel of a popular theme that used to take <span class="highlight1">6.8 seconds</span> to load has been reduced to <span class="highlight2">1.47 seconds</span>. We reduced load time for this theme&#8217;s option panel by <strong><span class="highlight2">5.33 seconds</span> </strong> alone!</h6>\n<p>We realized speed was an issue and we went through every field in a concerted effort to determine which ones slowed the panel down the most, we found out that:</p>\n<ul>\n<li>It wasn&#8217;t in the PHP, we optimized all of that with the last release.</li>\n<li>The WordPress color picker in and of itself slows a panel down by up to <span style="text-decoration: underline;">2 seconds</span>!</li>\n<li>The Editor, Ace Editor, and Slider fields slowed the panel down by <span style="text-decoration: underline;">.8 &#8211; 1.2 seconds each</span>.</li>\n</ul>\n<h4>So how did we fix it? By initializing fields on &#8220;demand&#8221;.</h4>\n<p>The problem centered around too much JavaScript begin run on load. Now, with these latest improvements &#8211; the only time a field&#8217;s javascript loads is when it&#8217;s visible. Put another way, what you see on screen is all that&#8217;s affecting the DOM resources. Redux is literally now among &#8211; if not &#8211; one of the fastest frameworks out there.</p>\n<h5>Give it a try. You need only upgrade to see a noticeable difference. Everyone who has tried it, <strong>everyone</strong>, has noticed a difference.</h5>\n<h4>If you like what you see, please do <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&#038;hosted_button_id=MMFMHWUPKHKPW" target="_blank">donate</a>. These improvements required a substantial amount of effort, with no pay or compensation. <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&#038;hosted_button_id=MMFMHWUPKHKPW" target="_blank">A recurring (monthly) subscription of only $10</a> is all it takes for us to keep these improvements coming. Help support the thousands of developer hours that have gone into Redux. You help us, and we&#8217;ll keep making your project development that much easier. </h4>\n<p><center><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&#038;hosted_button_id=MMFMHWUPKHKPW" target="_blank"><img style="height: 55px;" src="/wp-content/uploads/2014/02/Donate-Button.png" alt="Donate Today" /></a></center></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:64:"https://reduxframework.com/2014/06/load-time-reduced-by-80/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"Redux Framework 3.3.0 Released – “Need for Speed”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://reduxframework.com/2014/06/redux-framework-3-3-0-released-need-speed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://reduxframework.com/2014/06/redux-framework-3-3-0-released-need-speed/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 08 Jun 2014 23:20:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=1232";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"It&#8217;s with great pleasure that we introduce the release of Redux 3.3.0 A.K.A. &#8220;Need for Speed.&#8221; We began with a [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Dovy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1834:"<p>It&#8217;s with great pleasure that we introduce the release of Redux 3.3.0 A.K.A. &#8220;Need for Speed.&#8221;</p>\n<p>We began with a rewrite of our typography field, specifically the way in which Google Fonts are loaded. There are dozens upon dozens of them! When devs add multiple Typography fields in their panel, the user experience (load time) becomes quite poor. We&#8217;re pleased to say this issue has been solved with this release. Thanks to the efforts of our main man Kevin, the typography field has be reworked to be much more efficient.</p>\n<p>In addition, we&#8217;ve found a many bugs, fixed some core design issues, added feature requested, and taken Redux to yet another level of stability, all while improving the overall feature set.</p>\n<p>To tie into all these improvements &#8211; and if you didn&#8217;t already know &#8211; the Redux Builder now gives you the option of creating custom builds of Redux with only the fields you specify! The building process has become much more modular, allowing us to providing these great new tools to you so you may lower the footprint of your embedded Redux. <img src="https://s.w.org/images/core/emoji/72x72/1f609.png" alt="😉" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<p>As it currently stands, Redux 3.3.0 is the MOST STABLE version of Redux ever. The issues reported to us have become very, very basic. More often than not, we see more feature requests than bugs.</p>\n<p>Now is the time to upgrade Redux Framework your themes. Your users will thank you. We thank you.</p>\n<p>It&#8217;s been a great year thus far, and we look forward to more.</p>\n<p>Finally, in case you&#8217;ve not heard or seen it, you REALLY need to check out http://wpdemo.io, especially if you&#8217;re a developer and want to show-off what your product can do.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://reduxframework.com/2014/06/redux-framework-3-3-0-released-need-speed/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"A Home Run – The Redux Builder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://reduxframework.com/2014/05/redux-builder/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://reduxframework.com/2014/05/redux-builder/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 May 2014 21:22:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"redux builder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"redux framework";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://reduxframework.com/?p=1134";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"You know you’ve hit a home run when your business&#8217;s activity doubles within two months and support issues are reduce [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Dovy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2524:"<p class="p1"><span class="s1">You know you’ve hit a home run when your business&#8217;s activity doubles within two months and support issues are reduce by nearly 1/3.  That’s what has happened with Redux since we launched the <a title="Redux Generator" href="http://build.reduxframework.com" target="_blank">Redux Builder</a>.</span></p>\n<p class="p1">In early March, I conceived the idea to design a site that would auto-generate a Redux<br />\nbuild.  Actually, I wanted to build a fully-fledged panel builder like Option Tree, but with the sheer amount of options available with Redux, the time required would be intense&#8230;and then some.  Instead, I considered building a boilerplate generator for themes.  And what better theme than the ever powerful <a title="_s" href="http://underscores.me" target="_blank">_s</a> by <a title="Automattic" href="http://automattic.com/" target="_blank">Automattic</a>?  I found their generator code and went to town, including a TGM integration, and a slew of Redux arguments.</p>\n<p class="p1">Today, I am extremely pleased to announce we took the project it a step further.  We organized the arguments, gave descriptions, and links for each to our docs site.  We also made it so one could easily export to an admin folder instead of a theme.  This comes in handy for use in existing products and/or plugins.  Lastly, we&#8217;ve now made every Redux field completely independent.  As a result, you can generate a custom build of Redux Framework with your export!</p>\n<p class="p1"> Yes, you read that correctly!  You can make a custom Redux Framework build!  Since one of the biggest complaints about Redux has been its size, weighing in at 6mb for all (34+) fields, the Framework tends to be quite heavy.  Now, that&#8217;s a thing of the past.</p>\n<p class="p1">We’re really excited about the new version of the Redux Builder.  Major props to team member @kprovance for making Redux fields completely modular.</p>\n<p>If you haven’t tried the builder, you SHOULD.  It’s free.  It will save you time.  Oh, and it’s so very choice.</p>\n<h3 class="p1" style="text-align: center"><a title="Redux Generator" href="http://build.reduxframework.com" target="_blank">http://build.reduxframework.com</a></h3>\n<p>&nbsp;</p>\n<p class="p1">Just a gentle reminder, Redux lives by donations and our extensions.  So if you like the generator, please consider donating a small amount to the project.  You support us, and we&#8217;ll keep making cool things.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://reduxframework.com/2014/05/redux-builder/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"20";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"February Webinar: In Review";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://reduxframework.com/2014/02/february-webinar-review/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:68:"https://reduxframework.com/2014/02/february-webinar-review/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Feb 2014 01:09:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"webinar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://reduxframework.com/?p=494";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Those of us at Team Redux would like to extend our sincerest thanks to our users for making this last [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Team Redux";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2188:"<p>Those of us at Team Redux would like to extend our sincerest thanks to our users for making this last webinar an unprecedented success! As we began the process of writing out the basic structure for the webinar, we had no idea what we were in for. We didn&#8217;t know how many people would show up or even if our users wanted to hear what we had to say. Thankfully, not only did a shocking number of people show up, but the webinar lasted an incredible two full hours!</p>\n<p>&nbsp;</p>\n<p>Beyond the knowledge we hoped to impart to our users, we learned a very important lesson through the webinar as well. We learned that our users <em>want</em> to communicate with us, above and beyond the communication made possible by our Github issue tracker. As such, we have made a decision. Going forward, we will be holding a monthly webinar to give you a view into our world, and us a view into yours! Beyond that, we will be making steps towards a more active blog, and we&#8217;ve got a few other surprises in store for you as well!</p>\n<p>&nbsp;</p>\n<p>Not everyone managed to make it to the webinar&#8230; but that&#8217;s alright, we still love you! Want to see what you&#8217;ve missed? Great! We&#8217;d love to show you! As such, we&#8217;ve made the entire webinar available on <a href="http://www.youtube.com/watch?v=ymMpeBaaLXI" target="_blank">YouTube</a>! Want a copy of the presentation itself? That&#8217;s <a href="http://reduxframework.com/?ddownload=498">available too</a>!</p>\n<p>&nbsp;</p>\n<p><strong>NOTE:</strong> Originally, we had intended this post to include a complete list of the questions asked during the webinar Q&#038;A session. However, given the sheer length of the list, I have decided to split it into its own page which will be kept updated with each new webinar. The list will be posted shortly.</p>\n<p>&nbsp;</p>\n<div class="video-wrap"><p><iframe class=\'youtube-player\' type=\'text/html\' width=\'1032\' height=\'611\' src=\'https://www.youtube.com/embed/ymMpeBaaLXI?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>\n</div>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:64:"https://reduxframework.com/2014/02/february-webinar-review/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:51:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Redux/Simple Options Merger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://reduxframework.com/2013/09/reduxsimple-options-merger/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:70:"https://reduxframework.com/2013/09/reduxsimple-options-merger/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 04 Sep 2013 07:52:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:8:"Newswire";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"merger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:14:"Simple Options";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:3:"SOF";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://reduxframework.com/?p=183";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"We&#8217;re proud to announce that Redux Framework has merged with the only other NHP fork we&#8217;ve found that&#8217;s worthwhile, Simple [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Ghost1227";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1379:"<p>We&#8217;re proud to announce that Redux Framework has merged with the only other NHP fork we&#8217;ve found that&#8217;s worthwhile, <a href="http://simpleoptions.simplerain.com/wp-admin">Simple Options Framework</a>!</p>\n<p><span id="more-183"></span></p>\n<p></p>\n<p>I&#8217;m the first to admit, I&#8217;m not the best UI designer in the world&#8230; I&#8217;m more of a backend/plugin developer. My counterpart from Simple Options Framework is the perfect supplement to my weaknesses, preferring to focus on the user experience over the actual codebase. However, he&#8217;s got some really great enhancements he&#8217;s added to the old NHP framework! As such, after a lengthy discussion, we&#8217;ve decided to combine our talents to bring you an even better, more powerful options framework!</p>\n<p></p>\n<p>So what does this mean for you&#8230;</p>\n<p></p>\n<p>For the moment, nothing other than the Redux core development team has doubled. With the upcoming release of Redux Framework v3.0, we&#8217;re pulling out all the stops! We&#8217;re migrating to an organizational repo, rewriting the Redux documentation from the ground up, adding a slew of new features, cleaning up the codebase, and bringing you the most revolutionary darned framework since, well&#8230; the first release of NHP!</p>\n<p></p>\n<p>Stay tuned for more exciting news from the world of Redux!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:67:"https://reduxframework.com/2013/09/reduxsimple-options-merger/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://reduxframework.com/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:15:{s:6:"server";s:11:"nginx/1.2.1";s:4:"date";s:29:"Thu, 19 May 2016 22:41:30 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:12:"x-powered-by";s:10:"HHVM/3.7.0";s:16:"content-encoding";s:4:"gzip";s:4:"link";a:2:{i:0;s:63:"<https://reduxframework.com/wp-json/>; rel="https://api.w.org/"";i:1;s:76:"<https://reduxframework.com/wp-json>; rel="https://github.com/WP-API/WP-API"";}s:13:"last-modified";s:29:"Mon, 25 Apr 2016 13:24:37 GMT";s:4:"etag";s:34:""86ec90e21eaf5e9a4801d943fca5b7a3"";s:6:"pragma";s:8:"no-cache";s:4:"vary";s:15:"Accept-Encoding";s:12:"x-robots-tag";s:15:"noindex, follow";s:13:"cache-control";s:62:"no-store, no-cache, must-revalidate, post-check=0, pre-check=0";s:7:"expires";s:29:"Thu, 19 Nov 1981 08:52:00 GMT";s:10:"set-cookie";a:2:{i:0;s:50:"PHPSESSID=defca5e77750a0f4eb9a4a51146bb8bf; path=/";i:1;s:38:"wpfront-notification-bar-landingpage=1";}}s:5:"build";s:14:"20160113172551";}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1706, '_transient_timeout_feed_mod_7fa907073bddbc2fc2b2bb18c9dfef16', '1463740890', 'no'),
(1707, '_transient_feed_mod_7fa907073bddbc2fc2b2bb18c9dfef16', '1463697690', 'no'),
(1709, 'db_upgraded', '', 'yes'),
(1710, '_transient_doing_cron', '1463698082.6854119300842285156250', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_wp_attached_file', '2016/01/ac-logo.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:349;s:6:"height";i:28;s:4:"file";s:19:"2016/01/ac-logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ac-logo-150x28.png";s:5:"width";i:150;s:6:"height";i:28;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"ac-logo-300x24.png";s:5:"width";i:300;s:6:"height";i:24;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1452481779:1'),
(44, 12, '_edit_last', '1'),
(45, 12, '_edit_lock', '1452483543:1'),
(46, 14, '_edit_last', '1'),
(47, 14, '_edit_lock', '1457553669:1'),
(48, 16, '_menu_item_type', 'post_type'),
(49, 16, '_menu_item_menu_item_parent', '0'),
(50, 16, '_menu_item_object_id', '14'),
(51, 16, '_menu_item_object', 'page'),
(52, 16, '_menu_item_target', ''),
(53, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 16, '_menu_item_xfn', ''),
(55, 16, '_menu_item_url', ''),
(86, 28, '_edit_last', '1'),
(87, 28, '_wp_old_slug', '5-things-every-actors-website-must-have'),
(88, 28, '_inbound_impressions_count', '27'),
(89, 28, '_thumbnail_id', '195'),
(90, 28, '_hw_|template=base|_template', ''),
(91, 28, '_hw_hide-title', ''),
(92, 28, '_hw_alternate-title', ''),
(93, 28, '_hw_css-class', ''),
(94, 28, '_hw_post-thumbnail_position', ''),
(95, 28, '_hw_seo_title', ''),
(96, 28, '_hw_seo_description', ''),
(97, 28, '_hw_seo_noindex', 'false'),
(98, 28, '_hw_seo_nofollow', 'false'),
(99, 28, '_hw_seo_noarchive', 'false'),
(100, 28, '_hw_seo_nosnippet', 'false'),
(101, 28, '_hw_seo_noodp', 'false'),
(102, 28, '_hw_seo_noydir', 'false'),
(103, 28, '_hw_seo_redirect-301', ''),
(104, 135, '_edit_last', '1'),
(105, 135, '_hw_|template=base|_template', ''),
(106, 135, '_hw_hide-title', ''),
(107, 135, '_hw_alternate-title', ''),
(108, 135, '_hw_css-class', ''),
(109, 135, '_hw_post-thumbnail_position', ''),
(110, 135, '_hw_seo_title', ''),
(111, 135, '_hw_seo_description', ''),
(112, 135, '_hw_seo_noindex', 'false'),
(113, 135, '_hw_seo_nofollow', 'false'),
(114, 135, '_hw_seo_noarchive', 'false'),
(115, 135, '_hw_seo_nosnippet', 'false'),
(116, 135, '_hw_seo_noodp', 'false'),
(117, 135, '_hw_seo_noydir', 'false'),
(118, 135, '_hw_seo_redirect-301', ''),
(119, 135, '_inbound_impressions_count', '28'),
(120, 135, '_thumbnail_id', '228'),
(121, 188, '_edit_last', '1'),
(122, 188, '_hw_|template=base|_template', ''),
(123, 188, '_hw_hide-title', ''),
(124, 188, '_hw_alternate-title', ''),
(125, 188, '_hw_css-class', ''),
(126, 188, '_hw_post-thumbnail_position', ''),
(127, 188, '_hw_seo_title', ''),
(128, 188, '_hw_seo_description', ''),
(129, 188, '_hw_seo_noindex', 'false'),
(130, 188, '_hw_seo_nofollow', 'false'),
(131, 188, '_hw_seo_noarchive', 'false'),
(132, 188, '_hw_seo_nosnippet', 'false'),
(133, 188, '_hw_seo_noodp', 'false'),
(134, 188, '_hw_seo_noydir', 'false'),
(135, 188, '_hw_seo_redirect-301', ''),
(136, 188, '_inbound_impressions_count', '24'),
(137, 188, '_thumbnail_id', '231'),
(138, 198, '_edit_last', '1'),
(139, 198, '_hw_|template=base|_template', ''),
(140, 198, '_hw_hide-title', ''),
(141, 198, '_hw_alternate-title', ''),
(142, 198, '_hw_css-class', ''),
(143, 198, '_hw_post-thumbnail_position', ''),
(144, 198, '_hw_seo_title', ''),
(145, 198, '_hw_seo_description', ''),
(146, 198, '_hw_seo_noindex', 'false'),
(147, 198, '_hw_seo_nofollow', 'false'),
(148, 198, '_hw_seo_noarchive', 'false'),
(149, 198, '_hw_seo_nosnippet', 'false'),
(150, 198, '_hw_seo_noodp', 'false'),
(151, 198, '_hw_seo_noydir', 'false'),
(152, 198, '_hw_seo_redirect-301', ''),
(153, 198, '_inbound_impressions_count', '20'),
(154, 198, '_thumbnail_id', '233'),
(155, 212, '_edit_last', '1'),
(156, 212, '_hw_|template=base|_template', ''),
(157, 212, '_hw_hide-title', ''),
(158, 212, '_hw_alternate-title', ''),
(159, 212, '_hw_css-class', ''),
(160, 212, '_hw_post-thumbnail_position', ''),
(161, 212, '_hw_seo_title', ''),
(162, 212, '_hw_seo_description', ''),
(163, 212, '_hw_seo_noindex', 'false'),
(164, 212, '_hw_seo_nofollow', 'false'),
(165, 212, '_hw_seo_noarchive', 'false'),
(166, 212, '_hw_seo_nosnippet', 'false'),
(167, 212, '_hw_seo_noodp', 'false'),
(168, 212, '_hw_seo_noydir', 'false') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(169, 212, '_hw_seo_redirect-301', ''),
(170, 212, '_thumbnail_id', '235'),
(171, 212, '_inbound_impressions_count', '6'),
(172, 212, '_inbound_conversions_count', '0'),
(173, 227, '_hw_seo_noydir', 'false'),
(174, 227, '_hw_seo_noodp', 'false'),
(175, 227, '_hw_seo_nosnippet', 'false'),
(176, 227, '_hw_seo_noarchive', 'false'),
(177, 227, '_hw_seo_nofollow', 'false'),
(178, 227, '_hw_seo_noindex', 'false'),
(179, 227, '_hw_seo_description', ''),
(180, 227, '_hw_seo_title', ''),
(181, 227, '_hw_post-thumbnail_position', ''),
(182, 227, '_hw_css-class', ''),
(183, 227, '_hw_alternate-title', ''),
(184, 227, '_edit_last', '1'),
(185, 227, '_hw_|template=base|_template', ''),
(186, 227, '_hw_hide-title', ''),
(187, 227, '_hw_seo_redirect-301', ''),
(188, 227, '_oembed_f2c8be302cddf6683a43110c96340a10', '{{unknown}}'),
(189, 227, '_thumbnail_id', '230'),
(190, 227, '_inbound_impressions_count', '9'),
(191, 227, '_inbound_conversions_count', '0'),
(192, 135, '_edit_lock', '1457553543:1'),
(193, 228, '_wp_attached_file', '2015/08/AC-dos-and-donts-of-a.png'),
(194, 228, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:540;s:6:"height";i:343;s:4:"file";s:33:"2015/08/AC-dos-and-donts-of-a.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"AC-dos-and-donts-of-a-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"AC-dos-and-donts-of-a-300x191.png";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:9:"image/png";}s:13:"blog-featured";a:4:{s:4:"file";s:33:"AC-dos-and-donts-of-a-540x250.png";s:5:"width";i:540;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(197, 188, '_edit_lock', '1457553532:1'),
(198, 231, '_wp_attached_file', '2015/09/AC-image-optimization.jpg'),
(199, 231, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:33:"2015/09/AC-image-optimization.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"AC-image-optimization-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"AC-image-optimization-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:13:"blog-featured";a:4:{s:4:"file";s:33:"AC-image-optimization-650x250.jpg";s:5:"width";i:650;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(202, 198, '_edit_lock', '1457553520:1'),
(203, 233, '_wp_attached_file', '2015/09/AC-how-to-format-your-acting-1.jpg'),
(204, 233, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:682;s:6:"height";i:350;s:4:"file";s:42:"2015/09/AC-how-to-format-your-acting-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"AC-how-to-format-your-acting-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"AC-how-to-format-your-acting-1-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:13:"blog-featured";a:4:{s:4:"file";s:42:"AC-how-to-format-your-acting-1-682x250.jpg";s:5:"width";i:682;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 212, '_edit_lock', '1457553515:1'),
(208, 235, '_wp_attached_file', '2015/09/AC-how-to-format-your-acting-2-fig1.jpg'),
(209, 235, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:158;s:6:"height";i:214;s:4:"file";s:47:"2015/09/AC-how-to-format-your-acting-2-fig1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(210, 236, '_wp_attached_file', '2015/09/AC-how-to-format-your-acting-2-fig2.jpg'),
(211, 236, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:241;s:6:"height";i:213;s:4:"file";s:47:"2015/09/AC-how-to-format-your-acting-2-fig2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(212, 237, '_wp_attached_file', '2015/09/AC-how-to-format-your-acting-2-fig3.jpg'),
(213, 237, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:509;s:6:"height";i:122;s:4:"file";s:47:"2015/09/AC-how-to-format-your-acting-2-fig3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig3-150x122.jpg";s:5:"width";i:150;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"AC-how-to-format-your-acting-2-fig3-300x72.jpg";s:5:"width";i:300;s:6:"height";i:72;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(214, 239, '_wp_attached_file', '2015/09/AC-how-to-format-your-acting-2-fig4.png'),
(215, 239, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:850;s:6:"height";i:344;s:4:"file";s:47:"2015/09/AC-how-to-format-your-acting-2-fig4.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig4-300x121.png";s:5:"width";i:300;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig4-768x311.png";s:5:"width";i:768;s:6:"height";i:311;s:9:"mime-type";s:9:"image/png";}s:13:"blog-featured";a:4:{s:4:"file";s:47:"AC-how-to-format-your-acting-2-fig4-750x250.png";s:5:"width";i:750;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(216, 240, '_wp_attached_file', '2015/09/AC-how-to-format-your-acting-2-fig5.jpg'),
(217, 240, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:127;s:6:"height";i:127;s:4:"file";s:47:"2015/09/AC-how-to-format-your-acting-2-fig5.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(220, 227, '_edit_lock', '1457553510:1'),
(221, 242, '_wp_attached_file', '2015/09/AC-to-blog-or-not-to.jpg'),
(222, 242, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:682;s:6:"height";i:350;s:4:"file";s:32:"2015/09/AC-to-blog-or-not-to.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"AC-to-blog-or-not-to-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"AC-to-blog-or-not-to-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:13:"blog-featured";a:4:{s:4:"file";s:32:"AC-to-blog-or-not-to-682x250.jpg";s:5:"width";i:682;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 19, '_edit_lock', '1459761049:1'),
(228, 246, '_edit_lock', '1457307941:1'),
(229, 246, '_edit_last', '1'),
(230, 242, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:2.627851864316463892379260869347490370273590087890625;s:5:"bytes";i:3748;s:11:"size_before";i:142626;s:10:"size_after";i:138878;s:4:"time";d:0.70999999999999996447286321199499070644378662109375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:6.70999999999999996447286321199499070644378662109375;s:5:"bytes";i:565;s:11:"size_before";i:8421;s:10:"size_after";i:7856;s:4:"time";d:0.5;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.37000000000000010658141036401502788066864013671875;s:5:"bytes";i:1010;s:11:"size_before";i:15849;s:10:"size_after";i:14839;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:13:"blog-featured";O:8:"stdClass":5:{s:7:"percent";d:5.42999999999999971578290569595992565155029296875;s:5:"bytes";i:2173;s:11:"size_before";i:40048;s:10:"size_after";i:37875;s:4:"time";d:0.08000000000000000166533453693773481063544750213623046875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:78308;s:10:"size_after";i:78308;s:4:"time";d:0.1000000000000000055511151231257827021181583404541015625;}}}'),
(231, 240, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:9866;s:10:"size_after";i:9866;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:1:{s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:9866;s:10:"size_after";i:9866;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}}}'),
(232, 239, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:8.695184481336728055111962021328508853912353515625;s:5:"bytes";i:33950;s:11:"size_before";i:390446;s:10:"size_after";i:356496;s:4:"time";d:2.399999999999999911182158029987476766109466552734375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:15.53999999999999914734871708787977695465087890625;s:5:"bytes";i:2324;s:11:"size_before";i:14952;s:10:"size_after";i:12628;s:4:"time";d:0.1499999999999999944488848768742172978818416595458984375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:14.839999999999999857891452847979962825775146484375;s:5:"bytes";i:3541;s:11:"size_before";i:23865;s:10:"size_after";i:20324;s:4:"time";d:0.1000000000000000055511151231257827021181583404541015625;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:13.2400000000000002131628207280300557613372802734375;s:5:"bytes";i:18781;s:11:"size_before";i:141852;s:10:"size_after";i:123071;s:4:"time";d:0.419999999999999984456877655247808434069156646728515625;}s:13:"blog-featured";O:8:"stdClass":5:{s:7:"percent";d:8.730000000000000426325641456060111522674560546875;s:5:"bytes";i:8667;s:11:"size_before";i:99278;s:10:"size_after";i:90611;s:4:"time";d:0.320000000000000006661338147750939242541790008544921875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:0.57999999999999996003197111349436454474925994873046875;s:5:"bytes";i:637;s:11:"size_before";i:110499;s:10:"size_after";i:109862;s:4:"time";d:1.4099999999999999200639422269887290894985198974609375;}}}'),
(233, 237, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:12.2365773588901820545515874982811510562896728515625;s:5:"bytes";i:2311;s:11:"size_before";i:18886;s:10:"size_after";i:16575;s:4:"time";d:0.0899999999999999966693309261245303787291049957275390625;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:3:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:33.9200000000000017053025658242404460906982421875;s:5:"bytes";i:1135;s:11:"size_before";i:3346;s:10:"size_after";i:2211;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:23.64999999999999857891452847979962825775146484375;s:5:"bytes";i:1176;s:11:"size_before";i:4973;s:10:"size_after";i:3797;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:10567;s:10:"size_after";i:10567;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}}}'),
(234, 236, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.60625804041996911308842754806391894817352294921875;s:5:"bytes";i:869;s:11:"size_before";i:24097;s:10:"size_after";i:23228;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:10.9900000000000002131628207280300557613372802734375;s:5:"bytes";i:869;s:11:"size_before";i:7909;s:10:"size_after";i:7040;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:16188;s:10:"size_after";i:16188;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}}}'),
(235, 235, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.232132481115630895374124520458281040191650390625;s:5:"bytes";i:890;s:11:"size_before";i:27536;s:10:"size_after";i:26646;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:9.160000000000000142108547152020037174224853515625;s:5:"bytes";i:890;s:11:"size_before";i:9711;s:10:"size_after";i:8821;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:17825;s:10:"size_after";i:17825;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}}}'),
(236, 233, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.171855510017055568283694810816086828708648681640625;s:5:"bytes";i:3738;s:11:"size_before";i:117849;s:10:"size_after";i:114111;s:4:"time";d:0.1000000000000000055511151231257827021181583404541015625;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:5.980000000000000426325641456060111522674560546875;s:5:"bytes";i:259;s:11:"size_before";i:4330;s:10:"size_after";i:4071;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:5.62999999999999989341858963598497211933135986328125;s:5:"bytes";i:592;s:11:"size_before";i:10509;s:10:"size_after";i:9917;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:13:"blog-featured";O:8:"stdClass":5:{s:7:"percent";d:7.92999999999999971578290569595992565155029296875;s:5:"bytes";i:2887;s:11:"size_before";i:36420;s:10:"size_after";i:33533;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:66590;s:10:"size_after";i:66590;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}}}'),
(237, 231, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.498132637151455615054373993189074099063873291015625;s:5:"bytes";i:3859;s:11:"size_before";i:110316;s:10:"size_after";i:106457;s:4:"time";d:0.220000000000000028865798640254070051014423370361328125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:6.54000000000000003552713678800500929355621337890625;s:5:"bytes";i:369;s:11:"size_before";i:5644;s:10:"size_after";i:5275;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.269999999999999573674358543939888477325439453125;s:5:"bytes";i:752;s:11:"size_before";i:11998;s:10:"size_after";i:11246;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:13:"blog-featured";O:8:"stdClass":5:{s:7:"percent";d:8.5;s:5:"bytes";i:2738;s:11:"size_before";i:32202;s:10:"size_after";i:29464;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:60472;s:10:"size_after";i:60472;s:4:"time";d:0.14000000000000001332267629550187848508358001708984375;}}}'),
(238, 228, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:1.83954285331956146620768777211196720600128173828125;s:5:"bytes";i:8798;s:11:"size_before";i:478271;s:10:"size_after";i:469473;s:4:"time";d:4.7400000000000002131628207280300557613372802734375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:13.050000000000000710542735760100185871124267578125;s:5:"bytes";i:4456;s:11:"size_before";i:34136;s:10:"size_after";i:29680;s:4:"time";d:0.289999999999999980015985556747182272374629974365234375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:2.729999999999999982236431605997495353221893310546875;s:5:"bytes";i:1814;s:11:"size_before";i:66466;s:10:"size_after";i:64652;s:4:"time";d:1.2800000000000000266453525910037569701671600341796875;}s:13:"blog-featured";O:8:"stdClass":5:{s:7:"percent";d:1.5;s:5:"bytes";i:2528;s:11:"size_before";i:168667;s:10:"size_after";i:166139;s:4:"time";d:1.600000000000000088817841970012523233890533447265625;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:209002;s:10:"size_after";i:209002;s:4:"time";d:1.5700000000000000621724893790087662637233734130859375;}}}'),
(239, 5, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:30.133368546150801847716138581745326519012451171875;s:5:"bytes";i:6846;s:11:"size_before";i:22719;s:10:"size_after";i:15873;s:4:"time";d:0.179999999999999993338661852249060757458209991455078125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:3:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:35.42999999999999971578290569595992565155029296875;s:5:"bytes";i:1401;s:11:"size_before";i:3954;s:10:"size_after";i:2553;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:26.120000000000000994759830064140260219573974609375;s:5:"bytes";i:2115;s:11:"size_before";i:8098;s:10:"size_after";i:5983;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:31.219999999999998863131622783839702606201171875;s:5:"bytes";i:3330;s:11:"size_before";i:10667;s:10:"size_after";i:7337;s:4:"time";d:0.11999999999999999555910790149937383830547332763671875;}}}'),
(256, 28, '_edit_lock', '1457553552:1'),
(257, 253, '_menu_item_type', 'custom'),
(258, 253, '_menu_item_menu_item_parent', '0'),
(259, 253, '_menu_item_object_id', '253'),
(260, 253, '_menu_item_object', 'custom'),
(261, 253, '_menu_item_target', ''),
(262, 253, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 253, '_menu_item_xfn', ''),
(264, 253, '_menu_item_url', 'https://www.facebook.com/ActorsCompass/'),
(266, 254, '_menu_item_type', 'custom'),
(267, 254, '_menu_item_menu_item_parent', '0'),
(268, 254, '_menu_item_object_id', '254'),
(269, 254, '_menu_item_object', 'custom'),
(270, 254, '_menu_item_target', ''),
(271, 254, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 254, '_menu_item_xfn', ''),
(273, 254, '_menu_item_url', 'https://twitter.com/ActorsCompass'),
(274, 19, '_edit_last', '1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-01-07 00:09:37', '2016-01-07 00:09:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://actorscompassdev.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-01-07 00:09:37', '2016-01-07 00:09:37', '', 0, 'http://actorscompassdev.dev/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-01-07 03:38:57', '2016-01-07 03:38:57', '', 'ac-logo', '', 'inherit', 'open', 'closed', '', 'ac-logo', '', '', '2016-04-04 08:25:28', '2016-04-04 08:25:28', '', 19, 'http://actorscompassdev.dev/wp-content/uploads/2016/01/ac-logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2016-01-11 03:10:40', '2016-01-11 03:10:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-01-11 03:10:40', '2016-01-11 03:10:40', '', 0, 'http://actorscompassdev.dev/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-01-11 03:10:40', '2016-01-11 03:10:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-01-11 03:10:40', '2016-01-11 03:10:40', '', 6, 'http://actorscompassdev.dev/2016/01/11/6-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-01-11 03:41:25', '2016-01-11 03:41:25', '', 'Tour', '', 'publish', 'closed', 'closed', '', 'tour', '', '', '2016-01-11 03:41:25', '2016-01-11 03:41:25', '', 0, 'http://actorscompassdev.dev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-01-11 03:41:25', '2016-01-11 03:41:25', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-01-11 03:41:25', '2016-01-11 03:41:25', '', 12, 'http://actorscompassdev.dev/2016/01/11/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-01-11 03:41:32', '2016-01-11 03:41:32', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-03-09 20:01:09', '2016-03-09 20:01:09', '', 0, 'http://actorscompassdev.dev/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-01-11 03:41:32', '2016-01-11 03:41:32', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-01-11 03:41:32', '2016-01-11 03:41:32', '', 14, 'http://actorscompassdev.dev/2016/01/11/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-01-11 03:42:22', '2016-01-11 03:42:22', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-03-28 07:43:20', '2016-03-28 07:43:20', '', 0, 'http://actorscompassdev.dev/?p=16', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-01-11 03:47:54', '2016-01-11 03:47:54', '', 'Get Your Site', '', 'publish', 'closed', 'closed', '', 'pro-site', '', '', '2016-04-04 08:54:45', '2016-04-04 08:54:45', '', 0, 'http://actorscompassdev.dev/pro-site/', 0, 'page', '', 0),
(28, 1, '2015-03-14 18:29:22', '2015-03-14 18:29:22', 'As an actor, you know you need a website. But what information do you put on your acting website?\n\nWhen a casting director, agent , director or producer look at your website, they are looking for specific things to determine if they should cast you for the role. Your website isn\'t for you, <em>it\'s for them.</em> Be sure to include the following elements on your website to give yourself the best change of landing the gig.\n<!--more-->\n&nbsp;\n<h2>1: Headshot</h2>\nAny actor worth their salt has plenty of headshots to choose from. Picking one strong headshot to display on the home page of your website gives a strong, clear depiction of you to a casting director. Choose a photo in which you are lit properly from all sides (no shadowy, moody headshots here - those can go in your gallery.) Your facial expression is important to consider, so be sure to choose a headshot that portrays the type of character you\'re aiming to get cast as.\n\n&nbsp;\n<h2>2: Reel</h2>\nA video reel of your acting work is absolutely essential in the entertainment industry today. If you don\'t have a reel, create your own using free software you can find online. Don\'t worry if its not "perfect" - having any kind of reel is better than no reel at all. Of course if you\'re in a position to invest in your acting career, enlisting some professional help in creating your acting reel is a smart move. Keep in mind that your reel needs to be brief and to the point. No casting director will watch 15 minutes of your work, no matter how great you are. Your acting reel should be no longer than three minutes long.\n\n&nbsp;\n<h2>3: Essential Info</h2>\nMake sure to include some basic information about yourself, and how to reach you. Casting agents are often looking for actors with specific characteristics: brown hair with hazel eyes, taller than 6\' with black hair, etc. They\'ll also want to know if you\'re affiliated with any unions.\n<ul>\n	<li>Height &amp; weight</li>\n	<li>Eye &amp; hair color</li>\n	<li>Union affiliations</li>\n	<li>Email address</li>\n	<li>Phone number</li>\n	<li>Agent info (if you have one)</li>\n</ul>\nHopefully after seeing your headshot and reel, the casting director will want to contact you to invite you to audition for the role. Good for you! But you might sabotage yourself if your contact information is hard to find. <b>Make your contact information <em>very</em> easy to find on your site.</b> Put your email address and phone number at the top and bottom of your site, and make a dedicated "Contact Me" page with the information as well.\n\n&nbsp;\n<h2>4: Credits &amp; Roles</h2>\nYou\'ve got a great look, your reel is great, and it seems like you fit the bill. But how experienced are you? Casting directors and producers will want to know what other films and/or shows you\'ve been in, to make sure you know how to handle yourself. List out your previous credits and roles in an easy-to-read way, and be sure to list the show title, your role, and the network/company it was for.\n\nIt can be tempting to list <em>all</em> the gigs you\'ve ever worked, but sometimes that can be overwhelming to look at. List the top 5 to 10 roles that you\'re the most proud of in a prominent place on your site. You can list all your work, but do it on a dedicated page on your site, so casting directors can see everything if they want to. On your home page, just put your favorites, so the see the highlights.\n\n&nbsp;\n<h2>5: Personality</h2>\nLastly (and maybe most importantly), your website needs to showcase your unique personality and character. There are a lot of other actors out there you have the same hair color, similar skills, and comparable experience - but there\'s only one of you. Show the casting director your special brand of personality so you stand out from the rest of the pack. You might include a few photos of you playing a more "niche" role, or include some quirky "fun facts" about yourself. Express yourself a little on your website, but don\'t go overboard; you want to be taken seriously, after all!\n\n&nbsp;\n\n&nbsp;\n\nIf you include those five things on your acting website, you\'ll have covered the most important bases that casting directors are looking for. You can continue to add things in the future, but keep in mind that sometimes less is more. You want a professional-looking site that shows you take your career seriously, and are prepared for the role they\'re offering. Don\'t have a website yet? Take a look at our acting website service and get a professional site - with all 5 must-haves - in minutes.', '5 Actor Website Must-Haves', '', 'publish', 'open', 'open', '', '5-actor-website-must-haves-2', '', '', '2016-03-09 19:59:12', '2016-03-09 19:59:12', '', 0, 'http://actorscompassdev.dev/?p=28', 0, 'post', '', 0),
(135, 2, '2015-08-26 22:15:45', '2015-08-26 22:15:45', '<img class="alignleft size-medium wp-image-228" src="http://actorscompassdev.dev/wp-content/uploads/2015/08/AC-dos-and-donts-of-a-300x191.png" alt="AC-dos-and-donts-of-a" width="300" height="191" />You know what it’s like when you go to a bad website. It takes like 0.05 second for you to say, “ew.” Seriously. It’s been proven. Google did a study a few years ago and they found out that it literally takes 1/20 of a second for someone to form a decision about your website. So now that you have your actor website, you have to make sure that everything is shipshape. Here are some important do’s and dont’s to keep in mind as you get everything together for your awesome site.\r\n<h2>DO’s</h2>\r\n<b>MAKE SURE THEY SEE YOU</b>\r\nPut an image of yourself on every page of your site. When agents and casting are looking at your resume, they don’t want to have to click away to remember what you look like.\r\n\r\n<b>MAKE IT EASY TO CONTACT YOU</b>\r\nMake sure you provide a way for that casting agent to get a hold of you easily and quickly, and make sure that info is easy to spot, no matter where they are on your site.\r\n\r\n<b>PUT YOUR MAIN REEL FRONT AND CENTER</b>\r\nThe first thing they\'ll look for is you in action. Think of it as putting your best performance first.\r\n\r\n<b>USE YOUTUBE OR VIMEO</b>\r\nIf it isn’t already, put your video clips on YouTube or Vimeo. This will optimize them for web viewing. No one’s gonna wait for your video to load. Putting them on YouTube or Vimeo will also allow you to easily embed the clips into your website. You might even want to create a channel on YouTube so you have a central location where all of your clips are accessible. Here is the <a href="https://support.google.com/youtube/answer/1646861?hl=en" target="_blank">handy-dandy how-to</a> for doing just that.\r\n\r\n<b>KEEP THE DESIGN CLEAN AND SIMPLE</b>\r\nYOU are the asset they want to see, not your gimmicky layout! It might look cute or cool but if it gets in the way of them seeing your face, reel and resume, you gotta cut it out.\r\n\r\n<b>KEEP BRANDING CONSISTENT</b>\r\nIf you have well-branded headshots and clips from your work, keep your website branding in alignment too. Let them know that you know what your audience thinks of you.\r\n\r\n<b>PUT YOUR MOST IMPRESSIVE CREDITS FIRST</b>\r\nDon\'t become a slave to chronological time and let your best work do the talking. This goes for your bio, pull-quotes on the homepage, and your resume.\r\n\r\n<b>KEEP YOUR WEBSITE CURRENT</b>\r\nWorking actors show that they\'re working regularly -- even if it\'s their own projects or in classes -- and a “museum piece” website where nothing ever changes is a turn-off. If your last post was from three years ago, what does that say about your dedication to your career? Make it a habit to add a new credit or publish a new blog post on your site at least once a month.\r\n<h2>DONT’S</h2>\r\n<b>DON\'T PUT UP NON-OPTIMIZED IMAGES</b>\r\nNothing is worse than waiting for images to load. Okay, maybe waiting for videos to load (see above).\r\n\r\n<b>DON\'T USE EVERY LOOK FROM YOUR HEADSHOT SESSION</b>\r\nShots of you in five different colored shirts says you own five different colored shirts. They don’t say anything more about you than you in that one great colored shirt.\r\n\r\n<b>DON\'T USE FULL VIDEO CLIPS</b>\r\nTrust me, no one is going to sit through a five-minute video to see you coming in at minute four. Exceptions: (1) you are in the first 10 seconds of the video or (2) you have ANOTHER clip that just shows your scene from which you have a link to the full video.\r\n\r\n<b>DON\'T PUT UP YOUR WHOLE RESUME</b>\r\nGive them the 10 best highlights of your work with a “Download full resume” link\r\n\r\n<b>DON\'T USE "CUTE" FONTS</b>\r\nOnline, “cute” fonts = illegible fonts. If there\'s a fancy font that you think expresses your branding, use it very sparingly as an accent, like headers or subheaders. Remember that agents and casting folks are scanning quickly to see if they want to bring you in. Everything -- including the font -- should work toward making your site snappy, readable, and to-the-point.\r\n\r\n<b>DON\'T WRITE A BIO THAT IS MORE THAN TWO PARAGRAPHS LONG</b>\r\nJust like that full-length video, no one will read it, except maybe your mom. Save yourself and your reps the trouble.\r\n\r\n<b>DON\'T PUT SPECIFIC DATES ON YOUR WEBSITE</b>\r\nUse vague dates if you need to, but stay away from having stuff that is “dated”. The exception to the rule is when you’re promoting something big that\'s coming up, like the air date of your national commercial.', 'Do\'s and Dont\'s of a Great Actor\'s Website', '', 'publish', 'open', 'open', '', 'dos-and-donts-of-a-great-actors-website', '', '', '2016-03-09 19:59:03', '2016-03-09 19:59:03', '', 0, 'http://actorscompassdev.dev/?p=135', 0, 'post', '', 0),
(188, 2, '2015-09-08 11:16:55', '2015-09-08 11:16:55', '&nbsp;\r\n\r\n<img class="size-medium wp-image-231 alignnone" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-image-optimization-300x162.jpg" alt="AC-image-optimization" width="300" height="162" />\r\n\r\nYou got your hair did, you put on your prettiest outfit, and you smiled real nice for the camera. Make sure that your beautiful head shots are properly optimized so that they load properly on your site. Here’s how:\r\n<ul>\r\n	<li>Look at the file size of the image you want to optimize (select image file and then right click &gt; Get Info, or select ⌘ + I). If the file is larger than 500 KB (for instance, 2.3 MB is huge), it needs to be optimized. Also, if either the width or height is larger than 1500 pixels, it’s way too big and needs to be optimized.</li>\r\n	<li>Create a copy of the image file! You do NOT want to edit your original images. Give the copy a unique name so you don’t destroy the original file by accident.</li>\r\n	<li>Open the image in an image editor (both Preview on Mac or Picture Manager and PC work fine). From the View menu, choose ‘Actual Size’ to see how large the picture really is.</li>\r\n	<li>From the Tools menu, choose Adjust Size.</li>\r\n	<li>Change the longer dimension (width or height) of your image is no larger than 1500 pixels.</li>\r\n	<li>Save your new, smaller image.</li>\r\n	<li>Check the file size again. We’re aiming for less than 300 KB for large images and less than 100 KB for small images. Smaller is better.</li>\r\n	<li>Keep trying to lower the size or resolution until your file is as small as possible while still looking crisp. Even pros (like me!) go through some trial and error.</li>\r\n	<li>One very important thing to remember is that you CANNOT make a small image bigger. I mean, you can, but it will pixilate and look awful. So don’t do it!</li>\r\n</ul>\r\nHere are a few free and almost-free image editing software you can also check out:\r\n<ul>\r\n	<li><a href="http://resize.it/" target="_blank"><strong>Resize.it</strong></a>: Free</li>\r\n	<li><a href="https://itunes.apple.com/us/app/image-bucket/id415613856?mt=12" target="_blank"><strong>Image Bucket app</strong> (Mac): $4.99</a></li>\r\n	<li><a href="http://www.picresize.com" target="_blank"><strong>Picresize</strong></a>: Free</li>\r\n</ul>', 'Image Optimization for Your Site', '', 'publish', 'open', 'open', '', 'image-optimization-for-your-site', '', '', '2016-03-09 19:58:52', '2016-03-09 19:58:52', '', 0, 'http://actorscompassdev.dev/?p=188', 0, 'post', '', 0),
(198, 2, '2015-09-17 00:05:55', '2015-09-17 00:05:55', '&nbsp;\r\n\r\n<img class="size-medium wp-image-233 alignnone" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-1-300x154.jpg" alt="AC-how-to-format-your-acting-1" width="300" height="154" />\r\n\r\nIn my work as a web developer creating acting sites, I often spend a lot of time helping clients format their bios, images, resumes, etc. This, on top of spending time on my OWN actor branding package! One of the most common questions I receive is: "Can you format my resume so it doesn\'t look so sucky?" Yes, "sucky" is an official industry term. Fortunately, the answer to this question is yes. Today, I will focus on the content of your resume so it highlights the best of who you are and what you offer. <strong><a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-2/">Come back next week</a></strong> when I\'ll show you how to format it to get it both agent- and- casting-ready.\r\n<h2>CLEAR THE DECKS FOR YOUR STATS</h2>\r\nLet\'s start at the top of your page. We want to see your name nice and big -- big enough that it could be read from a few feet away, but not so huge that it looks like a mistake. Next should be your union affiliations -- SAG-e, AEA EMC, SAG-AFTRA, and all the others -- and contact info. This is not the place to put "seeking representation". If you have no union affiliations, just leave this blank and move on to your contact info. Email and a phone number are standard. If it skeeves you out to put your phone number out there, you can get a virtual number that will forward to your phone. You can get a virtual number through <a href="https://www.google.com/voice" target="_blank">Google Voice</a>, <a href="http://info.cloudphone.com/virtual-phone-number?gclid=CjwKEAjwpuSvBRDSkaes4OasuEESJACfwIc_spJQSuJL3GiRU1wp2230meDlQ5G-5TXdtgnur2afjhoCTJHw_wcB" target="_blank">CloudPhone</a>, and <a href="http://www.vonage.com/personal/features/virtual-phone-number" target="_blank">Vonage</a>, among others. List your website here as well if you have one.\r\n\r\nBelow your contact info is your stats. There are conflicting views these days on whether or not eye and hair color should be listed on resumes. Now that headshots are all in color, that info can be easily seen rather than read. I still leave that on mine because I\'m old-school like that. Also list your height and, if you\'re a singer, your voice range/part. Don\'t include your weight, unless you\'re extremely obese and you use that to book jobs. Don\'t include your clothing sizes, either. These two pieces of info can vary greatly and are better left off.\r\n<h2>CREDITS (OR, LEARN TO LOVE THE WHITE SPACE)</h2>\r\nIf you have an existing resume, take a good, long look at it. Read every line, every little detail with a critical eye. Are you still packing your credits from grade school on there? Is every teensy-tiny detail about your size, skills, teachers, favorite animals and what you did last summer listed? Do you spot any info that doesn’t belong or just taking up space?\r\n\r\nNow grab yourself a nice colored pen. Red works, and purple is fine too -- whatever you fancy. Go through your resume and SLASH those credits like a swashbuckler. Cross out all but three to five of your best credits per section (film, TV, theater, etc.). Take those grade school and high school credits -- heck, your college credits if you\'re in your 30s -- OFF. Leave only your very best work, the work you would love to showcase and discuss. I realize this is counter-intuitive, but we want as much white space as possible on this pretty little baby. No tiny fonts, tiny margins, or packed paragraphs. Just a nice list of your best work that can be skimmed in like 0.3 seconds before the start of your audition or meeting.\r\n\r\nThere is another huge debate over whether credits should be listed chronologically or not. I\'ll stamp my foot down and say a hearty "NOPE" to that foolish idea! I stand firmly on the belief that credits should be listed best first. Like I said before, list only three to five per section. You will prove your professionalism more convincingly by listing three strong films that you were the lead in rather than the four most recent web series you did where you played bit parts or had no lines at all.\r\n<h2>CAN YOU BURP ON COMMAND?</h2>\r\nBelow your credits are your training and skills. Start with training and make a little list of where you studied and with whom. Again, let\'s cherry-pick here. Put down only your best and most known or memorable training. In the skills section, list ONLY skills you can perform excellently when asked to in any situation. Be sure to end the section with something conversation-worthy. "Burp on command" is always a winner here.\r\n\r\n<hr />\r\n\r\nRemember, every part of your actor\'s business kit is a reflection of you as a performer. Don\'t let a messy resume be the boulder in the path of your big break!', 'How to Format Your Acting Resume Like a Pro, Part 1', '', 'publish', 'open', 'open', '', 'how-to-format-your-acting-resume-like-a-pro-part-1', '', '', '2016-03-09 19:58:40', '2016-03-09 19:58:40', '', 0, 'http://actorscompassdev.dev/?p=198', 0, 'post', '', 0),
(212, 2, '2015-09-21 01:04:42', '2015-09-21 01:04:42', '<img class="alignnone size-full wp-image-209" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-1.jpg" alt="AC-how-to-format-your-acting-1" width="682" height="350" />\r\n\r\nIn <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>the first part</strong></a> of this series last week, I talked about what should and should not go into your actor resume. This week, I want to show you how to format your resume content so that (a) it looks professional and (b) grabs the attention that it deserves. You should know that I use Microsoft Word on a Mac to edit my resume. You\'ll have to translate these instructions to your computer setup if you use something else. Thankfully tools in all text editing software are pretty similar. Alright, here we go!\r\n<h2>YOUR INFO AND STATS, FRONT AND CENTER</h2>\r\nOr left-justified. Or right-justified.\r\n\r\nI mentioned this already <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last week</strong></a> but make sure that your name at the top of the page is big enough that it can be easily seen from a few feet away. The conventional placement of your name is in the center, but these days you can also place it to the left or the right, particularly if your name is kinda long. Union affiliations, contact information, and stats should go right under your name in the same font size as the rest of your resume. Justify (align) this text to match what you’ve got going on with your name above.\r\n<h2>GET DOWN WITH TABLES</h2>\r\nThe biggest mistake actors make on their resumes is to not use tables to format their credits. In the <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last post</strong></a>, I said that your res\' will be skimmed in 0.3 seconds. That\'s not a lie. The easiest way to make that skimming work for you is to make sure all everything is lined up nicely and make for an easy read. This does NOT mean hitting the space bar exactly 23 times between each word! Oh, Lordy, no. This means a you create a TABLE.\r\n\r\nPractice making tables on a clean document, not your best saved acting resume. It’s important to get tables right, and there are lots of things that could leave you crying in despair if you\'re unfamiliar with tables. Save yourself the tears and practice first until you get the hang of it.\r\n\r\nIn Word, the table feature usually has a little checkerboard icon. If you use Pages, Open Office, or something else to format your resume, you\'ll have to look for an icon that looks like this:\r\n\r\n<img class="alignnone size-full wp-image-235" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig1.jpg" alt="AC-how-to-format-your-acting-2-fig1" width="158" height="214" />\r\n\r\n&nbsp;\r\n\r\nFirst, make a table that has three columns and three rows. That will be enough to practice with. When you create your table, you\'ll often get a bigger checkerboard area where you can "drag" out the number of columns and rows you want. Make sure you stick with three columns, but you can go crazy with the number of rows if you feel like it. We can delete any extras later.\r\n\r\n<img class="alignnone size-full wp-image-236" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig2.jpg" alt="AC-how-to-format-your-acting-2-fig2" width="241" height="213" />\r\n\r\n&nbsp;\r\n\r\nNow that you have your table, you\'ll want to remove the borders. Huh? That\'s right, tables by default have lines, or borders, on all sides of them. What we want for your resume is a border-less table, so your credits can be lined up neatly but without all those criss-crossing lines that will be a distraction. In Word, you can edit the table you\'ve just created by clicking on it, and then clicking on the crosshairs icon that will show up in the upper-left side above the table. (See the screenshot below.) This is where gets interesting.\r\n\r\n<img class="alignnone size-medium wp-image-237" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig3-300x72.jpg" alt="AC-how-to-format-your-acting-2-fig3" width="300" height="72" />\r\n\r\n&nbsp;\r\n\r\nDouble-click on those crosshairs, and a whole new world will open up for you: a world of Table Properties. From here, we can click on the Borders and Shading button to get rid of those pesky borders.\r\n\r\n<img class="alignnone size-medium wp-image-239" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig4-300x121.png" alt="AC-how-to-format-your-acting-2-fig4" width="300" height="121" />\r\n\r\n&nbsp;\r\n\r\nNow, look for a setting that says "None". Click it. Then rejoice. You have just removed your borders from your table.\r\n<h2>ENTER YOUR CREDITS LIKE A BOSS</h2>\r\nSince you\'re rocking the table, it\'s time to fill it in with your equally rocking credits. You\'ll want to make the first row of your table a "heading" row for your first section. Examples of sections would be: <em>Film</em>, <em>TV</em>, and <em>Theater</em>. Type the heading in bold (and possibly in all uppercase) in the very top left table cell.\r\n\r\nIn the next row, write out the name of either the film, series, or show you were in appropriate to that section. Remember, you want to list no more than three to five of your best work. Next, move to the table cell in the middle and type in your role. If it’s a film, TV, or web credit, the industry standard is to put <em>Lead</em>, <em>Supporting</em>, or <em>Co-Star</em> (which, despite popular belief, does NOT mean you are a lead) rather than the name of your role ("Becky the Cheerleader"). For theater credits, though, you can put your character\'s name, and maybe add <em>Lead</em>, <em>Supporting</em>, or <em>Co-Star</em> in parentheses if the show isn\'t well-known. In the third and final column, enter the production company, director, producer, theater, or TV network. I know that’s a lot of options. Basically, list the most-known person or organization responsible for that project. For example, if you were in a show at the Guthrie with a no-name director, I would suggest that you skip the director and list the Guthrie. Can you put down the director and theater (write it out like this: <em>director / theater</em>)? Or director and production company (<em>director / production company</em>)? Sure thing, special snowflake. Remember, this is about starting a conversation. And nothing starts a conversation better than, "Oh! You worked with so-and-so! I went to grad school with her. Tell me about that project!"\r\n\r\nLeave a blank row between each of your sections. Remember that nice white space I talked about <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last week</strong></a>? Yeah, we want that here too.\r\n\r\n"What if I Run Out of Rows?" you say? Good question! This can be a bit tricky, so keep breathing if it gives you trouble. Use your mouse to highlight the last row that you have. When you highlight this row, that checkerboard icon that helped you make a table in the first place will turn into a weird little group of boxes and arrows with the word Tables under it. See the screenshot, since I have no idea how to describe this. Needless to say, this is the magic row and column insertion button, and when you click it you\'ll get the option to add -- you guessed it -- either a row or a column. Add rows to your heart\'s content.\r\n\r\n<img class="alignnone size-full wp-image-240" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig5.jpg" alt="AC-how-to-format-your-acting-2-fig5" width="127" height="127" />\r\n\r\n&nbsp;\r\n\r\nWhat if you want to delete a row? Highlight that row with your mouse and then right-click. Choose the "Delete Cells" option, and then choose "Delete entire row". You are a now table master! Make sure you save your work, because you do NOT want to have to do that over again!\r\n<h2>YOU GOT SKILLZ</h2>\r\nAnd training too, right? Refer to <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/">part one</a> of this series for the content that should go here. As far as formatting goes, training and skills can be listed in paragraph form rather than in a table.\r\n<h2>TURN THAT SHIZZLE INTO A PDF</h2>\r\nYou did it! You formatted an excellent, professional-grade acting resume! Congratulations! Crack a beer! BUT ONLY AFTER YOU HIT SAVE. For the love of all that is holy, save, save, SAVE. In Word, you can save your file as a .doc or .docx file. But the best way to preserve your beautiful new formatting is to save as a PDF.\r\n\r\nHow do you do this? Fortunately, it\'s really simple these days. What used to require special software in the days of dinosaurs is now included in almost every text editor. From the File menu, choose "Save As", scroll down to PDF, name it something professional like "Yourlastname-Resume-2051.pdf", et voila! A PDF!\r\n\r\nPDFs are way easier to email to prospective casting directors or agents because they print out consistently from computer to computer and they can be opened by a lot of different software. This isn’t the case with documents saved with a .doc, .docx, or .pages extension. The worst thing would be to send a file that no one could read. They’ll just say, “Oh, well, next actor.”\r\n\r\nThe PDF format is also the ONLY way to ensure you can put your resume on your website and know that it won\'t get messed up. Folks can view or download your beautiful credits if they want to call you in -- or offer you a role sight unseen. Yes, that shit still happens (#truestory) but I guarantee it only happens to those who have properly formatted acting resumes.\r\n<h2>QUESTIONS?</h2>\r\nIf you\'ve made it this far, chances are you are either kicking butt, or banging your head against a digital wall. If the latter is happening, stop it right now. And stop stressing. Just shoot us an email and we\'ll see what we can do to help you get your actor\'s resume up to speed.\r\n\r\nRemember, every part of your actor\'s business kit is a reflection of you as a performer. Don\'t let a messy resume be the boulder in the path of your big break!', 'How to Format Your Acting Resume Like a Pro, Part 2', '', 'publish', 'open', 'open', '', 'how-to-format-your-acting-resume-like-a-pro-part-2', '', '', '2016-03-09 19:58:35', '2016-03-09 19:58:35', '', 0, 'http://actorscompassdev.dev/?p=212', 0, 'post', '', 0),
(227, 3, '2015-09-30 15:10:39', '2015-09-30 15:10:39', '&nbsp;\r\n\r\n<img class="alignnone size-medium wp-image-242" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-to-blog-or-not-to-300x154.jpg" alt="AC-to-blog-or-not-to" width="300" height="154" />\r\n\r\nEveryone and their dog has a blog these days. I actually have four blogs (<strong><a href="https://thethinkfarm.wordpress.com" target="_blank">here</a></strong> and <strong><a href="https://caseandpoint.wordpress.com" target="_blank">here</a></strong> and <strong><a href="http://ktownismytown.com/category/news/" target="_blank">here</a></strong> and, of course, Actors Compass). I know, I need an intervention. But we’re not here to talk about me, we’re here to talk about you! Or, more specifically, your actor blog.\r\n\r\nA blog can be a handy way to showcase your personality, talent, and interests as well as to keep people up-to-date on your latest news. It can be a great tool to create community and build an online following but it’s only a great tool if used strategically and consistently. A haphazard or neglected blog becomes a liability, making you look out of touch or uninvested in your web presence. Having a blog simply to have more features on your website won’t cut it. It’s important to take a realistic, honest look within before you add a blog to your Actors Compass site. If blogging isn’t for you, it’s really no big whoop. There are other ways to promote yourself and be engaged with your audience and community. If you’re curious about these Other Ways, drop us a line at actorscompass@gmail.com and we’ll whip up an article in the future. For now, read on and, as you do, consider your specific online goals/needs and the reality of what goes into a successful blog to see if blogging is, in fact, for you.\r\n<h2>ONLINE STRATEGY</h2>\r\nAsk yourself this fundamental question: What kind of brand am I cultivating as an actor or performer? Would a blog be an important element in creating the kind of online presence that is right for me? It seems simple but these questions don\'t get asked way too often.\r\n<h2>AUDIENCE</h2>\r\nIt’s a good idea to picture your target audience in your mind. Go on, I\'ll wait.\r\n\r\nWho are you talking to? Are they visiting your site on a regular basis? If not, would you be able to direct them to the blog effectively? Identifying your audience helps you to develop your voice in a targeted way, shape your content and figure out what online platforms you should use to drive the right traffic -- i.e. your audience -- to your blog.\r\n<h2>YOUR VOICE</h2>\r\nWhen I talk about developing your voice, I don’t mean that you create a persona separate from the authentic you. It\'s important that your personality and unique perspective shine through, particularly for a blog of this nature. However, sometimes we need a little work to hit our stride in communicating our point-of-view effectively. Don’t be afraid to be funny, share things that are of interest to you, and write like you talk. You should consider proper grammar and spelling whenever appropriate because sloppy mistakes translate as careless and unprofessional. If the way you speak breaks some grammar rules and/or call for special spelling, though, go for it. Just try to avoid using four-letter words. Yes, you should be you. But for the purposes of a professional blog like this, you should be you after a shower and a great cup of coffee, not the drunk you at 2am shooting the sh--poop with your even drunker friends.\r\n<h2>GREAT CONTENT</h2>\r\nContent is king. And original content can provide insight not only into who you are but your creative process and talent. Subject matters such career news and upcoming performances as well as current affairs and trends are natural sources of original content. Even updating content on your site is blog-worthy. However, it’s also a good idea to have a list of other topics on hand -- a new insight into your craft or an actor you admire for their career choices, for example -- that can be strategically scheduled in along with time-sensitive posts.\r\n<h2>IMAGES</h2>\r\nReaders like to be stimulated visually. Punctuate the content of your post with thoughtful, beautiful, funny images. There are many resources out there for free images but I recently came across <strong><a href="http://www.splitshire.com" target="_blank">Splitshire</a></strong>, which has a library of stock photography that would be the envy of Instagrammers everywhere. Me, I\'m personally a fan of GIFs.\r\n\r\nGet \'em at <strong><a href="http://giphy.com" target="_blank">GIPHY.com</a></strong>.\r\n\r\nAlso, remember that an interesting post be an interesting photo with a quick, few sentences. Not every post has to be a Huffington Post piece you agonized over. This leads me to the next point …\r\n<h2>LINKS</h2>\r\nGreat content doesn’t always mean purely original content. Feel free to share links to articles and videos that you find interesting, informative and inspiring. Just make sure to credit the source and provide context for why you are sharing the content from your unique point-of-view, in your unique voice.\r\n\r\nLinks have the added bonus of helping your blog’s search engine rankings. This means that it’s a good practice to add links to your posts in general whenever they’re relevant. For example, if you are waxing poetic about the acting class you’re taking, don’t just mention it by name. Link the name of the course the teacher to the official website. They will appreciate your good deed, and may even consider returning the favor. What your mama told you about being nice to people applies to the web, not just real life.\r\n<h2>CONSISTENCY</h2>\r\nConsistency is key in keeping up a robust blog. Consistency in the tone and how content is organized and presented. Consistency in the frequency of new posts. You are not Buzzfeed so don’t stress about posting on a variety of topics on a daily basis. You are a god if you can post two to three times a week, golden if once a week and still in the game if you post once a month. However often you end up posting, keep your minimum goal consistent. And give yourself a break if you fall short from time to time. If you check out any of my blogs you\'ll see what I mean! Set the tone and expectation of what the blog is going to be like and stick to it. Schedule writing and posting times in your calendar to make sure blogging actually happens.\r\n\r\nOf course, plans and priorities change and your website, including your blog, should be able to accommodate that. But if you sound like you have multiple personality disorder in how you present yourself and your content, or if you haven’t posted in three months, you might want to rethink how you’re producing your blog content (Are you making the process too challenging? Are you really writing about things that are interesting to you?). You may even rethink having a blog, period.\r\n\r\n<hr />\r\n\r\nEven though I could go on and on about blogging rules and how-to’s, at the end of the day, consistent posting of thoughtful content from your unique perspective is what will make your blog a success. If you decide after reading this that you weren’t made to be a blogger, high five to you. Now you have hours of extra time you didn’t previously know you had to conquer the world. If you decide blogging is worth a try, high five to you too! To recap: figure out your audience, your voice, what you want to talk about and start blogging! You\'re gonna be awesome and I can’t wait to read all about it on your Actors Compass website. <em>(Smugly pats herself on the back for her sly self-promotion as she hits “publish”.)</em>', 'To Blog or Not to Blog', '', 'publish', 'open', 'open', '', 'to-blog-or-not-to-blog', '', '', '2016-03-09 19:58:30', '2016-03-09 19:58:30', '', 0, 'http://actorscompassdev.dev/?p=227', 0, 'post', '', 0),
(228, 1, '2016-01-11 09:53:18', '2016-01-11 09:53:18', '', 'AC-dos-and-donts-of-a', '', 'inherit', 'open', 'closed', '', 'ac-dos-and-donts-of-a', '', '', '2016-01-11 09:53:18', '2016-01-11 09:53:18', '', 135, 'http://actorscompassdev.dev/wp-content/uploads/2015/08/AC-dos-and-donts-of-a.png', 0, 'attachment', 'image/png', 0),
(229, 1, '2016-01-11 09:53:37', '2016-01-11 09:53:37', '<img class="alignleft size-medium wp-image-228" src="http://actorscompassdev.dev/wp-content/uploads/2015/08/AC-dos-and-donts-of-a-300x191.png" alt="AC-dos-and-donts-of-a" width="300" height="191" />You know what it’s like when you go to a bad website. It takes like 0.05 second for you to say, “ew.” Seriously. It’s been proven. Google did a study a few years ago and they found out that it literally takes 1/20 of a second for someone to form a decision about your website. So now that you have your actor website, you have to make sure that everything is shipshape. Here are some important do’s and dont’s to keep in mind as you get everything together for your awesome site.\n<h2>DO’s</h2>\n<b>MAKE SURE THEY SEE YOU</b>\nPut an image of yourself on every page of your site. When agents and casting are looking at your resume, they don’t want to have to click away to remember what you look like.\n\n<b>MAKE IT EASY TO CONTACT YOU</b>\nMake sure you provide a way for that casting agent to get a hold of you easily and quickly, and make sure that info is easy to spot, no matter where they are on your site.\n\n<b>PUT YOUR MAIN REEL FRONT AND CENTER</b>\nThe first thing they\'ll look for is you in action. Think of it as putting your best performance first.\n\n<b>USE YOUTUBE OR VIMEO</b>\nIf it isn’t already, put your video clips on YouTube or Vimeo. This will optimize them for web viewing. No one’s gonna wait for your video to load. Putting them on YouTube or Vimeo will also allow you to easily embed the clips into your website. You might even want to create a channel on YouTube so you have a central location where all of your clips are accessible. Here is the <a href="https://support.google.com/youtube/answer/1646861?hl=en" target="_blank">handy-dandy how-to</a> for doing just that.\n\n<b>KEEP THE DESIGN CLEAN AND SIMPLE</b>\nYOU are the asset they want to see, not your gimmicky layout! It might look cute or cool but if it gets in the way of them seeing your face, reel and resume, you gotta cut it out.\n\n<b>KEEP BRANDING CONSISTENT</b>\nIf you have well-branded headshots and clips from your work, keep your website branding in alignment too. Let them know that you know what your audience thinks of you.\n\n<b>PUT YOUR MOST IMPRESSIVE CREDITS FIRST</b>\nDon\'t become a slave to chronological time and let your best work do the talking. This goes for your bio, pull-quotes on the homepage, and your resume.\n\n<b>KEEP YOUR WEBSITE CURRENT</b>\nWorking actors show that they\'re working regularly -- even if it\'s their own projects or in classes -- and a “museum piece” website where nothing ever changes is a turn-off. If your last post was from three years ago, what does that say about your dedication to your career? Make it a habit to add a new credit or publish a new blog post on your site at least once a month.\n<h2>DONT’S</h2>\n<b>DON\'T PUT UP NON-OPTIMIZED IMAGES</b>\nNothing is worse than waiting for images to load. Okay, maybe waiting for videos to load (see above).\n\n<b>DON\'T USE EVERY LOOK FROM YOUR HEADSHOT SESSION</b>\nShots of you in five different colored shirts says you own five different colored shirts. They don’t say anything more about you than you in that one great colored shirt.\n\n<b>DON\'T USE FULL VIDEO CLIPS</b>\nTrust me, no one is going to sit through a five-minute video to see you coming in at minute four. Exceptions: (1) you are in the first 10 seconds of the video or (2) you have ANOTHER clip that just shows your scene from which you have a link to the full video.\n\n<b>DON\'T PUT UP YOUR WHOLE RESUME</b>\nGive them the 10 best highlights of your work with a “Download full resume” link\n\n<b>DON\'T USE "CUTE" FONTS</b>\nOnline, “cute” fonts = illegible fonts. If there\'s a fancy font that you think expresses your branding, use it very sparingly as an accent, like headers or subheaders. Remember that agents and casting folks are scanning quickly to see if they want to bring you in. Everything -- including the font -- should work toward making your site snappy, readable, and to-the-point.\n\n<b>DON\'T WRITE A BIO THAT IS MORE THAN TWO PARAGRAPHS LONG</b>\nJust like that full-length video, no one will read it, except maybe your mom. Save yourself and your reps the trouble.\n\n<b>DON\'T PUT SPECIFIC DATES ON YOUR WEBSITE</b>\nUse vague dates if you need to, but stay away from having stuff that is “dated”. The exception to the rule is when you’re promoting something big that\'s coming up, like the air date of your national commercial.', 'Do\'s and Dont\'s of a Great Actor\'s Website', '', 'inherit', 'closed', 'closed', '', '135-autosave-v1', '', '', '2016-01-11 09:53:37', '2016-01-11 09:53:37', '', 135, 'http://actorscompassdev.dev/2016/01/11/135-autosave-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(230, 1, '2016-01-11 09:53:51', '2016-01-11 09:53:51', '<img class="alignleft size-medium wp-image-228" src="http://actorscompassdev.dev/wp-content/uploads/2015/08/AC-dos-and-donts-of-a-300x191.png" alt="AC-dos-and-donts-of-a" width="300" height="191" />You know what it’s like when you go to a bad website. It takes like 0.05 second for you to say, “ew.” Seriously. It’s been proven. Google did a study a few years ago and they found out that it literally takes 1/20 of a second for someone to form a decision about your website. So now that you have your actor website, you have to make sure that everything is shipshape. Here are some important do’s and dont’s to keep in mind as you get everything together for your awesome site.\r\n<h2>DO’s</h2>\r\n<b>MAKE SURE THEY SEE YOU</b>\r\nPut an image of yourself on every page of your site. When agents and casting are looking at your resume, they don’t want to have to click away to remember what you look like.\r\n\r\n<b>MAKE IT EASY TO CONTACT YOU</b>\r\nMake sure you provide a way for that casting agent to get a hold of you easily and quickly, and make sure that info is easy to spot, no matter where they are on your site.\r\n\r\n<b>PUT YOUR MAIN REEL FRONT AND CENTER</b>\r\nThe first thing they\'ll look for is you in action. Think of it as putting your best performance first.\r\n\r\n<b>USE YOUTUBE OR VIMEO</b>\r\nIf it isn’t already, put your video clips on YouTube or Vimeo. This will optimize them for web viewing. No one’s gonna wait for your video to load. Putting them on YouTube or Vimeo will also allow you to easily embed the clips into your website. You might even want to create a channel on YouTube so you have a central location where all of your clips are accessible. Here is the <a href="https://support.google.com/youtube/answer/1646861?hl=en" target="_blank">handy-dandy how-to</a> for doing just that.\r\n\r\n<b>KEEP THE DESIGN CLEAN AND SIMPLE</b>\r\nYOU are the asset they want to see, not your gimmicky layout! It might look cute or cool but if it gets in the way of them seeing your face, reel and resume, you gotta cut it out.\r\n\r\n<b>KEEP BRANDING CONSISTENT</b>\r\nIf you have well-branded headshots and clips from your work, keep your website branding in alignment too. Let them know that you know what your audience thinks of you.\r\n\r\n<b>PUT YOUR MOST IMPRESSIVE CREDITS FIRST</b>\r\nDon\'t become a slave to chronological time and let your best work do the talking. This goes for your bio, pull-quotes on the homepage, and your resume.\r\n\r\n<b>KEEP YOUR WEBSITE CURRENT</b>\r\nWorking actors show that they\'re working regularly -- even if it\'s their own projects or in classes -- and a “museum piece” website where nothing ever changes is a turn-off. If your last post was from three years ago, what does that say about your dedication to your career? Make it a habit to add a new credit or publish a new blog post on your site at least once a month.\r\n<h2>DONT’S</h2>\r\n<b>DON\'T PUT UP NON-OPTIMIZED IMAGES</b>\r\nNothing is worse than waiting for images to load. Okay, maybe waiting for videos to load (see above).\r\n\r\n<b>DON\'T USE EVERY LOOK FROM YOUR HEADSHOT SESSION</b>\r\nShots of you in five different colored shirts says you own five different colored shirts. They don’t say anything more about you than you in that one great colored shirt.\r\n\r\n<b>DON\'T USE FULL VIDEO CLIPS</b>\r\nTrust me, no one is going to sit through a five-minute video to see you coming in at minute four. Exceptions: (1) you are in the first 10 seconds of the video or (2) you have ANOTHER clip that just shows your scene from which you have a link to the full video.\r\n\r\n<b>DON\'T PUT UP YOUR WHOLE RESUME</b>\r\nGive them the 10 best highlights of your work with a “Download full resume” link\r\n\r\n<b>DON\'T USE "CUTE" FONTS</b>\r\nOnline, “cute” fonts = illegible fonts. If there\'s a fancy font that you think expresses your branding, use it very sparingly as an accent, like headers or subheaders. Remember that agents and casting folks are scanning quickly to see if they want to bring you in. Everything -- including the font -- should work toward making your site snappy, readable, and to-the-point.\r\n\r\n<b>DON\'T WRITE A BIO THAT IS MORE THAN TWO PARAGRAPHS LONG</b>\r\nJust like that full-length video, no one will read it, except maybe your mom. Save yourself and your reps the trouble.\r\n\r\n<b>DON\'T PUT SPECIFIC DATES ON YOUR WEBSITE</b>\r\nUse vague dates if you need to, but stay away from having stuff that is “dated”. The exception to the rule is when you’re promoting something big that\'s coming up, like the air date of your national commercial.', 'Do\'s and Dont\'s of a Great Actor\'s Website', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-01-11 09:53:51', '2016-01-11 09:53:51', '', 135, 'http://actorscompassdev.dev/2016/01/11/135-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2016-01-11 09:54:26', '2016-01-11 09:54:26', '', 'AC-image-optimization', '', 'inherit', 'open', 'closed', '', 'ac-image-optimization', '', '', '2016-01-11 09:54:26', '2016-01-11 09:54:26', '', 188, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-image-optimization.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2016-01-11 09:54:45', '2016-01-11 09:54:45', '&nbsp;\r\n\r\n<img class="size-medium wp-image-231 alignnone" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-image-optimization-300x162.jpg" alt="AC-image-optimization" width="300" height="162" />\r\n\r\nYou got your hair did, you put on your prettiest outfit, and you smiled real nice for the camera. Make sure that your beautiful head shots are properly optimized so that they load properly on your site. Here’s how:\r\n<ul>\r\n	<li>Look at the file size of the image you want to optimize (select image file and then right click &gt; Get Info, or select ⌘ + I). If the file is larger than 500 KB (for instance, 2.3 MB is huge), it needs to be optimized. Also, if either the width or height is larger than 1500 pixels, it’s way too big and needs to be optimized.</li>\r\n	<li>Create a copy of the image file! You do NOT want to edit your original images. Give the copy a unique name so you don’t destroy the original file by accident.</li>\r\n	<li>Open the image in an image editor (both Preview on Mac or Picture Manager and PC work fine). From the View menu, choose ‘Actual Size’ to see how large the picture really is.</li>\r\n	<li>From the Tools menu, choose Adjust Size.</li>\r\n	<li>Change the longer dimension (width or height) of your image is no larger than 1500 pixels.</li>\r\n	<li>Save your new, smaller image.</li>\r\n	<li>Check the file size again. We’re aiming for less than 300 KB for large images and less than 100 KB for small images. Smaller is better.</li>\r\n	<li>Keep trying to lower the size or resolution until your file is as small as possible while still looking crisp. Even pros (like me!) go through some trial and error.</li>\r\n	<li>One very important thing to remember is that you CANNOT make a small image bigger. I mean, you can, but it will pixilate and look awful. So don’t do it!</li>\r\n</ul>\r\nHere are a few free and almost-free image editing software you can also check out:\r\n<ul>\r\n	<li><a href="http://resize.it/" target="_blank"><strong>Resize.it</strong></a>: Free</li>\r\n	<li><a href="https://itunes.apple.com/us/app/image-bucket/id415613856?mt=12" target="_blank"><strong>Image Bucket app</strong> (Mac): $4.99</a></li>\r\n	<li><a href="http://www.picresize.com" target="_blank"><strong>Picresize</strong></a>: Free</li>\r\n</ul>', 'Image Optimization for Your Site', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2016-01-11 09:54:45', '2016-01-11 09:54:45', '', 188, 'http://actorscompassdev.dev/2016/01/11/188-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2016-01-11 09:55:09', '2016-01-11 09:55:09', '', 'AC-how-to-format-your-acting-1', '', 'inherit', 'open', 'closed', '', 'ac-how-to-format-your-acting-1', '', '', '2016-01-11 09:55:09', '2016-01-11 09:55:09', '', 198, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2016-01-11 09:55:21', '2016-01-11 09:55:21', '&nbsp;\r\n\r\n<img class="size-medium wp-image-233 alignnone" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-1-300x154.jpg" alt="AC-how-to-format-your-acting-1" width="300" height="154" />\r\n\r\nIn my work as a web developer creating acting sites, I often spend a lot of time helping clients format their bios, images, resumes, etc. This, on top of spending time on my OWN actor branding package! One of the most common questions I receive is: "Can you format my resume so it doesn\'t look so sucky?" Yes, "sucky" is an official industry term. Fortunately, the answer to this question is yes. Today, I will focus on the content of your resume so it highlights the best of who you are and what you offer. <strong><a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-2/">Come back next week</a></strong> when I\'ll show you how to format it to get it both agent- and- casting-ready.\r\n<h2>CLEAR THE DECKS FOR YOUR STATS</h2>\r\nLet\'s start at the top of your page. We want to see your name nice and big -- big enough that it could be read from a few feet away, but not so huge that it looks like a mistake. Next should be your union affiliations -- SAG-e, AEA EMC, SAG-AFTRA, and all the others -- and contact info. This is not the place to put "seeking representation". If you have no union affiliations, just leave this blank and move on to your contact info. Email and a phone number are standard. If it skeeves you out to put your phone number out there, you can get a virtual number that will forward to your phone. You can get a virtual number through <a href="https://www.google.com/voice" target="_blank">Google Voice</a>, <a href="http://info.cloudphone.com/virtual-phone-number?gclid=CjwKEAjwpuSvBRDSkaes4OasuEESJACfwIc_spJQSuJL3GiRU1wp2230meDlQ5G-5TXdtgnur2afjhoCTJHw_wcB" target="_blank">CloudPhone</a>, and <a href="http://www.vonage.com/personal/features/virtual-phone-number" target="_blank">Vonage</a>, among others. List your website here as well if you have one.\r\n\r\nBelow your contact info is your stats. There are conflicting views these days on whether or not eye and hair color should be listed on resumes. Now that headshots are all in color, that info can be easily seen rather than read. I still leave that on mine because I\'m old-school like that. Also list your height and, if you\'re a singer, your voice range/part. Don\'t include your weight, unless you\'re extremely obese and you use that to book jobs. Don\'t include your clothing sizes, either. These two pieces of info can vary greatly and are better left off.\r\n<h2>CREDITS (OR, LEARN TO LOVE THE WHITE SPACE)</h2>\r\nIf you have an existing resume, take a good, long look at it. Read every line, every little detail with a critical eye. Are you still packing your credits from grade school on there? Is every teensy-tiny detail about your size, skills, teachers, favorite animals and what you did last summer listed? Do you spot any info that doesn’t belong or just taking up space?\r\n\r\nNow grab yourself a nice colored pen. Red works, and purple is fine too -- whatever you fancy. Go through your resume and SLASH those credits like a swashbuckler. Cross out all but three to five of your best credits per section (film, TV, theater, etc.). Take those grade school and high school credits -- heck, your college credits if you\'re in your 30s -- OFF. Leave only your very best work, the work you would love to showcase and discuss. I realize this is counter-intuitive, but we want as much white space as possible on this pretty little baby. No tiny fonts, tiny margins, or packed paragraphs. Just a nice list of your best work that can be skimmed in like 0.3 seconds before the start of your audition or meeting.\r\n\r\nThere is another huge debate over whether credits should be listed chronologically or not. I\'ll stamp my foot down and say a hearty "NOPE" to that foolish idea! I stand firmly on the belief that credits should be listed best first. Like I said before, list only three to five per section. You will prove your professionalism more convincingly by listing three strong films that you were the lead in rather than the four most recent web series you did where you played bit parts or had no lines at all.\r\n<h2>CAN YOU BURP ON COMMAND?</h2>\r\nBelow your credits are your training and skills. Start with training and make a little list of where you studied and with whom. Again, let\'s cherry-pick here. Put down only your best and most known or memorable training. In the skills section, list ONLY skills you can perform excellently when asked to in any situation. Be sure to end the section with something conversation-worthy. "Burp on command" is always a winner here.\r\n\r\n<hr />\r\n\r\nRemember, every part of your actor\'s business kit is a reflection of you as a performer. Don\'t let a messy resume be the boulder in the path of your big break!', 'How to Format Your Acting Resume Like a Pro, Part 1', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2016-01-11 09:55:21', '2016-01-11 09:55:21', '', 198, 'http://actorscompassdev.dev/2016/01/11/198-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2016-01-11 09:55:43', '2016-01-11 09:55:43', '', 'AC-how-to-format-your-acting-2-fig1', '', 'inherit', 'open', 'closed', '', 'ac-how-to-format-your-acting-2-fig1', '', '', '2016-01-11 09:55:43', '2016-01-11 09:55:43', '', 212, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig1.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2016-01-11 09:56:01', '2016-01-11 09:56:01', '', 'AC-how-to-format-your-acting-2-fig2', '', 'inherit', 'open', 'closed', '', 'ac-how-to-format-your-acting-2-fig2', '', '', '2016-01-11 09:56:01', '2016-01-11 09:56:01', '', 212, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig2.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2016-01-11 09:56:19', '2016-01-11 09:56:19', '', 'AC-how-to-format-your-acting-2-fig3', '', 'inherit', 'open', 'closed', '', 'ac-how-to-format-your-acting-2-fig3', '', '', '2016-01-11 09:56:19', '2016-01-11 09:56:19', '', 212, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig3.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2016-01-11 09:56:28', '2016-01-11 09:56:28', '<img class="alignnone size-full wp-image-209" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-1.jpg" alt="AC-how-to-format-your-acting-1" width="682" height="350" />\n\nIn <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>the first part</strong></a> of this series last week, I talked about what should and should not go into your actor resume. This week, I want to show you how to format your resume content so that (a) it looks professional and (b) grabs the attention that it deserves. You should know that I use Microsoft Word on a Mac to edit my resume. You\'ll have to translate these instructions to your computer setup if you use something else. Thankfully tools in all text editing software are pretty similar. Alright, here we go!\n<h2>YOUR INFO AND STATS, FRONT AND CENTER</h2>\nOr left-justified. Or right-justified.\n\nI mentioned this already <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last week</strong></a> but make sure that your name at the top of the page is big enough that it can be easily seen from a few feet away. The conventional placement of your name is in the center, but these days you can also place it to the left or the right, particularly if your name is kinda long. Union affiliations, contact information, and stats should go right under your name in the same font size as the rest of your resume. Justify (align) this text to match what you’ve got going on with your name above.\n<h2>GET DOWN WITH TABLES</h2>\nThe biggest mistake actors make on their resumes is to not use tables to format their credits. In the <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last post</strong></a>, I said that your res\' will be skimmed in 0.3 seconds. That\'s not a lie. The easiest way to make that skimming work for you is to make sure all everything is lined up nicely and make for an easy read. This does NOT mean hitting the space bar exactly 23 times between each word! Oh, Lordy, no. This means a you create a TABLE.\n\nPractice making tables on a clean document, not your best saved acting resume. It’s important to get tables right, and there are lots of things that could leave you crying in despair if you\'re unfamiliar with tables. Save yourself the tears and practice first until you get the hang of it.\n\nIn Word, the table feature usually has a little checkerboard icon. If you use Pages, Open Office, or something else to format your resume, you\'ll have to look for an icon that looks like this:\n\n<img class="alignnone size-full wp-image-235" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig1.jpg" alt="AC-how-to-format-your-acting-2-fig1" width="158" height="214" />\n\n&nbsp;\n\nFirst, make a table that has three columns and three rows. That will be enough to practice with. When you create your table, you\'ll often get a bigger checkerboard area where you can "drag" out the number of columns and rows you want. Make sure you stick with three columns, but you can go crazy with the number of rows if you feel like it. We can delete any extras later.\n\n<img class="alignnone size-full wp-image-236" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig2.jpg" alt="AC-how-to-format-your-acting-2-fig2" width="241" height="213" />\n\n&nbsp;\n\nNow that you have your table, you\'ll want to remove the borders. Huh? That\'s right, tables by default have lines, or borders, on all sides of them. What we want for your resume is a border-less table, so your credits can be lined up neatly but without all those criss-crossing lines that will be a distraction. In Word, you can edit the table you\'ve just created by clicking on it, and then clicking on the crosshairs icon that will show up in the upper-left side above the table. (See the screenshot below.) This is where gets interesting.\n\n<img class="alignnone size-medium wp-image-237" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig3-300x72.jpg" alt="AC-how-to-format-your-acting-2-fig3" width="300" height="72" />\n\n&nbsp;\n\nDouble-click on those crosshairs, and a whole new world will open up for you: a world of Table Properties. From here, we can click on the Borders and Shading button to get rid of those pesky borders.\n\n&nbsp;\n\n&nbsp;\n\nNow, look for a setting that says "None". Click it. Then rejoice. You have just removed your borders from your table.\n<h2>ENTER YOUR CREDITS LIKE A BOSS</h2>\nSince you\'re rocking the table, it\'s time to fill it in with your equally rocking credits. You\'ll want to make the first row of your table a "heading" row for your first section. Examples of sections would be: <em>Film</em>, <em>TV</em>, and <em>Theater</em>. Type the heading in bold (and possibly in all uppercase) in the very top left table cell.\n\nIn the next row, write out the name of either the film, series, or show you were in appropriate to that section. Remember, you want to list no more than three to five of your best work. Next, move to the table cell in the middle and type in your role. If it’s a film, TV, or web credit, the industry standard is to put <em>Lead</em>, <em>Supporting</em>, or <em>Co-Star</em> (which, despite popular belief, does NOT mean you are a lead) rather than the name of your role ("Becky the Cheerleader"). For theater credits, though, you can put your character\'s name, and maybe add <em>Lead</em>, <em>Supporting</em>, or <em>Co-Star</em> in parentheses if the show isn\'t well-known. In the third and final column, enter the production company, director, producer, theater, or TV network. I know that’s a lot of options. Basically, list the most-known person or organization responsible for that project. For example, if you were in a show at the Guthrie with a no-name director, I would suggest that you skip the director and list the Guthrie. Can you put down the director and theater (write it out like this: <em>director / theater</em>)? Or director and production company (<em>director / production company</em>)? Sure thing, special snowflake. Remember, this is about starting a conversation. And nothing starts a conversation better than, "Oh! You worked with so-and-so! I went to grad school with her. Tell me about that project!"\n\nLeave a blank row between each of your sections. Remember that nice white space I talked about <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last week</strong></a>? Yeah, we want that here too.\n\n"What if I Run Out of Rows?" you say? Good question! This can be a bit tricky, so keep breathing if it gives you trouble. Use your mouse to highlight the last row that you have. When you highlight this row, that checkerboard icon that helped you make a table in the first place will turn into a weird little group of boxes and arrows with the word Tables under it. See the screenshot, since I have no idea how to describe this. Needless to say, this is the magic row and column insertion button, and when you click it you\'ll get the option to add -- you guessed it -- either a row or a column. Add rows to your heart\'s content.\n\n<img class="alignnone size-full wp-image-217" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig5.jpg" alt="AC-how-to-format-your-acting-2-fig5" width="127" height="127" />\n\nWhat if you want to delete a row? Highlight that row with your mouse and then right-click. Choose the "Delete Cells" option, and then choose "Delete entire row". You are a now table master! Make sure you save your work, because you do NOT want to have to do that over again!\n<h2>YOU GOT SKILLZ</h2>\nAnd training too, right? Refer to <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/">part one</a> of this series for the content that should go here. As far as formatting goes, training and skills can be listed in paragraph form rather than in a table.\n<h2>TURN THAT SHIZZLE INTO A PDF</h2>\nYou did it! You formatted an excellent, professional-grade acting resume! Congratulations! Crack a beer! BUT ONLY AFTER YOU HIT SAVE. For the love of all that is holy, save, save, SAVE. In Word, you can save your file as a .doc or .docx file. But the best way to preserve your beautiful new formatting is to save as a PDF.\n\nHow do you do this? Fortunately, it\'s really simple these days. What used to require special software in the days of dinosaurs is now included in almost every text editor. From the File menu, choose "Save As", scroll down to PDF, name it something professional like "Yourlastname-Resume-2051.pdf", et voila! A PDF!\n\nPDFs are way easier to email to prospective casting directors or agents because they print out consistently from computer to computer and they can be opened by a lot of different software. This isn’t the case with documents saved with a .doc, .docx, or .pages extension. The worst thing would be to send a file that no one could read. They’ll just say, “Oh, well, next actor.”\n\nThe PDF format is also the ONLY way to ensure you can put your resume on your website and know that it won\'t get messed up. Folks can view or download your beautiful credits if they want to call you in -- or offer you a role sight unseen. Yes, that shit still happens (#truestory) but I guarantee it only happens to those who have properly formatted acting resumes.\n<h2>QUESTIONS?</h2>\nIf you\'ve made it this far, chances are you are either kicking butt, or banging your head against a digital wall. If the latter is happening, stop it right now. And stop stressing. Just shoot us an email and we\'ll see what we can do to help you get your actor\'s resume up to speed.\n\nRemember, every part of your actor\'s business kit is a reflection of you as a performer. Don\'t let a messy resume be the boulder in the path of your big break!', 'How to Format Your Acting Resume Like a Pro, Part 2', '', 'inherit', 'closed', 'closed', '', '212-autosave-v1', '', '', '2016-01-11 09:56:28', '2016-01-11 09:56:28', '', 212, 'http://actorscompassdev.dev/2016/01/11/212-autosave-v1/', 0, 'revision', '', 0),
(239, 1, '2016-01-11 09:56:34', '2016-01-11 09:56:34', '', 'AC-how-to-format-your-acting-2-fig4', '', 'inherit', 'open', 'closed', '', 'ac-how-to-format-your-acting-2-fig4', '', '', '2016-01-11 09:56:34', '2016-01-11 09:56:34', '', 212, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig4.png', 0, 'attachment', 'image/png', 0),
(240, 1, '2016-01-11 09:56:50', '2016-01-11 09:56:50', '', 'AC-how-to-format-your-acting-2-fig5', '', 'inherit', 'open', 'closed', '', 'ac-how-to-format-your-acting-2-fig5', '', '', '2016-01-11 09:56:50', '2016-01-11 09:56:50', '', 212, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig5.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2016-01-11 09:57:05', '2016-01-11 09:57:05', '<img class="alignnone size-full wp-image-209" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-1.jpg" alt="AC-how-to-format-your-acting-1" width="682" height="350" />\r\n\r\nIn <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>the first part</strong></a> of this series last week, I talked about what should and should not go into your actor resume. This week, I want to show you how to format your resume content so that (a) it looks professional and (b) grabs the attention that it deserves. You should know that I use Microsoft Word on a Mac to edit my resume. You\'ll have to translate these instructions to your computer setup if you use something else. Thankfully tools in all text editing software are pretty similar. Alright, here we go!\r\n<h2>YOUR INFO AND STATS, FRONT AND CENTER</h2>\r\nOr left-justified. Or right-justified.\r\n\r\nI mentioned this already <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last week</strong></a> but make sure that your name at the top of the page is big enough that it can be easily seen from a few feet away. The conventional placement of your name is in the center, but these days you can also place it to the left or the right, particularly if your name is kinda long. Union affiliations, contact information, and stats should go right under your name in the same font size as the rest of your resume. Justify (align) this text to match what you’ve got going on with your name above.\r\n<h2>GET DOWN WITH TABLES</h2>\r\nThe biggest mistake actors make on their resumes is to not use tables to format their credits. In the <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last post</strong></a>, I said that your res\' will be skimmed in 0.3 seconds. That\'s not a lie. The easiest way to make that skimming work for you is to make sure all everything is lined up nicely and make for an easy read. This does NOT mean hitting the space bar exactly 23 times between each word! Oh, Lordy, no. This means a you create a TABLE.\r\n\r\nPractice making tables on a clean document, not your best saved acting resume. It’s important to get tables right, and there are lots of things that could leave you crying in despair if you\'re unfamiliar with tables. Save yourself the tears and practice first until you get the hang of it.\r\n\r\nIn Word, the table feature usually has a little checkerboard icon. If you use Pages, Open Office, or something else to format your resume, you\'ll have to look for an icon that looks like this:\r\n\r\n<img class="alignnone size-full wp-image-235" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig1.jpg" alt="AC-how-to-format-your-acting-2-fig1" width="158" height="214" />\r\n\r\n&nbsp;\r\n\r\nFirst, make a table that has three columns and three rows. That will be enough to practice with. When you create your table, you\'ll often get a bigger checkerboard area where you can "drag" out the number of columns and rows you want. Make sure you stick with three columns, but you can go crazy with the number of rows if you feel like it. We can delete any extras later.\r\n\r\n<img class="alignnone size-full wp-image-236" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig2.jpg" alt="AC-how-to-format-your-acting-2-fig2" width="241" height="213" />\r\n\r\n&nbsp;\r\n\r\nNow that you have your table, you\'ll want to remove the borders. Huh? That\'s right, tables by default have lines, or borders, on all sides of them. What we want for your resume is a border-less table, so your credits can be lined up neatly but without all those criss-crossing lines that will be a distraction. In Word, you can edit the table you\'ve just created by clicking on it, and then clicking on the crosshairs icon that will show up in the upper-left side above the table. (See the screenshot below.) This is where gets interesting.\r\n\r\n<img class="alignnone size-medium wp-image-237" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig3-300x72.jpg" alt="AC-how-to-format-your-acting-2-fig3" width="300" height="72" />\r\n\r\n&nbsp;\r\n\r\nDouble-click on those crosshairs, and a whole new world will open up for you: a world of Table Properties. From here, we can click on the Borders and Shading button to get rid of those pesky borders.\r\n\r\n<img class="alignnone size-medium wp-image-239" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig4-300x121.png" alt="AC-how-to-format-your-acting-2-fig4" width="300" height="121" />\r\n\r\n&nbsp;\r\n\r\nNow, look for a setting that says "None". Click it. Then rejoice. You have just removed your borders from your table.\r\n<h2>ENTER YOUR CREDITS LIKE A BOSS</h2>\r\nSince you\'re rocking the table, it\'s time to fill it in with your equally rocking credits. You\'ll want to make the first row of your table a "heading" row for your first section. Examples of sections would be: <em>Film</em>, <em>TV</em>, and <em>Theater</em>. Type the heading in bold (and possibly in all uppercase) in the very top left table cell.\r\n\r\nIn the next row, write out the name of either the film, series, or show you were in appropriate to that section. Remember, you want to list no more than three to five of your best work. Next, move to the table cell in the middle and type in your role. If it’s a film, TV, or web credit, the industry standard is to put <em>Lead</em>, <em>Supporting</em>, or <em>Co-Star</em> (which, despite popular belief, does NOT mean you are a lead) rather than the name of your role ("Becky the Cheerleader"). For theater credits, though, you can put your character\'s name, and maybe add <em>Lead</em>, <em>Supporting</em>, or <em>Co-Star</em> in parentheses if the show isn\'t well-known. In the third and final column, enter the production company, director, producer, theater, or TV network. I know that’s a lot of options. Basically, list the most-known person or organization responsible for that project. For example, if you were in a show at the Guthrie with a no-name director, I would suggest that you skip the director and list the Guthrie. Can you put down the director and theater (write it out like this: <em>director / theater</em>)? Or director and production company (<em>director / production company</em>)? Sure thing, special snowflake. Remember, this is about starting a conversation. And nothing starts a conversation better than, "Oh! You worked with so-and-so! I went to grad school with her. Tell me about that project!"\r\n\r\nLeave a blank row between each of your sections. Remember that nice white space I talked about <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/"><strong>last week</strong></a>? Yeah, we want that here too.\r\n\r\n"What if I Run Out of Rows?" you say? Good question! This can be a bit tricky, so keep breathing if it gives you trouble. Use your mouse to highlight the last row that you have. When you highlight this row, that checkerboard icon that helped you make a table in the first place will turn into a weird little group of boxes and arrows with the word Tables under it. See the screenshot, since I have no idea how to describe this. Needless to say, this is the magic row and column insertion button, and when you click it you\'ll get the option to add -- you guessed it -- either a row or a column. Add rows to your heart\'s content.\r\n\r\n<img class="alignnone size-full wp-image-240" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-how-to-format-your-acting-2-fig5.jpg" alt="AC-how-to-format-your-acting-2-fig5" width="127" height="127" />\r\n\r\n&nbsp;\r\n\r\nWhat if you want to delete a row? Highlight that row with your mouse and then right-click. Choose the "Delete Cells" option, and then choose "Delete entire row". You are a now table master! Make sure you save your work, because you do NOT want to have to do that over again!\r\n<h2>YOU GOT SKILLZ</h2>\r\nAnd training too, right? Refer to <a href="http://actorscompassdev.dev/how-to-format-your-acting-resume-like-a-pro-part-1/">part one</a> of this series for the content that should go here. As far as formatting goes, training and skills can be listed in paragraph form rather than in a table.\r\n<h2>TURN THAT SHIZZLE INTO A PDF</h2>\r\nYou did it! You formatted an excellent, professional-grade acting resume! Congratulations! Crack a beer! BUT ONLY AFTER YOU HIT SAVE. For the love of all that is holy, save, save, SAVE. In Word, you can save your file as a .doc or .docx file. But the best way to preserve your beautiful new formatting is to save as a PDF.\r\n\r\nHow do you do this? Fortunately, it\'s really simple these days. What used to require special software in the days of dinosaurs is now included in almost every text editor. From the File menu, choose "Save As", scroll down to PDF, name it something professional like "Yourlastname-Resume-2051.pdf", et voila! A PDF!\r\n\r\nPDFs are way easier to email to prospective casting directors or agents because they print out consistently from computer to computer and they can be opened by a lot of different software. This isn’t the case with documents saved with a .doc, .docx, or .pages extension. The worst thing would be to send a file that no one could read. They’ll just say, “Oh, well, next actor.”\r\n\r\nThe PDF format is also the ONLY way to ensure you can put your resume on your website and know that it won\'t get messed up. Folks can view or download your beautiful credits if they want to call you in -- or offer you a role sight unseen. Yes, that shit still happens (#truestory) but I guarantee it only happens to those who have properly formatted acting resumes.\r\n<h2>QUESTIONS?</h2>\r\nIf you\'ve made it this far, chances are you are either kicking butt, or banging your head against a digital wall. If the latter is happening, stop it right now. And stop stressing. Just shoot us an email and we\'ll see what we can do to help you get your actor\'s resume up to speed.\r\n\r\nRemember, every part of your actor\'s business kit is a reflection of you as a performer. Don\'t let a messy resume be the boulder in the path of your big break!', 'How to Format Your Acting Resume Like a Pro, Part 2', '', 'inherit', 'closed', 'closed', '', '212-revision-v1', '', '', '2016-01-11 09:57:05', '2016-01-11 09:57:05', '', 212, 'http://actorscompassdev.dev/2016/01/11/212-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2016-01-11 09:57:24', '2016-01-11 09:57:24', '', 'AC-to-blog-or-not-to', '', 'inherit', 'open', 'closed', '', 'ac-to-blog-or-not-to', '', '', '2016-01-11 09:57:24', '2016-01-11 09:57:24', '', 227, 'http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-to-blog-or-not-to.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2016-01-11 09:57:32', '2016-01-11 09:57:32', '&nbsp;\r\n\r\n<img class="alignnone size-medium wp-image-242" src="http://actorscompassdev.dev/wp-content/uploads/2015/09/AC-to-blog-or-not-to-300x154.jpg" alt="AC-to-blog-or-not-to" width="300" height="154" />\r\n\r\nEveryone and their dog has a blog these days. I actually have four blogs (<strong><a href="https://thethinkfarm.wordpress.com" target="_blank">here</a></strong> and <strong><a href="https://caseandpoint.wordpress.com" target="_blank">here</a></strong> and <strong><a href="http://ktownismytown.com/category/news/" target="_blank">here</a></strong> and, of course, Actors Compass). I know, I need an intervention. But we’re not here to talk about me, we’re here to talk about you! Or, more specifically, your actor blog.\r\n\r\nA blog can be a handy way to showcase your personality, talent, and interests as well as to keep people up-to-date on your latest news. It can be a great tool to create community and build an online following but it’s only a great tool if used strategically and consistently. A haphazard or neglected blog becomes a liability, making you look out of touch or uninvested in your web presence. Having a blog simply to have more features on your website won’t cut it. It’s important to take a realistic, honest look within before you add a blog to your Actors Compass site. If blogging isn’t for you, it’s really no big whoop. There are other ways to promote yourself and be engaged with your audience and community. If you’re curious about these Other Ways, drop us a line at actorscompass@gmail.com and we’ll whip up an article in the future. For now, read on and, as you do, consider your specific online goals/needs and the reality of what goes into a successful blog to see if blogging is, in fact, for you.\r\n<h2>ONLINE STRATEGY</h2>\r\nAsk yourself this fundamental question: What kind of brand am I cultivating as an actor or performer? Would a blog be an important element in creating the kind of online presence that is right for me? It seems simple but these questions don\'t get asked way too often.\r\n<h2>AUDIENCE</h2>\r\nIt’s a good idea to picture your target audience in your mind. Go on, I\'ll wait.\r\n\r\nWho are you talking to? Are they visiting your site on a regular basis? If not, would you be able to direct them to the blog effectively? Identifying your audience helps you to develop your voice in a targeted way, shape your content and figure out what online platforms you should use to drive the right traffic -- i.e. your audience -- to your blog.\r\n<h2>YOUR VOICE</h2>\r\nWhen I talk about developing your voice, I don’t mean that you create a persona separate from the authentic you. It\'s important that your personality and unique perspective shine through, particularly for a blog of this nature. However, sometimes we need a little work to hit our stride in communicating our point-of-view effectively. Don’t be afraid to be funny, share things that are of interest to you, and write like you talk. You should consider proper grammar and spelling whenever appropriate because sloppy mistakes translate as careless and unprofessional. If the way you speak breaks some grammar rules and/or call for special spelling, though, go for it. Just try to avoid using four-letter words. Yes, you should be you. But for the purposes of a professional blog like this, you should be you after a shower and a great cup of coffee, not the drunk you at 2am shooting the sh--poop with your even drunker friends.\r\n<h2>GREAT CONTENT</h2>\r\nContent is king. And original content can provide insight not only into who you are but your creative process and talent. Subject matters such career news and upcoming performances as well as current affairs and trends are natural sources of original content. Even updating content on your site is blog-worthy. However, it’s also a good idea to have a list of other topics on hand -- a new insight into your craft or an actor you admire for their career choices, for example -- that can be strategically scheduled in along with time-sensitive posts.\r\n<h2>IMAGES</h2>\r\nReaders like to be stimulated visually. Punctuate the content of your post with thoughtful, beautiful, funny images. There are many resources out there for free images but I recently came across <strong><a href="http://www.splitshire.com" target="_blank">Splitshire</a></strong>, which has a library of stock photography that would be the envy of Instagrammers everywhere. Me, I\'m personally a fan of GIFs.\r\n\r\nGet \'em at <strong><a href="http://giphy.com" target="_blank">GIPHY.com</a></strong>.\r\n\r\nAlso, remember that an interesting post be an interesting photo with a quick, few sentences. Not every post has to be a Huffington Post piece you agonized over. This leads me to the next point …\r\n<h2>LINKS</h2>\r\nGreat content doesn’t always mean purely original content. Feel free to share links to articles and videos that you find interesting, informative and inspiring. Just make sure to credit the source and provide context for why you are sharing the content from your unique point-of-view, in your unique voice.\r\n\r\nLinks have the added bonus of helping your blog’s search engine rankings. This means that it’s a good practice to add links to your posts in general whenever they’re relevant. For example, if you are waxing poetic about the acting class you’re taking, don’t just mention it by name. Link the name of the course the teacher to the official website. They will appreciate your good deed, and may even consider returning the favor. What your mama told you about being nice to people applies to the web, not just real life.\r\n<h2>CONSISTENCY</h2>\r\nConsistency is key in keeping up a robust blog. Consistency in the tone and how content is organized and presented. Consistency in the frequency of new posts. You are not Buzzfeed so don’t stress about posting on a variety of topics on a daily basis. You are a god if you can post two to three times a week, golden if once a week and still in the game if you post once a month. However often you end up posting, keep your minimum goal consistent. And give yourself a break if you fall short from time to time. If you check out any of my blogs you\'ll see what I mean! Set the tone and expectation of what the blog is going to be like and stick to it. Schedule writing and posting times in your calendar to make sure blogging actually happens.\r\n\r\nOf course, plans and priorities change and your website, including your blog, should be able to accommodate that. But if you sound like you have multiple personality disorder in how you present yourself and your content, or if you haven’t posted in three months, you might want to rethink how you’re producing your blog content (Are you making the process too challenging? Are you really writing about things that are interesting to you?). You may even rethink having a blog, period.\r\n\r\n<hr />\r\n\r\nEven though I could go on and on about blogging rules and how-to’s, at the end of the day, consistent posting of thoughtful content from your unique perspective is what will make your blog a success. If you decide after reading this that you weren’t made to be a blogger, high five to you. Now you have hours of extra time you didn’t previously know you had to conquer the world. If you decide blogging is worth a try, high five to you too! To recap: figure out your audience, your voice, what you want to talk about and start blogging! You\'re gonna be awesome and I can’t wait to read all about it on your Actors Compass website. <em>(Smugly pats herself on the back for her sly self-promotion as she hits “publish”.)</em>', 'To Blog or Not to Blog', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2016-01-11 09:57:32', '2016-01-11 09:57:32', '', 227, 'http://actorscompassdev.dev/2016/01/11/227-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2016-03-06 23:47:56', '2016-03-06 23:47:56', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Resume', 'resume', 'publish', 'closed', 'closed', '', 'group_56dcbf52c3369', '', '', '2016-03-06 23:47:56', '2016-03-06 23:47:56', '', 0, 'http://actorscompassdev.dev/?post_type=acf-field-group&#038;p=246', 0, 'acf-field-group', '', 0),
(247, 1, '2016-03-06 23:47:56', '2016-03-06 23:47:56', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:18:"Add Another Credit";}', 'Resume Credits', 'resume_credits', 'publish', 'closed', 'closed', '', 'field_56dcbf8265338', '', '', '2016-03-06 23:47:56', '2016-03-06 23:47:56', '', 246, 'http://actorscompassdev.dev/?post_type=acf-field&p=247', 0, 'acf-field', '', 0),
(248, 1, '2016-03-06 23:47:56', '2016-03-06 23:47:56', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:32;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Credit Title', 'credit_title', 'publish', 'closed', 'closed', '', 'field_56dcbf8c65339', '', '', '2016-03-06 23:47:56', '2016-03-06 23:47:56', '', 247, 'http://actorscompassdev.dev/?post_type=acf-field&p=248', 0, 'acf-field', '', 0),
(249, 1, '2016-03-06 23:47:56', '2016-03-06 23:47:56', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:32;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Character', 'character', 'publish', 'closed', 'closed', '', 'field_56dcbfb76533a', '', '', '2016-03-06 23:47:56', '2016-03-06 23:47:56', '', 247, 'http://actorscompassdev.dev/?post_type=acf-field&p=249', 1, 'acf-field', '', 0),
(250, 1, '2016-03-06 23:47:56', '2016-03-06 23:47:56', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:32;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Producer / Director / Company', 'producer_director_company', 'publish', 'closed', 'closed', '', 'field_56dcbfc76533b', '', '', '2016-03-06 23:47:56', '2016-03-06 23:47:56', '', 247, 'http://actorscompassdev.dev/?post_type=acf-field&p=250', 2, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(251, 1, '2016-03-09 19:59:12', '2016-03-09 19:59:12', 'As an actor, you know you need a website. But what information do you put on your acting website?\n\nWhen a casting director, agent , director or producer look at your website, they are looking for specific things to determine if they should cast you for the role. Your website isn\'t for you, <em>it\'s for them.</em> Be sure to include the following elements on your website to give yourself the best change of landing the gig.\n<!--more-->\n&nbsp;\n<h2>1: Headshot</h2>\nAny actor worth their salt has plenty of headshots to choose from. Picking one strong headshot to display on the home page of your website gives a strong, clear depiction of you to a casting director. Choose a photo in which you are lit properly from all sides (no shadowy, moody headshots here - those can go in your gallery.) Your facial expression is important to consider, so be sure to choose a headshot that portrays the type of character you\'re aiming to get cast as.\n\n&nbsp;\n<h2>2: Reel</h2>\nA video reel of your acting work is absolutely essential in the entertainment industry today. If you don\'t have a reel, create your own using free software you can find online. Don\'t worry if its not "perfect" - having any kind of reel is better than no reel at all. Of course if you\'re in a position to invest in your acting career, enlisting some professional help in creating your acting reel is a smart move. Keep in mind that your reel needs to be brief and to the point. No casting director will watch 15 minutes of your work, no matter how great you are. Your acting reel should be no longer than three minutes long.\n\n&nbsp;\n<h2>3: Essential Info</h2>\nMake sure to include some basic information about yourself, and how to reach you. Casting agents are often looking for actors with specific characteristics: brown hair with hazel eyes, taller than 6\' with black hair, etc. They\'ll also want to know if you\'re affiliated with any unions.\n<ul>\n	<li>Height &amp; weight</li>\n	<li>Eye &amp; hair color</li>\n	<li>Union affiliations</li>\n	<li>Email address</li>\n	<li>Phone number</li>\n	<li>Agent info (if you have one)</li>\n</ul>\nHopefully after seeing your headshot and reel, the casting director will want to contact you to invite you to audition for the role. Good for you! But you might sabotage yourself if your contact information is hard to find. <b>Make your contact information <em>very</em> easy to find on your site.</b> Put your email address and phone number at the top and bottom of your site, and make a dedicated "Contact Me" page with the information as well.\n\n&nbsp;\n<h2>4: Credits &amp; Roles</h2>\nYou\'ve got a great look, your reel is great, and it seems like you fit the bill. But how experienced are you? Casting directors and producers will want to know what other films and/or shows you\'ve been in, to make sure you know how to handle yourself. List out your previous credits and roles in an easy-to-read way, and be sure to list the show title, your role, and the network/company it was for.\n\nIt can be tempting to list <em>all</em> the gigs you\'ve ever worked, but sometimes that can be overwhelming to look at. List the top 5 to 10 roles that you\'re the most proud of in a prominent place on your site. You can list all your work, but do it on a dedicated page on your site, so casting directors can see everything if they want to. On your home page, just put your favorites, so the see the highlights.\n\n&nbsp;\n<h2>5: Personality</h2>\nLastly (and maybe most importantly), your website needs to showcase your unique personality and character. There are a lot of other actors out there you have the same hair color, similar skills, and comparable experience - but there\'s only one of you. Show the casting director your special brand of personality so you stand out from the rest of the pack. You might include a few photos of you playing a more "niche" role, or include some quirky "fun facts" about yourself. Express yourself a little on your website, but don\'t go overboard; you want to be taken seriously, after all!\n\n&nbsp;\n\n&nbsp;\n\nIf you include those five things on your acting website, you\'ll have covered the most important bases that casting directors are looking for. You can continue to add things in the future, but keep in mind that sometimes less is more. You want a professional-looking site that shows you take your career seriously, and are prepared for the role they\'re offering. Don\'t have a website yet? Take a look at our acting website service and get a professional site - with all 5 must-haves - in minutes.', '5 Actor Website Must-Haves', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-03-09 19:59:12', '2016-03-09 19:59:12', '', 28, 'http://actorscompassdev.dev/2016/03/09/28-revision-v1/', 0, 'revision', '', 0),
(252, 1, '2016-03-09 20:01:09', '2016-03-09 20:01:09', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-03-09 20:01:09', '2016-03-09 20:01:09', '', 14, 'http://actorscompassdev.dev/2016/03/09/14-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2016-03-09 20:11:47', '2016-03-09 20:11:47', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2016-03-09 20:11:47', '2016-03-09 20:11:47', '', 0, 'http://actorscompassdev.dev/?p=253', 1, 'nav_menu_item', '', 0),
(254, 1, '2016-03-09 20:11:47', '2016-03-09 20:11:47', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2016-03-09 20:11:47', '2016-03-09 20:11:47', '', 0, 'http://actorscompassdev.dev/?p=254', 2, 'nav_menu_item', '', 0),
(255, 1, '2016-04-04 08:25:32', '2016-04-04 08:25:32', '<img class="alignnone size-medium wp-image-5" src="http://actorscompassdev.dev/wp-content/uploads/2016/01/ac-logo-300x24.png" alt="ac-logo" width="300" height="24" />', 'Pro Site', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-04-04 08:25:32', '2016-04-04 08:25:32', '', 19, 'http://actorscompassdev.dev/2016/04/04/19-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2016-04-04 08:25:51', '2016-04-04 08:25:51', '', 'Pro Site', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-04-04 08:25:51', '2016-04-04 08:25:51', '', 19, 'http://actorscompassdev.dev/2016/04/04/19-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2016-04-04 08:54:45', '2016-04-04 08:54:45', '', 'Get Your Site', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-04-04 08:54:45', '2016-04-04 08:54:45', '', 19, 'http://actorscompassdev.dev/2016/04/04/19-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_pro_sites`
#

DROP TABLE IF EXISTS `wp_pro_sites`;


#
# Table structure of table `wp_pro_sites`
#

CREATE TABLE `wp_pro_sites` (
  `blog_ID` bigint(20) NOT NULL,
  `level` int(3) NOT NULL DEFAULT '1',
  `expire` bigint(20) NOT NULL,
  `gateway` varchar(25) DEFAULT '',
  `term` varchar(25) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `is_recurring` tinyint(1) DEFAULT '1',
  `meta` longtext NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`blog_ID`),
  KEY `blog_ID` (`blog_ID`,`level`,`expire`),
  KEY `blog_ID_2` (`blog_ID`,`level`,`expire`),
  KEY `blog_ID_3` (`blog_ID`,`level`,`expire`),
  KEY `blog_ID_4` (`blog_ID`,`level`,`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_pro_sites`
#
INSERT INTO `wp_pro_sites` ( `blog_ID`, `level`, `expire`, `gateway`, `term`, `amount`, `is_recurring`, `meta`, `identifier`) VALUES
(2, 1, 9999999999, 'manual', 'Permanent', '', 1, '', NULL) ;

#
# End of data contents of table `wp_pro_sites`
# --------------------------------------------------------



#
# Delete any existing table `wp_pro_sites_daily_stats`
#

DROP TABLE IF EXISTS `wp_pro_sites_daily_stats`;


#
# Table structure of table `wp_pro_sites_daily_stats`
#

CREATE TABLE `wp_pro_sites_daily_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `supporter_count` int(10) NOT NULL DEFAULT '0',
  `expired_count` int(10) NOT NULL DEFAULT '0',
  `term_count_1` int(10) NOT NULL DEFAULT '0',
  `term_count_3` int(10) NOT NULL DEFAULT '0',
  `term_count_12` int(10) NOT NULL DEFAULT '0',
  `term_count_manual` int(10) NOT NULL DEFAULT '0',
  `level_count_1` int(10) NOT NULL DEFAULT '0',
  `level_count_2` int(10) NOT NULL DEFAULT '0',
  `level_count_3` int(10) NOT NULL DEFAULT '0',
  `level_count_4` int(10) NOT NULL DEFAULT '0',
  `level_count_5` int(10) NOT NULL DEFAULT '0',
  `level_count_6` int(10) NOT NULL DEFAULT '0',
  `level_count_7` int(10) NOT NULL DEFAULT '0',
  `level_count_8` int(10) NOT NULL DEFAULT '0',
  `level_count_9` int(10) NOT NULL DEFAULT '0',
  `level_count_10` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_pro_sites_daily_stats`
#
INSERT INTO `wp_pro_sites_daily_stats` ( `id`, `date`, `supporter_count`, `expired_count`, `term_count_1`, `term_count_3`, `term_count_12`, `term_count_manual`, `level_count_1`, `level_count_2`, `level_count_3`, `level_count_4`, `level_count_5`, `level_count_6`, `level_count_7`, `level_count_8`, `level_count_9`, `level_count_10`) VALUES
(1, '2016-01-12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2016-01-13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2016-01-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '2016-01-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '2016-01-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '2016-01-18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '2016-01-19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '2016-01-21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '2016-01-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '2016-01-23', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '2016-01-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '2016-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '2016-01-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '2016-01-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, '2016-01-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, '2016-01-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, '2016-01-30', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, '2016-01-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, '2016-02-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, '2016-02-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, '2016-02-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, '2016-02-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '2016-02-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '2016-02-06', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '2016-02-07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '2016-02-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '2016-02-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '2016-02-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '2016-02-11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, '2016-02-12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '2016-02-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, '2016-02-15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, '2016-02-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, '2016-02-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, '2016-02-18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, '2016-02-19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, '2016-02-20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, '2016-02-21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, '2016-02-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, '2016-02-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, '2016-02-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, '2016-02-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, '2016-02-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, '2016-02-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, '2016-03-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, '2016-03-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, '2016-03-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, '2016-03-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, '2016-03-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, '2016-03-06', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, '2016-03-07', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, '2016-03-08', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, '2016-03-09', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, '2016-03-10', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, '2016-03-12', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, '2016-03-13', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, '2016-03-14', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, '2016-03-15', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, '2016-03-17', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, '2016-03-18', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, '2016-03-19', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, '2016-03-20', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, '2016-03-21', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, '2016-03-22', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, '2016-03-23', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, '2016-03-24', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, '2016-03-25', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, '2016-03-26', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, '2016-03-27', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, '2016-03-28', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, '2016-03-29', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, '2016-03-30', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, '2016-04-01', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, '2016-04-02', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, '2016-04-03', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, '2016-04-04', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, '2016-04-05', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, '2016-05-19', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0) ;

#
# End of data contents of table `wp_pro_sites_daily_stats`
# --------------------------------------------------------



#
# Delete any existing table `wp_pro_sites_signup_stats`
#

DROP TABLE IF EXISTS `wp_pro_sites_signup_stats`;


#
# Table structure of table `wp_pro_sites_signup_stats`
#

CREATE TABLE `wp_pro_sites_signup_stats` (
  `action_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_ID` bigint(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `time_stamp` date NOT NULL,
  PRIMARY KEY (`action_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_pro_sites_signup_stats`
#

#
# End of data contents of table `wp_pro_sites_signup_stats`
# --------------------------------------------------------



#
# Delete any existing table `wp_pro_sites_transactions`
#

DROP TABLE IF EXISTS `wp_pro_sites_transactions`;


#
# Table structure of table `wp_pro_sites_transactions`
#

CREATE TABLE `wp_pro_sites_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `items` longtext NOT NULL,
  `total` decimal(13,4) NOT NULL DEFAULT '0.0000',
  `sub_total` decimal(13,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(13,4) NOT NULL DEFAULT '0.0000',
  `tax_percentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `country` varchar(3) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`transaction_id`),
  KEY `id_2` (`id`,`transaction_id`),
  KEY `id_3` (`id`,`transaction_id`),
  KEY `id_4` (`id`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_pro_sites_transactions`
#

#
# End of data contents of table `wp_pro_sites_transactions`
# --------------------------------------------------------



#
# Delete any existing table `wp_registration_log`
#

DROP TABLE IF EXISTS `wp_registration_log`;


#
# Table structure of table `wp_registration_log`
#

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_registration_log`
#
INSERT INTO `wp_registration_log` ( `ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'grant@kellerdigital.com', '76.171.79.85', 2, '2016-03-04 01:27:50'),
(2, 'kellermanage@gmail.com', '76.171.79.85', 3, '2016-03-09 20:38:42'),
(3, 'kellermanage@gmail.com', '76.171.79.85', 4, '2016-03-14 10:53:38'),
(4, 'shannon.1@bluestormcreative.com', '68.0.146.133', 5, '2016-03-22 19:12:17'),
(5, 'shannon.3@bluestormcreative.com', '127.0.0.1', 7, '2016-04-04 05:57:05'),
(6, 'shannon.7@bluestormcreative.com', '127.0.0.1', 8, '2016-04-04 09:33:11'),
(7, 'max@shannonmacmillan.com', '127.0.0.1', 9, '2016-04-04 10:01:17'),
(8, 'max.1@shannonmacmillan.com', '127.0.0.1', 10, '2016-04-04 10:05:36') ;

#
# End of data contents of table `wp_registration_log`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form`
#

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form_meta`
#

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_form_view`
#

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;


#
# Table structure of table `wp_rg_incomplete_submissions`
#

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead`
#

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail`
#

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_signups`
#

DROP TABLE IF EXISTS `wp_signups`;


#
# Table structure of table `wp_signups`
#

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_signups`
#
INSERT INTO `wp_signups` ( `signup_id`, `domain`, `path`, `title`, `user_login`, `user_email`, `registered`, `activated`, `active`, `activation_key`, `meta`) VALUES
(2, 'ih8allergies.actorscompassdev.com', '/', 'ihateallergies', 'ih8allergies', 'thethinkfarm@gmail.com', '2016-03-09 21:15:43', '0000-00-00 00:00:00', 0, '1b1c14dd678a1a83', 'a:3:{s:7:"lang_id";i:1;s:6:"public";i:1;s:13:"blog_template";s:0:"";}'),
(3, 'keller1.actorscompassdev.com', '/', 'Keller 1', 'keller1', 'kellermanage@gmail.com', '2016-03-14 10:53:38', '2016-03-14 10:53:38', 1, '52475e31f94dc5e4', 'a:3:{s:7:"lang_id";i:1;s:6:"public";i:1;s:13:"blog_template";s:0:"";}'),
(4, 'shannontest1.actorscompassdev.com', '/', 'Shannon MacMillan', 'shannontest1', 'shannon.1@bluestormcreative.com', '2016-03-22 19:12:17', '2016-03-22 19:12:17', 1, '7cf9c419ce1f809b', 'a:3:{s:7:"lang_id";i:1;s:6:"public";i:1;s:13:"blog_template";s:0:"";}'),
(5, 'testing.actorscompassdev.dev', '/', 'Shannon Testing 777', 'stesting777', 'shannon.7@bluestormcreative.com', '2016-04-04 09:33:10', '2016-04-04 09:33:10', 1, 'c83cb35f74ff16a9', 'a:3:{s:8:"password";s:428:"4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFE3Nzch";s:7:"lang_id";i:1;s:6:"public";i:1;}'),
(6, 'newtest.actorscompassdev.dev', '/', 'New Test', 'shannonnewtest', 'max@shannonmacmillan.com', '2016-04-04 10:01:17', '2016-04-04 10:01:17', 1, '07ab8b9410a82559', 'a:3:{s:8:"password";s:476:"4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFExMjMh";s:7:"lang_id";i:1;s:6:"public";i:1;}'),
(7, 'newtest2.actorscompassdev.dev', '/', 'New Test 2', 'newtest2', 'max.1@shannonmacmillan.com', '2016-04-04 10:05:35', '2016-04-04 10:05:35', 1, 'd613c2acb67a8597', 'a:3:{s:8:"password";s:476:"4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFHiiILiiILiiILiiILiiILigKJ4UeKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKIguKAonhR4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oiC4oCieFExMjMh";s:7:"lang_id";i:1;s:6:"public";i:1;}') ;

#
# End of data contents of table `wp_signups`
# --------------------------------------------------------



#
# Delete any existing table `wp_site`
#

DROP TABLE IF EXISTS `wp_site`;


#
# Table structure of table `wp_site`
#

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_site`
#
INSERT INTO `wp_site` ( `id`, `domain`, `path`) VALUES
(1, 'actorscompassdev.dev', '/') ;

#
# End of data contents of table `wp_site`
# --------------------------------------------------------



#
# Delete any existing table `wp_sitemeta`
#

DROP TABLE IF EXISTS `wp_sitemeta`;


#
# Table structure of table `wp_sitemeta`
#

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_sitemeta`
#
INSERT INTO `wp_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'ActorsCompass Sites'),
(2, 1, 'admin_email', 'shannon@bluestormcreative.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'all'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg wma m4a wav mp4 m4v webm ogv wmv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:7:"ACadmin";}'),
(9, 1, 'allowedthemes', 'a:2:{s:6:"AClite";b:1;s:13:"ActorsCompass";b:1;}'),
(10, 1, 'illegal_names', 'a:8:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:5:"files";}'),
(11, 1, 'wpmu_upgrade_site', '36686'),
(12, 1, 'welcome_email', 'Howdy USERNAME,\r\n\r\nYour new SITE_NAME site has been successfully set up at:\r\nBLOG_URL\r\n\r\nYou can log in to the administrator account with the following information:\r\n\r\nUsername: USERNAME\r\nPassword: PASSWORD\r\nLog in here: BLOG_URLwp-login.php\r\n\r\nWe hope you enjoy your new site. Thanks!\r\n\r\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to %s. This is your first post. Edit or delete it, then start blogging!'),
(14, 1, 'siteurl', 'http://actorscompassdev.dev/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '0'),
(17, 1, 'subdomain_install', '1'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '35700'),
(21, 1, 'active_sitewide_plugins', 'a:19:{s:53:"seedprod-coming-soon-pro/seedprod-coming-soon-pro.php";i:1452137167;s:19:"akismet/akismet.php";i:1452137174;s:40:"wpmudev-updates/update-notifications.php";i:1452483956;s:23:"pro-sites/pro-sites.php";i:1452483992;s:41:"better-wp-security/better-wp-security.php";i:1452629542;s:37:"tinymce-advanced/tinymce-advanced.php";i:1452629711;s:25:"wp-smush-pro/wp-smush.php";i:1452629804;s:51:"multisite-theme-manager/multisite-theme-manager.php";i:1452629833;s:52:"user-activation-keys/ds_wp3_user_activation_keys.php";i:1452629948;s:33:"user-switching/user-switching.php";i:1452630090;s:27:"updraftplus/updraftplus.php";i:1452630528;s:29:"gravityforms/gravityforms.php";i:1452631202;s:32:"wp-sync-db-master/wp-sync-db.php";i:1452719768;s:56:"wp-sync-db-media-files-master/wp-sync-db-media-files.php";i:1452719774;s:34:"advanced-custom-fields-pro/acf.php";i:1457307379;s:30:"advanced-custom-fields/acf.php";i:1457307392;s:73:"advanced-responsive-video-embedder/advanced-responsive-video-embedder.php";i:1457335205;s:35:"signup-password/signup-password.php";i:1459761430;s:45:"enhanced-text-widget/enhanced-text-widget.php";i:1459783775;}'),
(22, 1, 'WPLANG', ''),
(23, 1, 'auth_key', 'x,:?e[~~mcM*@>A)Ip:X{>Gd bX>,x1g0qmL[MS?,r6J7s~c7#X<DzzrYHtqsu,H'),
(24, 1, 'auth_salt', 'D7^XP34E~EA_U8(!%TCt~LDC+.KY<E$?Ix5bUjT0!EAfX;YxF-ToO{lVEAN!{>eK'),
(25, 1, 'logged_in_key', '=+JvrvR0_/!qP|j}StQ_EC}TP]<M@7PnXC}%:[,s2v2as#@cEB~2?$Pl[/gQ=L~o'),
(26, 1, 'logged_in_salt', '.3E*7[E6Sw6N;QL_4#aHfSib2!MCPW<q):u`I*$;4sw (y|$IAFvVa(ki~QX?bzh'),
(27, 1, 'nonce_key', '|F$|vd25mPb[2(v.Cs+ttCe(~^l<bZ8Q>K41P~qdecNb@s?ymtI+C6sKA@V()j66'),
(28, 1, 'nonce_salt', ';2)4o7K)kb[8NcgxnX>aMb-IyGWs,Kb2@`-Mx.|Ncj6C~Z@eRE`<6O&-vJZ=56T0'),
(36, 1, 'user_count', '11'),
(37, 1, 'blog_count', '9'),
(38, 1, 'can_compress_scripts', '0'),
(39, 1, 'recently_activated', 'a:0:{}'),
(44, 1, 'registrationnotification', 'yes'),
(45, 1, 'welcome_user_email', 'Howdy USERNAME,\r\n\r\nYour new account is set up.\r\n\r\nYou can log in with the following information:\r\nUsername: USERNAME\r\nPassword: PASSWORD\r\nLOGINLINK\r\n\r\nThanks!\r\n\r\n--The Team @ SITE_NAME'),
(74, 1, 'wdp_un_limit_to_user', 'a:1:{i:0;s:1:"1";}'),
(75, 1, 'wdp_un_refresh_updates_flag', '0'),
(76, 1, 'wdp_un_local_themes', 'a:0:{}'),
(81, 1, 'wdp_un_last_run', '1452483955'),
(82, 1, 'wdp_un_hide_upgrades', '0'),
(83, 1, 'wdp_un_hide_notices', '0'),
(84, 1, 'wdp_un_hide_releases', '0'),
(85, 1, 'wdp_un_updates_available', ''),
(86, 1, 'wdp_un_redirected', '1'),
(89, 1, 'wpmudev_apikey', '77b9d65cfa140bc095e895fb523534df6cd410ad') ;
INSERT INTO `wp_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
INSERT INTO `wp_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(92, 1, 'wdp_un_last_run_updates', '1463701473'),
(95, 1, 'psts_settings', 'a:131:{s:12:"base_country";s:2:"US";s:8:"currency";s:3:"USD";s:20:"curr_symbol_position";i:1;s:12:"curr_decimal";i:1;s:7:"rebrand";s:6:"AC Pro";s:10:"lbl_signup";s:11:"Pro Upgrade";s:8:"lbl_curr";s:12:"Your Account";s:16:"gateways_enabled";a:1:{i:0;s:33:"ProSites_Gateway_PayPalExpressPro";}s:15:"modules_enabled";a:2:{i:0;s:23:"ProSites_Module_Writing";i:1;s:21:"ProSites_Module_Quota";}s:15:"enabled_periods";a:3:{i:0;i:1;i:1;i:3;i:2;i:12;}s:13:"send_receipts";i:0;s:14:"hide_adminmenu";s:1:"1";s:13:"hide_adminbar";i:0;s:19:"hide_adminbar_super";i:0;s:11:"show_signup";s:1:"1";s:19:"show_signup_message";s:1:"1";s:11:"free_signup";s:1:"1";s:15:"multiple_signup";i:0;s:9:"free_name";s:7:"AC Lite";s:8:"free_msg";s:0:"";s:11:"trial_level";s:1:"1";s:10:"trial_days";s:1:"0";s:13:"trial_message";s:98:"You have DAYS days left in your LEVEL free trial. Checkout now to prevent losing LEVEL features »";s:14:"cancel_message";s:345:"Your DAYS day trial begins once you click "Subscribe" below. We perform a $1 pre-authorization to ensure your credit card is valid, but we won\'t actually charge your card until the end of your trial. If you don\'t cancel by day DAYS, your card will be charged for the subscription amount shown above. You can cancel your subscription at any time.";s:23:"recurring_subscriptions";s:1:"1";s:12:"ga_ecommerce";s:4:"none";s:14:"signup_message";s:32:"Set up your Actors Compass site.";s:15:"feature_message";s:42:"Upgrade to LEVEL to access this feature »";s:14:"active_message";s:203:"Your Pro Site privileges will expire on: DATE<br />Unless you have canceled your subscription or your site was upgraded via the Bulk Upgrades tool, your Pro Site privileges will automatically be renewed.";s:15:"success_subject";s:41:"Thank you for becoming a Pro Site member!";s:11:"success_msg";s:461:"Thank you for becoming a Pro Site member!\r\n\r\nWe have received your first subscription payment and you can now access all LEVEL features!\r\n\r\nSubscription payments should show on your credit card or bank statement as "THIS COMPANY". If you ever need to view, modify, upgrade, or cancel your Pro Site subscription you can do so here:\r\nCHECKOUTURL\r\n\r\nIf you ever have any billing questions please contact us:\r\nhttp://mysite.com/contact/\r\n\r\nThanks again for joining!";s:16:"canceled_subject";s:44:"Your Pro Site subscription has been canceled";s:12:"canceled_msg";s:268:"Your Pro Site subscription has been canceled.\r\n\r\nYou should continue to have access until ENDDATE.\r\n\r\nWe are very sorry to see you go, but we are looking forward to you subscribing to our services again.\r\n\r\nYou can resubscribe at any time here:\r\nCHECKOUTURL\r\n\r\nThanks!";s:15:"receipt_subject";s:29:"Your Pro Site payment receipt";s:11:"receipt_msg";s:404:"Your Pro Site subscription payment was successful!\r\n\r\nPAYMENTINFO\r\n\r\nSubscription payments should show on your credit card or bank statement as "YOUR COMPANY". If you ever need to view, modify, upgrade, or cancel your Pro Site subscription you can do so here:\r\nCHECKOUTURL\r\n\r\nIf you ever have any billing questions please contact us:\r\nhttp://mysite.com/contact/\r\n\r\nThanks again for being a valued member!";s:15:"expired_subject";s:32:"Your Pro Site status has expired";s:11:"expired_msg";s:281:"Unfortunately the Pro status for your site SITENAME (SITEURL) has lapsed.\r\n\r\nYou can renew your Pro Site status here:\r\nCHECKOUTURL\r\n\r\nIf you\'re having billing problems please contact us for help:\r\nhttp://mysite.com/contact/\r\n\r\nLooking forward to having you back as a valued member!";s:14:"failed_subject";s:41:"Your Pro Site subscription payment failed";s:10:"failed_msg";s:366:"It seems like there is a problem with your latest Pro Site subscription payment, sorry about that.\r\n\r\nPlease update your payment information or change your payment method as soon as possible to avoid a lapse in Pro Site features. If you\'re still having billing problems please contact us for help:\r\nhttp://mysite.com/contact/\r\n\r\nMany thanks again for being a member!";s:17:"extension_subject";s:45:"You have been given free Pro Site membership.";s:13:"extension_msg";s:312:"We have given you Pro Site access. You will now be able to enjoy all the benefits of being a Pro Site member.\r\n\r\nThese benefits will be available to you until: ENDDATE.\r\n\r\nAfter this date your site will revert back to a standard site.\r\n\r\nYou can subscribe at any time from the link below:\r\nCHECKOUTURL\r\n\r\nThanks!";s:15:"revoked_subject";s:43:"Your permanent Pro Site status has changed.";s:11:"revoked_msg";s:278:"Your permanent Pro Site status has been removed. You will continue to have all the benefits of your Pro Site membership until ENDDATE.\r\n\r\nAfter this date your site will revert back to a standard site.\r\n\r\nYou can subscribe at any time from the link below:\r\nCHECKOUTURL\r\n\r\nThanks!";s:9:"pypl_site";s:2:"US";s:13:"pypl_currency";s:3:"USD";s:11:"pypl_status";s:4:"test";s:15:"pypl_enable_pro";i:0;s:10:"stripe_ssl";i:0;s:7:"mp_name";s:14:"Manual Payment";s:12:"mp_show_form";i:0;s:8:"mp_email";s:29:"shannon@bluestormcreative.com";s:7:"pt_name";s:14:"Premium Themes";s:7:"pt_text";s:55:"Upgrade to LEVEL to activate this premium theme &raquo;";s:8:"ps_level";i:1;s:8:"ps_email";s:29:"shannon@bluestormcreative.com";s:7:"ps_name";s:15:"Premium Support";s:10:"ps_message";s:93:"You can send us a priority direct email support request here if you need help with your site.";s:9:"ps_notice";s:58:"To enable premium support, please upgrade to LEVEL &raquo;";s:16:"publishing_level";s:1:"1";s:24:"publishing_message_posts";s:54:"To enable publishing posts, please upgrade to LEVEL »";s:24:"publishing_message_pages";s:54:"To enable publishing pages, please upgrade to LEVEL »";s:13:"quota_message";s:44:"For SPACE of upload space, upgrade to LEVEL!";s:17:"quota_out_message";s:86:"You are out of upload space! Please upgrade to LEVEL to enable SPACE of storage space.";s:12:"xmlrpc_level";i:1;s:14:"xmlrpc_message";s:67:"To enable XML-RPC remote publishing please upgrade to LEVEL &raquo;";s:9:"bp_notice";s:47:"Upgrade to LEVEL to access this feature &raquo;";s:7:"pp_name";s:15:"Premium Plugins";s:8:"ads_name";s:11:"Disable Ads";s:9:"ads_level";i:1;s:16:"ads_enable_blogs";i:0;s:9:"ads_count";i:3;s:15:"ads_before_page";i:0;s:14:"ads_after_page";i:0;s:15:"ads_before_post";i:0;s:14:"ads_after_post";i:0;s:10:"ads_themes";i:0;s:8:"bu_email";b:0;s:9:"bu_status";s:4:"test";s:15:"bu_payment_type";s:9:"recurring";s:8:"bu_level";i:1;s:12:"bu_credits_1";i:10;s:13:"bu_option_msg";s:59:"Upgrade CREDITS sites to LEVEL for one year for only PRICE:";s:15:"bu_checkout_msg";s:278:"You can upgrade multiple sites at a lower cost by purchasing Pro Site credits below. After purchasing your credits just come back to this page, search for your sites via the tool at the bottom of the page, and upgrade them to Pro Site status. Each site is upgraded for one year.";s:14:"bu_payment_msg";s:177:"Depending on your payment method it may take just a few minutes (Credit Card or PayPal funds) or it may take several days (eCheck) for your Pro Site credits to become available.";s:7:"bu_name";s:13:"Bulk Upgrades";s:11:"bu_link_msg";s:68:"Purchase credits to upgrade multiple sites for one discounted price!";s:17:"ptb_front_disable";i:1;s:13:"ptb_front_msg";s:85:"This site is temporarily disabled until payment is received. Please check back later.";s:16:"ptb_checkout_msg";s:33:"You must pay to enable your site.";s:8:"pq_level";i:1;s:9:"pq_quotas";a:2:{s:4:"post";a:1:{s:5:"quota";s:9:"unlimited";}s:4:"page";a:1:{s:5:"quota";s:9:"unlimited";}}s:8:"uh_level";i:1;s:10:"uh_message";s:61:"To enable the embedding html, please upgrade to LEVEL &raquo;";s:10:"co_pricing";s:8:"disabled";s:19:"plans_table_enabled";s:8:"disabled";i:0;b:0;s:7:"version";s:5:"3.5.4";s:13:"checkout_page";i:19;s:12:"checkout_url";s:37:"http://actorscompassdev.dev/pro-site/";s:19:"psts_force_redirect";i:0;s:14:"checkout_roles";a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}s:9:"setup_fee";s:0:"";s:23:"apply_setup_fee_upgrade";i:0;s:13:"pt_sortthemes";s:0:"";s:13:"pypl_api_user";s:28:"actorscompass_api1.gmail.com";s:13:"pypl_api_pass";s:16:"744MNNMS9YDXDQ5W";s:12:"pypl_api_sig";s:56:"AFcWxV21C7fd0v3bYYYRCpSSRl31A8.-Yh9BXO.iXU2Ks1OpPsC5jkF3";s:15:"pypl_header_img";s:0:"";s:18:"pypl_header_border";s:0:"";s:16:"pypl_header_back";s:0:"";s:14:"pypl_page_back";s:0:"";s:13:"pypl_thankyou";s:0:"";s:23:"gateway_pref_use_manual";s:3:"off";s:20:"gateway_pref_primary";s:6:"paypal";s:30:"checkout_gateway_primary_label";s:7:"Payment";s:22:"gateway_pref_secondary";s:4:"none";s:32:"checkout_gateway_secondary_label";s:17:"Alternate Payment";s:29:"pricing_table_period_position";s:7:"option2";s:15:"coupons_enabled";s:8:"disabled";s:29:"pricing_table_coupon_position";s:7:"option2";s:27:"psts_checkout_show_featured";s:7:"enabled";s:22:"pricing_gateways_style";s:6:"tabbed";s:20:"pricing_levels_order";s:1:"1";s:23:"pricing_gateways_tabbed";s:8:"disabled";s:24:"comparison_table_enabled";s:8:"disabled";s:13:"feature_table";a:6:{s:8:"custom-1";a:5:{s:6:"custom";s:8:"custom-1";s:7:"visible";i:1;s:4:"name";s:17:"This is a feature";s:11:"description";s:19:"Feature description";s:6:"levels";a:1:{i:1;a:2:{s:6:"status";s:4:"tick";s:4:"text";s:11:"Custom text";}}}s:11:"pay-to-blog";a:6:{s:6:"module";s:25:"ProSites_Module_PayToBlog";s:10:"module_key";s:11:"pay-to-blog";s:4:"name";s:11:"Pay To Blog";s:11:"description";s:75:"Allows you to completely disable a site both front end and back until paid.";s:6:"active";s:6:"module";s:6:"levels";a:1:{i:1;a:1:{s:4:"text";s:7:"Level 1";}}}s:12:"upload-quota";a:5:{s:6:"module";s:21:"ProSites_Module_Quota";s:10:"module_key";s:12:"upload-quota";s:4:"name";s:12:"Upload Quota";s:11:"description";s:56:"Allows you to give additional upload space to Pro Sites.";s:6:"levels";a:1:{i:1;a:2:{s:6:"status";a:4:{s:4:"type";s:5:"space";s:7:"display";s:3:"1GB";s:5:"value";s:4:"1024";s:9:"selection";s:4:"1024";}s:4:"text";s:7:"Level 1";}}}s:7:"modules";s:47:"ProSites_Module_PayToBlog,ProSites_Module_Quota";s:6:"levels";s:1:"1";s:13:"feature_order";s:33:"custom-1,pay-to-blog,upload-quota";}s:20:"pricing_table_layout";s:7:"option2";s:14:"checkout_style";a:89:{s:23:"pricing_style_column_bg";s:7:"#dd3333";s:32:"pricing_style_column_bg_selected";s:0:"";s:32:"pricing_style_column_bg_featured";s:0:"";s:26:"pricing_style_border_color";s:0:"";s:35:"pricing_style_border_color_selected";s:0:"";s:35:"pricing_style_border_color_featured";s:0:"";s:26:"pricing_style_border_width";s:1:"0";s:35:"pricing_style_border_width_selected";s:1:"0";s:35:"pricing_style_border_width_featured";s:1:"0";s:25:"pricing_style_title_color";s:0:"";s:34:"pricing_style_title_color_selected";s:0:"";s:34:"pricing_style_title_color_featured";s:0:"";s:22:"pricing_style_title_bg";s:0:"";s:31:"pricing_style_title_bg_selected";s:0:"";s:31:"pricing_style_title_bg_featured";s:0:"";s:25:"pricing_style_price_color";s:0:"";s:34:"pricing_style_price_color_selected";s:0:"";s:34:"pricing_style_price_color_featured";s:0:"";s:22:"pricing_style_price_bg";s:0:"";s:31:"pricing_style_price_bg_selected";s:0:"";s:31:"pricing_style_price_bg_featured";s:0:"";s:33:"pricing_style_price_summary_color";s:0:"";s:42:"pricing_style_price_summary_color_selected";s:0:"";s:42:"pricing_style_price_summary_color_featured";s:0:"";s:30:"pricing_style_price_summary_bg";s:0:"";s:39:"pricing_style_price_summary_bg_selected";s:0:"";s:39:"pricing_style_price_summary_bg_featured";s:0:"";s:28:"pricing_style_subtitle_color";s:0:"";s:25:"pricing_style_subtitle_bg";s:0:"";s:34:"pricing_style_subtitle_bg_selected";s:0:"";s:34:"pricing_style_subtitle_bg_featured";s:0:"";s:33:"pricing_style_features_text_color";s:0:"";s:42:"pricing_style_features_text_color_selected";s:0:"";s:42:"pricing_style_features_text_color_featured";s:0:"";s:30:"pricing_style_features_text_bg";s:0:"";s:39:"pricing_style_features_text_bg_selected";s:0:"";s:39:"pricing_style_features_text_bg_featured";s:0:"";s:37:"pricing_style_features_alt_text_color";s:0:"";s:46:"pricing_style_features_alt_text_color_selected";s:0:"";s:46:"pricing_style_features_alt_text_color_featured";s:0:"";s:29:"pricing_style_features_alt_bg";s:0:"";s:38:"pricing_style_features_alt_bg_selected";s:0:"";s:38:"pricing_style_features_alt_bg_featured";s:0:"";s:30:"pricing_style_button_container";s:0:"";s:39:"pricing_style_button_container_selected";s:0:"";s:39:"pricing_style_button_container_featured";s:0:"";s:31:"pricing_style_button_text_color";s:0:"";s:40:"pricing_style_button_text_color_selected";s:0:"";s:40:"pricing_style_button_text_color_featured";s:0:"";s:23:"pricing_style_button_bg";s:0:"";s:32:"pricing_style_button_bg_selected";s:0:"";s:32:"pricing_style_button_bg_featured";s:0:"";s:37:"pricing_style_button_hover_text_color";s:0:"";s:46:"pricing_style_button_hover_text_color_selected";s:0:"";s:46:"pricing_style_button_hover_text_color_featured";s:0:"";s:29:"pricing_style_button_hover_bg";s:0:"";s:38:"pricing_style_button_hover_bg_selected";s:0:"";s:38:"pricing_style_button_hover_bg_featured";s:0:"";s:33:"pricing_style_period_border_color";s:0:"";s:42:"pricing_style_period_border_color_selected";s:0:"";s:39:"pricing_style_period_border_color_hover";s:0:"";s:27:"pricing_style_monthly_color";s:0:"";s:36:"pricing_style_monthly_color_selected";s:0:"";s:33:"pricing_style_monthly_color_hover";s:0:"";s:24:"pricing_style_monthly_bg";s:0:"";s:33:"pricing_style_monthly_bg_selected";s:0:"";s:30:"pricing_style_monthly_bg_hover";s:0:"";s:29:"pricing_style_quarterly_color";s:0:"";s:38:"pricing_style_quarterly_color_selected";s:0:"";s:35:"pricing_style_quarterly_color_hover";s:0:"";s:26:"pricing_style_quarterly_bg";s:0:"";s:35:"pricing_style_quarterly_bg_selected";s:0:"";s:32:"pricing_style_quarterly_bg_hover";s:0:"";s:28:"pricing_style_annually_color";s:0:"";s:37:"pricing_style_annually_color_selected";s:0:"";s:34:"pricing_style_annually_color_hover";s:0:"";s:25:"pricing_style_annually_bg";s:0:"";s:34:"pricing_style_annually_bg_selected";s:0:"";s:31:"pricing_style_annually_bg_hover";s:0:"";s:26:"pricing_style_period_align";s:4:"none";s:30:"pricing_style_coupon_column_bg";s:0:"";s:33:"pricing_style_coupon_border_color";s:0:"";s:33:"pricing_style_coupon_border_width";s:1:"0";s:38:"pricing_style_coupon_button_text_color";s:0:"";s:30:"pricing_style_coupon_button_bg";s:0:"";s:44:"pricing_style_coupon_button_hover_text_color";s:0:"";s:36:"pricing_style_coupon_button_hover_bg";s:0:"";s:26:"pricing_style_coupon_align";s:4:"none";s:24:"pricing_table_custom_css";s:0:"";}s:17:"pt_allowed_themes";a:0:{}s:16:"publishing_posts";i:1;s:16:"publishing_pages";i:1;}'),
(96, 1, 'psts_levels', 'a:1:{i:1;a:6:{s:4:"name";s:3:"Pro";s:7:"price_1";d:19;s:7:"price_3";d:57;s:8:"price_12";d:228;s:10:"is_visible";i:0;s:5:"quota";s:4:"1024";}}'),
(97, 1, 'wdp_un_delay', '1452570392'),
(260, 1, 'wdp_un_dismissed_release', '1050346'),
(277, 1, 'itsec_data', 'a:5:{s:5:"build";i:4040;s:20:"activation_timestamp";i:1452629542;s:17:"already_supported";b:1;s:15:"setup_completed";b:1;s:18:"tooltips_dismissed";b:1;}'),
(278, 1, 'itsec_global', 'a:24:{s:18:"notification_email";a:1:{i:0;s:29:"shannon@bluestormcreative.com";}s:12:"backup_email";a:1:{i:0;s:29:"shannon@bluestormcreative.com";}s:15:"lockout_message";s:5:"error";s:20:"user_lockout_message";s:64:"You have been locked out due to too many invalid login attempts.";s:25:"community_lockout_message";s:77:"Your IP address has been flagged as a threat by the iThemes Security network.";s:9:"blacklist";b:1;s:15:"blacklist_count";i:3;s:16:"blacklist_period";i:7;s:19:"email_notifications";b:1;s:14:"lockout_period";i:15;s:18:"lockout_white_list";a:0:{}s:12:"log_rotation";i:14;s:8:"log_type";i:0;s:12:"log_location";s:91:"/srv/users/actorscompass/apps/actorscompass/public/wp-content/uploads/ithemes-security/logs";s:14:"allow_tracking";b:0;s:11:"write_files";b:1;s:10:"nginx_file";s:61:"/srv/users/actorscompass/apps/actorscompass/public/nginx.conf";s:24:"infinitewp_compatibility";b:0;s:11:"did_upgrade";b:0;s:9:"lock_file";b:0;s:12:"digest_email";b:0;s:14:"proxy_override";b:0;s:14:"hide_admin_bar";b:0;s:8:"log_info";s:19:"actorscompass-Od1AI";}'),
(279, 1, 'itsec_initials', 'a:3:{s:5:"login";b:0;s:5:"admin";b:0;s:11:"file_editor";b:0;}'),
(281, 1, 'itsec_ipcheck', 'a:1:{s:7:"api_ban";b:1;}'),
(282, 1, 'itsec_four_oh_four', 'a:5:{s:7:"enabled";b:0;s:12:"check_period";i:5;s:15:"error_threshold";i:20;s:10:"white_list";a:9:{i:0;s:12:"/favicon.ico";i:1;s:11:"/robots.txt";i:2;s:21:"/apple-touch-icon.png";i:3;s:33:"/apple-touch-icon-precomposed.png";i:4;s:17:"/wp-content/cache";i:5;s:18:"/browserconfig.xml";i:6;s:16:"/crossdomain.xml";i:7;s:11:"/labels.rdf";i:8;s:27:"/trafficbasedsspsitemap.xml";}s:5:"types";a:5:{i:0;s:4:".jpg";i:1;s:5:".jpeg";i:2;s:4:".png";i:3;s:4:".gif";i:4;s:4:".css";}}'),
(283, 1, 'itsec_away_mode', 'a:4:{s:7:"enabled";b:0;s:4:"type";b:0;s:5:"start";i:1;s:3:"end";i:1;}'),
(284, 1, 'itsec_ban_users', 'a:4:{s:7:"enabled";b:0;s:7:"default";b:0;s:9:"host_list";a:0:{}s:10:"agent_list";a:0:{}}'),
(286, 1, 'itsec_brute_force', 'a:5:{s:7:"enabled";b:1;s:17:"max_attempts_host";i:5;s:17:"max_attempts_user";i:10;s:12:"check_period";i:5;s:14:"auto_ban_admin";b:0;}'),
(287, 1, 'itsec_backup', 'a:9:{s:7:"enabled";b:0;s:8:"interval";i:3;s:9:"all_sites";b:0;s:6:"method";i:1;s:8:"location";s:94:"/srv/users/actorscompass/apps/actorscompass/public/wp-content/uploads/ithemes-security/backups";s:8:"last_run";i:0;s:3:"zip";b:1;s:7:"exclude";a:3:{i:0;s:9:"itsec_log";i:1;s:10:"itsec_temp";i:2;s:14:"itsec_lockouts";}s:6:"retain";i:0;}'),
(288, 1, 'itsec_file_change', 'a:8:{s:7:"enabled";b:0;s:5:"split";b:0;s:9:"file_list";a:0:{}s:6:"method";b:1;s:5:"types";a:6:{i:0;s:4:".jpg";i:1;s:5:".jpeg";i:2;s:4:".png";i:3;s:4:".log";i:4;s:3:".mo";i:5;s:3:".po";}s:5:"email";b:1;s:8:"last_run";i:0;s:12:"notify_admin";b:1;}'),
(289, 1, 'itsec_hide_backend', 'a:7:{s:7:"enabled";b:0;s:4:"slug";s:7:"wplogin";s:8:"register";s:15:"wp-register.php";s:12:"theme_compat";b:1;s:17:"theme_compat_slug";s:9:"not_found";s:16:"post_logout_slug";s:0:"";s:12:"show-tooltip";b:0;}'),
(290, 1, 'itsec_malware', 'a:2:{s:7:"enabled";b:0;s:7:"api_key";s:0:"";}'),
(291, 1, 'itsec_ssl', 'a:3:{s:8:"frontend";i:0;s:5:"admin";b:0;s:5:"login";b:0;}'),
(293, 1, 'itsec_strong_passwords', 'a:2:{s:7:"enabled";b:1;s:4:"roll";s:13:"administrator";}'),
(294, 1, 'itsec_tweaks', 'a:21:{s:13:"protect_files";b:0;s:18:"directory_browsing";b:0;s:15:"request_methods";b:0;s:24:"suspicious_query_strings";b:0;s:22:"non_english_characters";b:0;s:16:"long_url_strings";b:0;s:17:"write_permissions";b:0;s:18:"wlwmanifest_header";b:1;s:14:"edituri_header";b:0;s:13:"theme_updates";b:1;s:14:"plugin_updates";b:1;s:12:"core_updates";b:1;s:12:"comment_spam";b:0;s:11:"file_editor";b:0;s:14:"disable_xmlrpc";i:0;s:22:"allow_xmlrpc_multiauth";b:1;s:11:"uploads_php";b:0;s:12:"login_errors";b:1;s:21:"force_unique_nicename";b:1;s:27:"disable_unused_author_pages";b:1;s:11:"safe_jquery";b:0;}'),
(296, 1, 'itsec_manual_update', '1'),
(298, 1, 'wdp_un_profile_data', 'a:3:{s:5:"forum";a:1:{s:15:"support_threads";a:2:{i:0;a:7:{s:5:"title";s:59:"Can&#039;t complete registration - no relevant button shown";s:4:"link";s:103:"http://premium.wpmudev.org/forums/topic/cant-complete-registration-no-relevant-button-shown#post-788286";s:9:"timestamp";s:10:"1417975547";s:4:"user";s:11:"Vinod Dalvi";s:6:"status";s:12:"not_resolved";s:6:"unread";b:1;s:5:"posts";s:1:"5";}i:1;a:7:{s:5:"title";s:66:"Help troubleshooting a full-width, full-height, slider driven site";s:4:"link";s:116:"http://premium.wpmudev.org/forums/topic/help-troubleshooting-a-full-width-full-height-slider-driven-site#post-636963";s:9:"timestamp";s:10:"1395865999";s:4:"user";s:7:"Patrick";s:6:"status";s:12:"not_resolved";s:6:"unread";b:1;s:5:"posts";s:1:"5";}}}s:7:"profile";a:5:{s:4:"name";s:5:"Grant";s:9:"user_name";s:8:"gdkeller";s:12:"member_since";i:1355820456;s:6:"avatar";s:185:"https://secure.gravatar.com/avatar/7f53b10871e591d376c9efff2a08cd31?s=150&d=https%3A%2F%2Fpremium.wpmudev.org%2Fwp-content%2Fthemes%2Fwpmudev-2015-1%2Fassets%2Fimg%2Favatars%2F7.png&r=g";s:5:"title";s:4:"Gold";}s:6:"points";a:5:{s:10:"rep_points";i:23;s:4:"rank";i:5809;s:7:"history";a:5:{i:0;a:7:{s:4:"type";s:4:"hero";s:9:"timestamp";s:10:"1391542958";s:6:"points";s:1:"3";s:11:"reason_code";s:14:"profile_detail";s:6:"reason";s:102:"You filled out the <a href=\'http://premium.wpmudev.org/dashboard/profile/\'>linked_in profile field</a>";s:9:"object_id";s:1:"0";s:9:"from_user";s:1:"0";}i:1;a:7:{s:4:"type";s:4:"hero";s:9:"timestamp";s:10:"1391542958";s:6:"points";s:1:"3";s:11:"reason_code";s:14:"profile_detail";s:6:"reason";s:100:"You filled out the <a href=\'http://premium.wpmudev.org/dashboard/profile/\'>twitter profile field</a>";s:9:"object_id";s:1:"0";s:9:"from_user";s:1:"0";}i:2;a:7:{s:4:"type";s:4:"hero";s:9:"timestamp";s:10:"1391542958";s:6:"points";s:1:"3";s:11:"reason_code";s:14:"profile_detail";s:6:"reason";s:104:"You filled out the <a href=\'http://premium.wpmudev.org/dashboard/profile/\'>description profile field</a>";s:9:"object_id";s:1:"0";s:9:"from_user";s:1:"0";}i:3;a:7:{s:4:"type";s:4:"hero";s:9:"timestamp";s:10:"1391542958";s:6:"points";s:1:"3";s:11:"reason_code";s:14:"profile_detail";s:6:"reason";s:102:"You filled out the <a href=\'http://premium.wpmudev.org/dashboard/profile/\'>last_name profile field</a>";s:9:"object_id";s:1:"0";s:9:"from_user";s:1:"0";}i:4;a:7:{s:4:"type";s:4:"hero";s:9:"timestamp";s:10:"1391456558";s:6:"points";s:2:"50";s:11:"reason_code";s:14:"account_signup";s:6:"reason";s:78:"You\'ve got Hero Points just for signing up. You’re on your way to greatness!";s:9:"object_id";s:1:"0";s:9:"from_user";s:1:"0";}}s:11:"hero_points";i:62;s:9:"rep_level";a:3:{s:4:"base";i:0;s:5:"level";i:0;s:4:"name";s:11:"Regular Joe";}}}'),
(299, 1, 'wdp_un_last_run_profile', '1452720778'),
(302, 1, 'nbt_plugin_version', '2.8'),
(307, 1, 'wp_smush_api_auth', 'a:1:{s:40:"77b9d65cfa140bc095e895fb523534df6cd410ad";a:2:{s:8:"validity";s:5:"valid";s:9:"timestamp";i:1452629805;}}'),
(310, 1, 'wmd_prettythemes_options', 'a:11:{s:10:"setup_mode";s:1:"0";s:5:"theme";s:16:"standard/3-eight";s:14:"themes_options";a:6:{s:11:"author_link";s:1:"1";s:18:"author_link_target";s:1:"0";s:11:"custom_link";s:1:"1";s:18:"custom_link_target";s:1:"0";s:4:"tags";s:1:"1";s:7:"version";s:1:"1";}s:31:"themes_auto_screenshots_by_name";s:1:"1";s:17:"themes_page_title";s:6:"Themes";s:23:"themes_page_description";s:0:"";s:17:"themes_link_label";s:22:"Learn more about theme";s:18:"author_link_target";s:0:"";s:18:"custom_link_target";s:0:"";s:23:"themes_auto_screenshots";N;s:24:"themes_hide_descriptions";N;}'),
(315, 1, 'itsec_jquery_version', '1.11.3'),
(389, 1, 'updraftplus_options', 'a:54:{s:19:"updraft_lastmessage";s:69:"The backup apparently succeeded and is now complete (May 19 22:44:32)";s:22:"updraft_backup_history";a:2:{i:1463697683;a:17:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-plugins.zip";}s:12:"plugins-size";i:20514097;s:6:"themes";a:1:{i:0;s:60:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-themes.zip";}s:11:"themes-size";i:1881886;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-uploads.zip";}s:12:"uploads-size";i:2941052;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-mu-plugins.zip";}s:15:"mu-plugins-size";i:1229943;s:6:"others";a:1:{i:0;s:60:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-others.zip";}s:11:"others-size";i:928;s:2:"db";s:55:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-db.gz";s:7:"db-size";i:391434;s:9:"checksums";a:1:{s:4:"sha1";a:6:{s:8:"plugins0";s:40:"258b6e57141aa272ce5f2286285d5ae8c0adbf06";s:7:"themes0";s:40:"0b991d58fe4a2ac5f64f5209c6ff0edc80bfd92a";s:8:"uploads0";s:40:"5277f1efbd7d1d4f7b98d40033ecd15317d24d38";s:11:"mu-plugins0";s:40:"a7caf52f97082bf9cf773e848ce1defabfc1a098";s:7:"others0";s:40:"40434e313378996351138824ca3861d83db2b66f";s:3:"db0";s:40:"abe957ab87661f94e39b12fccadc607a8a715b16";}}s:5:"nonce";s:12:"8d20a5380ed9";s:7:"service";a:1:{i:0;s:7:"dropbox";}s:18:"created_by_version";s:9:"2.12.2.22";s:12:"is_multisite";b:1;}i:1459818373;a:17:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-04-05-0106_ActorsCompass_3dc2df6c7cc8-plugins.zip";}s:12:"plugins-size";i:20514097;s:6:"themes";a:1:{i:0;s:60:"backup_2016-04-05-0106_ActorsCompass_3dc2df6c7cc8-themes.zip";}s:11:"themes-size";i:1536542;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-04-05-0106_ActorsCompass_3dc2df6c7cc8-uploads.zip";}s:12:"uploads-size";i:2940892;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-04-05-0106_ActorsCompass_3dc2df6c7cc8-mu-plugins.zip";}s:15:"mu-plugins-size";i:1229610;s:6:"others";a:1:{i:0;s:60:"backup_2016-04-05-0106_ActorsCompass_3dc2df6c7cc8-others.zip";}s:11:"others-size";i:928;s:2:"db";s:55:"backup_2016-04-05-0106_ActorsCompass_3dc2df6c7cc8-db.gz";s:7:"db-size";i:390205;s:9:"checksums";a:1:{s:4:"sha1";a:6:{s:8:"plugins0";s:40:"37b2196cb6bfaff5aebb5a056fe063b5a213699d";s:7:"themes0";s:40:"84c28075e8601ce6589ef4fd86555495ee4ac990";s:8:"uploads0";s:40:"5432da4a29df4f3c7bed69d0f39cbca393d854d2";s:11:"mu-plugins0";s:40:"ff1635cf98345b669f281b830cc4239a3d4ee401";s:7:"others0";s:40:"194ee745cff489a61b943a3434939ce7acb1ed44";s:3:"db0";s:40:"4ff9f616a59a8a34e4c696fe0f077a721725aa18";}}s:5:"nonce";s:12:"3dc2df6c7cc8";s:7:"service";a:1:{i:0;s:7:"dropbox";}s:18:"created_by_version";s:9:"2.12.2.22";s:12:"is_multisite";b:1;}}s:19:"updraft_last_backup";a:5:{s:11:"backup_time";i:1463697683;s:12:"backup_array";a:13:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-plugins.zip";}s:12:"plugins-size";i:20514097;s:6:"themes";a:1:{i:0;s:60:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-themes.zip";}s:11:"themes-size";i:1881886;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-uploads.zip";}s:12:"uploads-size";i:2941052;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-mu-plugins.zip";}s:15:"mu-plugins-size";i:1229943;s:6:"others";a:1:{i:0;s:60:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-others.zip";}s:11:"others-size";i:928;s:2:"db";s:55:"backup_2016-05-19-2241_ActorsCompass_8d20a5380ed9-db.gz";s:7:"db-size";i:391434;s:9:"checksums";a:1:{s:4:"sha1";a:6:{s:8:"plugins0";s:40:"258b6e57141aa272ce5f2286285d5ae8c0adbf06";s:7:"themes0";s:40:"0b991d58fe4a2ac5f64f5209c6ff0edc80bfd92a";s:8:"uploads0";s:40:"5277f1efbd7d1d4f7b98d40033ecd15317d24d38";s:11:"mu-plugins0";s:40:"a7caf52f97082bf9cf773e848ce1defabfc1a098";s:7:"others0";s:40:"40434e313378996351138824ca3861d83db2b66f";s:3:"db0";s:40:"abe957ab87661f94e39b12fccadc607a8a715b16";}}}s:7:"success";i:1;s:6:"errors";a:0:{}s:12:"backup_nonce";s:12:"8d20a5380ed9";}s:26:"updraft_autobackup_default";i:0;s:21:"updraft_autobackup_go";i:0;s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}s:16:"updraft_interval";s:5:"daily";s:22:"updraft_startday_files";i:0;s:23:"updraft_starttime_files";s:5:"00:05";s:14:"updraft_retain";i:2;s:25:"updraft_interval_database";s:5:"daily";s:19:"updraft_startday_db";i:0;s:20:"updraft_starttime_db";s:5:"00:05";s:17:"updraft_retain_db";i:2;s:23:"updraft_include_plugins";i:1;s:22:"updraft_include_themes";i:1;s:23:"updraft_include_uploads";i:1;s:31:"updraft_include_uploads_exclude";s:35:"backup*,*backups,backwpup*,wp-clone";s:26:"updraft_include_mu-plugins";i:1;s:30:"updraft_include_wpcore_exclude";s:0:"";s:22:"updraft_include_others";i:1;s:30:"updraft_include_others_exclude";s:48:"upgrade,cache,updraft,backup*,*backups,mysql.sql";s:25:"updraft_include_more_path";a:0:{}s:24:"updraft_encryptionphrase";s:0:"";s:13:"updraft_email";s:0:"";s:15:"updraft_service";a:1:{i:0;s:7:"dropbox";}s:19:"updraft_s3_endpoint";s:0:"";s:10:"updraft_s3";a:3:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}s:18:"updraft_cloudfiles";a:5:{s:7:"authurl";s:35:"https://auth.api.rackspacecloud.com";s:6:"region";s:3:"DFW";s:4:"user";s:0:"";s:6:"apikey";s:0:"";s:4:"path";s:0:"";}s:19:"updraft_googledrive";a:3:{s:8:"clientid";s:0:"";s:6:"secret";s:0:"";s:6:"folder";s:11:"UpdraftPlus";}s:16:"updraft_onedrive";a:3:{s:8:"clientid";s:0:"";s:6:"secret";s:0:"";s:6:"folder";s:0:"";}s:11:"updraft_ftp";a:5:{s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"path";s:0:"";s:7:"passive";s:1:"1";}s:15:"updraft_copycom";a:3:{s:8:"clientid";s:32:"MLFsHYJBXMlgcK4t6ZGn5sGKhvKGbYlr";s:6:"secret";s:48:"PvjiddOeEs67J7dVImqcczLGVEXGbV79gR8FTcnKZpUy2ytb";s:6:"folder";s:0:"";}s:21:"updraft_sftp_settings";a:6:{s:4:"host";s:0:"";s:4:"port";s:2:"22";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:3:"key";s:0:"";s:4:"path";s:0:"";}s:23:"updraft_webdav_settings";a:1:{s:3:"url";s:0:"";}s:17:"updraft_s3generic";a:4:{s:8:"endpoint";s:0:"";s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}s:17:"updraft_openstack";a:6:{s:7:"authurl";s:0:"";s:6:"tenant";s:0:"";s:6:"region";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:4:"path";s:0:"";}s:29:"updraft_dreamobjects_endpoint";s:0:"";s:20:"updraft_dreamobjects";a:3:{s:9:"accesskey";s:0:"";s:9:"secretkey";s:0:"";s:4:"path";s:0:"";}s:19:"updraft_split_every";i:500;s:20:"updraft_delete_local";i:1;s:11:"updraft_dir";s:7:"updraft";s:18:"updraft_debug_mode";b:0;s:21:"updraft_include_blogs";b:0;s:22:"updraft_include_wpcore";b:0;s:20:"updraft_include_more";b:0;s:26:"updraft_ssl_useservercerts";b:0;s:25:"updraft_ssl_disableverify";b:0;s:17:"updraft_ssl_nossl";b:0;s:18:"updraft_log_syslog";b:0;s:27:"updraft_report_warningsonly";a:0:{}s:26:"updraft_report_wholebackup";a:0:{}s:13:"updraft_azure";a:4:{s:12:"account_name";s:0:"";s:3:"key";s:0:"";s:9:"container";s:0:"";s:9:"directory";s:0:"";}s:19:"updraft_googlecloud";a:6:{s:8:"clientid";s:0:"";s:6:"secret";s:0:"";s:10:"project_id";s:0:"";s:11:"bucket_path";s:0:"";s:13:"storage_class";s:8:"STANDARD";s:15:"bucket_location";s:2:"US";}}'),
(391, 1, 'wdp_un_refresh_local_flag', ''),
(393, 1, 'wdp_un_redirected_v4', '1'),
(394, 1, 'wdp_un_refresh_remote_flag', ''),
(395, 1, 'wdp_un_refresh_profile_flag', '0'),
(398, 1, 'wdp_un_notifications', 'a:1:{i:1447992590;a:7:{s:2:"id";i:1447992590;s:7:"content";s:309:"Stay in the WP loop by following us on <a href="http://facebook.com/wpmudev">Facebook</a>, <a href="https://plus.google.com/113918261231562979642/posts">Google+</a> and <a href="http://twitter.com/wpmudev">Twitter</a>, and never miss out on great plugins, themes, offers, discounts or important security news!";s:9:"dismissed";b:1;s:11:"can_dismiss";b:1;s:3:"cta";s:0:"";s:12:"time_dismiss";i:1453415615;s:11:"time_create";i:0;}}'),
(399, 1, 'wdp_un_auth_user', 'gdkeller'),
(400, 1, 'updraftplus-addons_siteid', 'bb699c15382435b7263266ebb98b9a0f'),
(403, 1, 'updraftplus-addons_options', 'a:1:{s:5:"email";s:29:"shannon@bluestormcreative.com";}'),
(406, 1, 'external_updates-updraftplus', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1463698010;s:14:"checkedVersion";s:10:"2.12.11.22";s:6:"update";O:8:"stdClass":8:{s:2:"id";i:0;s:4:"slug";s:11:"updraftplus";s:7:"version";s:10:"2.12.11.22";s:8:"homepage";s:22:"http://updraftplus.com";s:12:"download_url";s:293:"https://updraftplus.com/?udm_action=download&slug=updraftplus&muid=1&etoken=k%2B3XdejKK6VP8LQEL2rzM68spKDEVOgHkTLgiY7IlUOa%2BHHMSYlHVNFw5pZPXruiBm0yEH4bSH5pUMaPBelYEgE4yIKktq%2BRb7URMT1tQrW8PnjLkilD8wZ5o1P6%2FLuX2HvLa%2Fi6aYuQiMSxpYnnEXF4LXcpx6nBE62xup%2BNOMcPMIbKfV6jgQQ38TExsNeM&ig=/1b420db9";s:14:"upgrade_notice";N;s:8:"filename";s:27:"updraftplus/updraftplus.php";s:24:"x-spm-yourversion-tested";s:3:"4.5";}}'),
(407, 1, 'updraft_jobdata_6ba3aaadb763', 'a:53:{s:15:"resume_interval";i:420;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:8:"finished";s:11:"backup_time";i:1452722217;s:11:"job_time_ms";d:1452722217.789474010467529296875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:1;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:0;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:3:{i:0;d:1452722217.8252561092376708984375;i:1;d:1452722568.8691730499267578125;i:6;d:1452723037.9861910343170166015625;}s:18:"current_resumption";i:1;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1452722217;s:6:"themes";i:1452722220;s:7:"uploads";i:1452722220;s:6:"others";i:1452722220;}s:9:"run_times";a:3:{i:0;d:31.5593318939208984375;i:1;d:14.6263358592987060546875;i:5;d:0.0165178775787353515625;}s:14:"useful_checkin";i:1;s:13:"sha1-plugins0";s:40:"ef208e9038f5e61bcec6d4a80813f6cec93f1156";s:12:"sha1-themes0";s:40:"5e418f83b3620e253de51c0dea9775096d79342c";s:13:"sha1-uploads0";s:40:"251bed9550057dcab6914d4920655524dd067175";s:12:"sha1-others0";s:40:"3178e1e712fd0c75644014b92f79df74bdfb3d71";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-01-13-2156_ActorsCompass_2762e6e17cd4-plugins.zip";}s:12:"plugins-size";i:16757955;s:6:"themes";a:1:{i:0;s:60:"backup_2016-01-13-2156_ActorsCompass_2762e6e17cd4-themes.zip";}s:11:"themes-size";i:2284044;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-01-13-2156_ActorsCompass_2762e6e17cd4-uploads.zip";}s:12:"uploads-size";i:973878;s:6:"others";a:1:{i:0;s:60:"backup_2016-01-13-2156_ActorsCompass_2762e6e17cd4-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:38;s:1:"a";i:38;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"e1cd1d53c4693c0dbe4cae6672b2980d7418c251";s:19:"uploading_substatus";a:3:{s:1:"i";i:5;s:1:"p";i:0;s:1:"t";i:5;}s:44:"updraf_dbid_ba0e29c7c1f02e311614a2e5ca72db1d";s:22:"AAAAAAAAireRvF9JZlLpBQ";s:44:"updraf_dbof_ba0e29c7c1f02e311614a2e5ca72db1d";i:16757955;s:49:"uploaded_dropbox-ba0e29c7c1f02e311614a2e5ca72db1d";s:3:"yes";s:41:"uploaded_ba0e29c7c1f02e311614a2e5ca72db1d";s:3:"yes";s:44:"updraf_dbid_bd747f761601eaef548d91905407f4cf";s:22:"AAAAAAAAirgLTfMZxQLPXQ";s:44:"updraf_dbof_bd747f761601eaef548d91905407f4cf";i:2284044;s:49:"uploaded_dropbox-bd747f761601eaef548d91905407f4cf";s:3:"yes";s:41:"uploaded_bd747f761601eaef548d91905407f4cf";s:3:"yes";s:44:"updraf_dbid_5bb51e73b2558561d2d6d55c6216e931";s:22:"AAAAAAAAirkyFWPzKlO6Tw";s:44:"updraf_dbof_5bb51e73b2558561d2d6d55c6216e931";i:973878;s:49:"uploaded_dropbox-5bb51e73b2558561d2d6d55c6216e931";s:3:"yes";s:41:"uploaded_5bb51e73b2558561d2d6d55c6216e931";s:3:"yes";s:44:"updraf_dbid_aa4ccfb40fafee0986ccdfd5111a87e8";s:22:"AAAAAAAAirqZAfKGDwIYww";s:44:"updraf_dbof_aa4ccfb40fafee0986ccdfd5111a87e8";i:892;s:49:"uploaded_dropbox-aa4ccfb40fafee0986ccdfd5111a87e8";s:3:"yes";s:41:"uploaded_aa4ccfb40fafee0986ccdfd5111a87e8";s:3:"yes";s:44:"updraf_dbid_8f329be9470d52b3191d1e5fb9648a4f";s:22:"AAAAAAAAirs4UGoxm0GcVQ";s:44:"updraf_dbof_8f329be9470d52b3191d1e5fb9648a4f";i:331806;s:49:"uploaded_dropbox-8f329be9470d52b3191d1e5fb9648a4f";s:3:"yes";s:41:"uploaded_8f329be9470d52b3191d1e5fb9648a4f";s:3:"yes";s:5:"prune";s:8:"finished";}'),
(525, 1, 'updraft_jobdata_557302a34982', 'a:34:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1453252594;s:11:"job_time_ms";d:1453252594.5864689350128173828125;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1453252594.621407032012939453125;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1453252594;s:6:"themes";i:1453252598;s:7:"uploads";i:1453252598;s:6:"others";i:1453252598;}s:9:"run_times";a:1:{i:0;d:61.9333398342132568359375;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"c191fadd002cdb5e34212890f61f046f931f37a4";s:12:"sha1-themes0";s:40:"791bdb15b7d659dac6df309991363aacd1d9d0e3";s:13:"sha1-uploads0";s:40:"1e6382b7b726d294e25448bd6a1266bc93c46e41";s:12:"sha1-others0";s:40:"e863b3ee03071da5370fd7cdb660ab5afa673371";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-01-20-0116_ActorsCompass_557302a34982-plugins.zip";}s:12:"plugins-size";i:16707810;s:6:"themes";a:1:{i:0;s:60:"backup_2016-01-20-0116_ActorsCompass_557302a34982-themes.zip";}s:11:"themes-size";i:2284092;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-01-20-0116_ActorsCompass_557302a34982-uploads.zip";}s:12:"uploads-size";i:974052;s:6:"others";a:1:{i:0;s:60:"backup_2016-01-20-0116_ActorsCompass_557302a34982-others.zip";}s:11:"others-size";i:1033;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:38;s:1:"a";i:38;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"f4a942b0165275a8b7cab6839fae868d1c540e71";s:19:"uploading_substatus";a:3:{s:1:"i";i:0;s:1:"p";d:0.62800000000000000266453525910037569701671600341796875;s:1:"t";i:5;}s:44:"updraf_dbid_bd079b6b48299f09aea2d182e86d9bfd";s:22:"AAAAAAAAjDf9XdVYsGtDRA";s:44:"updraf_dbof_bd079b6b48299f09aea2d182e86d9bfd";i:10485760;}'),
(546, 1, 'updraft_jobdata_f287146513d2', 'a:34:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1453421162;s:11:"job_time_ms";d:1453421162.113914966583251953125;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1453421162.1470859050750732421875;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1453421162;s:6:"themes";i:1453421165;s:7:"uploads";i:1453421165;s:6:"others";i:1453421165;}s:9:"run_times";a:1:{i:0;d:62.1923310756683349609375;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"c191fadd002cdb5e34212890f61f046f931f37a4";s:12:"sha1-themes0";s:40:"791bdb15b7d659dac6df309991363aacd1d9d0e3";s:13:"sha1-uploads0";s:40:"1129d295c8cc6de6793385b05fa6dd29d310fbbb";s:12:"sha1-others0";s:40:"e863b3ee03071da5370fd7cdb660ab5afa673371";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-01-22-0006_ActorsCompass_f287146513d2-plugins.zip";}s:12:"plugins-size";i:16707810;s:6:"themes";a:1:{i:0;s:60:"backup_2016-01-22-0006_ActorsCompass_f287146513d2-themes.zip";}s:11:"themes-size";i:2284092;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-01-22-0006_ActorsCompass_f287146513d2-uploads.zip";}s:12:"uploads-size";i:974052;s:6:"others";a:1:{i:0;s:60:"backup_2016-01-22-0006_ActorsCompass_f287146513d2-others.zip";}s:11:"others-size";i:1033;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:38;s:1:"a";i:38;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"ffbea5f296cd430635a44882e8e37b3b59788888";s:19:"uploading_substatus";a:3:{s:1:"i";i:0;s:1:"p";d:1;s:1:"t";i:5;}s:44:"updraf_dbid_d3807c03206b3343b6f2ebcce6469965";s:22:"AAAAAAAAjJZQQ2kJo77AMg";s:44:"updraf_dbof_d3807c03206b3343b6f2ebcce6469965";i:16707810;}'),
(571, 1, 'updraft_jobdata_15417f75761b', 'a:38:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1453717916;s:11:"job_time_ms";d:1453717916.0930640697479248046875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1453717916.1304519176483154296875;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1453717916;s:6:"themes";i:1453717919;s:7:"uploads";i:1453717919;s:6:"others";i:1453717919;}s:9:"run_times";a:1:{i:0;d:63.380836009979248046875;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"c191fadd002cdb5e34212890f61f046f931f37a4";s:12:"sha1-themes0";s:40:"791bdb15b7d659dac6df309991363aacd1d9d0e3";s:13:"sha1-uploads0";s:40:"3fa0186f5c935c88b714b1442c7287c6b6712523";s:12:"sha1-others0";s:40:"e863b3ee03071da5370fd7cdb660ab5afa673371";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-01-25-1031_ActorsCompass_15417f75761b-plugins.zip";}s:12:"plugins-size";i:16707810;s:6:"themes";a:1:{i:0;s:60:"backup_2016-01-25-1031_ActorsCompass_15417f75761b-themes.zip";}s:11:"themes-size";i:2284092;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-01-25-1031_ActorsCompass_15417f75761b-uploads.zip";}s:12:"uploads-size";i:974052;s:6:"others";a:1:{i:0;s:60:"backup_2016-01-25-1031_ActorsCompass_15417f75761b-others.zip";}s:11:"others-size";i:1033;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:38;s:1:"a";i:38;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"bb16d59cd58f6561edd702b69c87fbb53d8c9c65";s:19:"uploading_substatus";a:3:{s:1:"i";i:1;s:1:"p";d:0.9179999999999999271693695845897309482097625732421875;s:1:"t";i:5;}s:44:"updraf_dbid_3ff45f5ac60c2febdb78f0032916a4d2";s:22:"AAAAAAAAjTM_EeG1Y2QCtg";s:44:"updraf_dbof_3ff45f5ac60c2febdb78f0032916a4d2";i:16707810;s:49:"uploaded_dropbox-3ff45f5ac60c2febdb78f0032916a4d2";s:3:"yes";s:41:"uploaded_3ff45f5ac60c2febdb78f0032916a4d2";s:3:"yes";s:44:"updraf_dbid_176ead71598547c17dcfab506c526434";s:22:"AAAAAAAAjTRDuBeiVRcpfQ";s:44:"updraf_dbof_176ead71598547c17dcfab506c526434";i:2097152;}'),
(747, 1, 'updraft_jobdata_4dd42e0cc539', 'a:38:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1455583654;s:11:"job_time_ms";d:1455583654.06443309783935546875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1455583654.108129024505615234375;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1455583654;s:6:"themes";i:1455583658;s:7:"uploads";i:1455583658;s:6:"others";i:1455583658;}s:9:"run_times";a:1:{i:0;d:61.720304965972900390625;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"59b18d51ae4c9694cb863971297cc2a017565cd3";s:12:"sha1-themes0";s:40:"5a4cb03a69d73e0d852637cc34888ad255b197c1";s:13:"sha1-uploads0";s:40:"74b00d7434756b72fb6b118f981be915b97d1fb0";s:12:"sha1-others0";s:40:"36d58d2dced9e85a6e56655588b0880ec88cc453";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-02-16-0047_ActorsCompass_4dd42e0cc539-plugins.zip";}s:12:"plugins-size";i:16707810;s:6:"themes";a:1:{i:0;s:60:"backup_2016-02-16-0047_ActorsCompass_4dd42e0cc539-themes.zip";}s:11:"themes-size";i:2284092;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-02-16-0047_ActorsCompass_4dd42e0cc539-uploads.zip";}s:12:"uploads-size";i:974194;s:6:"others";a:1:{i:0;s:60:"backup_2016-02-16-0047_ActorsCompass_4dd42e0cc539-others.zip";}s:11:"others-size";i:1033;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:38;s:1:"a";i:38;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"9d065bd5dcc610e36bc62a12611420d0e36a9c32";s:19:"uploading_substatus";a:3:{s:1:"i";i:1;s:1:"p";d:0.45899999999999996358468479229486547410488128662109375;s:1:"t";i:5;}s:44:"updraf_dbid_458d00dc1a02dfd5fe9e01e202749108";s:22:"AAAAAAAAlUYXfUL4bTdn5w";s:44:"updraf_dbof_458d00dc1a02dfd5fe9e01e202749108";i:16707810;s:49:"uploaded_dropbox-458d00dc1a02dfd5fe9e01e202749108";s:3:"yes";s:41:"uploaded_458d00dc1a02dfd5fe9e01e202749108";s:3:"yes";s:44:"updraf_dbid_cdfefbea415d0d9ccdaa179e94d55f0e";s:22:"AAAAAAAAlUcvplx4YZ6Wdw";s:44:"updraf_dbof_cdfefbea415d0d9ccdaa179e94d55f0e";i:1048576;}') ;
INSERT INTO `wp_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(758, 1, 'updraft_jobdata_3a2f82e4645e', 'a:53:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:8:"finished";s:11:"backup_time";i:1455681320;s:11:"job_time_ms";d:1455681320.0254490375518798828125;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:1;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:3:{i:0;d:1455681320.0528290271759033203125;i:1;d:1455732699.349391937255859375;i:2;d:1455743873.743618011474609375;}s:18:"current_resumption";i:1;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:4:{s:7:"plugins";i:1455681320;s:6:"themes";i:1455681323;s:7:"uploads";i:1455681323;s:6:"others";i:1455681323;}s:9:"run_times";a:2:{i:0;d:50.8779618740081787109375;i:1;d:0.04191303253173828125;}s:14:"useful_checkin";i:1;s:13:"sha1-plugins0";s:40:"59b18d51ae4c9694cb863971297cc2a017565cd3";s:12:"sha1-themes0";s:40:"5a4cb03a69d73e0d852637cc34888ad255b197c1";s:13:"sha1-uploads0";s:40:"74b00d7434756b72fb6b118f981be915b97d1fb0";s:12:"sha1-others0";s:40:"36d58d2dced9e85a6e56655588b0880ec88cc453";s:18:"backup_files_array";a:8:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-02-17-0355_ActorsCompass_33228a7028d6-plugins.zip";}s:12:"plugins-size";i:16707810;s:6:"themes";a:1:{i:0;s:60:"backup_2016-02-17-0355_ActorsCompass_33228a7028d6-themes.zip";}s:11:"themes-size";i:2284092;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-02-17-0355_ActorsCompass_33228a7028d6-uploads.zip";}s:12:"uploads-size";i:974194;s:6:"others";a:1:{i:0;s:60:"backup_2016-02-17-0355_ActorsCompass_33228a7028d6-others.zip";}s:11:"others-size";i:1033;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:38;s:1:"a";i:38;}s:8:"warnings";a:1:{s:16:"infrequentvisits";s:215:"Your website is visited infrequently and UpdraftPlus is not getting the resources it hoped for; please read this page: https://updraftplus.com/faqs/why-am-i-getting-warnings-about-my-site-not-having-enough-visitors/";}s:8:"sha1-db0";s:40:"1fc4fe9add48c1a0e4dd466fadb88e5aee3bc7da";s:19:"uploading_substatus";a:3:{s:1:"i";i:5;s:1:"p";i:0;s:1:"t";i:5;}s:44:"updraf_dbid_f5542109cf3b70472e11636f261fc552";s:22:"AAAAAAAAlX09IeWXsdVPag";s:44:"updraf_dbof_f5542109cf3b70472e11636f261fc552";i:16707810;s:44:"updraf_dbid_4aebb4b4fe1d5bdd8932f49b56cfb5db";s:22:"AAAAAAAAlX7OjU9CgDAXUg";s:44:"updraf_dbof_4aebb4b4fe1d5bdd8932f49b56cfb5db";i:2284092;s:49:"uploaded_dropbox-4aebb4b4fe1d5bdd8932f49b56cfb5db";s:3:"yes";s:41:"uploaded_4aebb4b4fe1d5bdd8932f49b56cfb5db";s:3:"yes";s:44:"updraf_dbid_b56667a0cd33ab2671415f9fbd732fa9";s:22:"AAAAAAAAlX_AMeqfQKH5fQ";s:44:"updraf_dbof_b56667a0cd33ab2671415f9fbd732fa9";i:974194;s:49:"uploaded_dropbox-b56667a0cd33ab2671415f9fbd732fa9";s:3:"yes";s:41:"uploaded_b56667a0cd33ab2671415f9fbd732fa9";s:3:"yes";s:44:"updraf_dbid_7b950cd6b7fe05a77391b3be2a910b66";s:22:"AAAAAAAAlYDvDplaia8bKA";s:44:"updraf_dbof_7b950cd6b7fe05a77391b3be2a910b66";i:1033;s:49:"uploaded_dropbox-7b950cd6b7fe05a77391b3be2a910b66";s:3:"yes";s:41:"uploaded_7b950cd6b7fe05a77391b3be2a910b66";s:3:"yes";s:44:"updraf_dbid_52a1d3cfb04b06c56b4d6faef595b36c";s:22:"AAAAAAAAlYHUSmeuWpFGtg";s:44:"updraf_dbof_52a1d3cfb04b06c56b4d6faef595b36c";i:334268;s:49:"uploaded_dropbox-52a1d3cfb04b06c56b4d6faef595b36c";s:3:"yes";s:41:"uploaded_52a1d3cfb04b06c56b4d6faef595b36c";s:3:"yes";s:5:"prune";s:8:"finished";s:49:"uploaded_dropbox-f5542109cf3b70472e11636f261fc552";s:3:"yes";s:41:"uploaded_f5542109cf3b70472e11636f261fc552";s:3:"yes";}'),
(912, 1, 'itsec_free_just_activated', '1'),
(934, 1, 'wmd_prettythemes_themes_custom_data', 'a:1:{s:6:"AClite";a:1:{s:13:"deprecateDate";b:0;}}'),
(962, 1, 'menu_items', 'a:0:{}'),
(963, 1, 'first_page', ''),
(964, 1, 'first_comment', ''),
(965, 1, 'first_comment_url', ''),
(966, 1, 'first_comment_author', ''),
(967, 1, 'limited_email_domains', ''),
(968, 1, 'banned_email_domains', ''),
(988, 1, 'wdp_un_farm133_themes', ''),
(13124, 1, 'updraft_jobdata_c5199b9dcb31', 'a:55:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1458093233;s:11:"job_time_ms";d:1458093233.5466010570526123046875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458093233.5917680263519287109375;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458093233;s:6:"themes";i:1458093237;s:7:"uploads";i:1458093237;s:10:"mu-plugins";i:1458093237;s:6:"others";i:1458093238;}s:9:"run_times";a:1:{i:0;d:64.1634709835052490234375;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"e771722c60d289ce16a977f3478e1686d0ab24d3";s:12:"sha1-themes0";s:40:"49b9477773de7785adbf479069eee1b1564930e3";s:13:"sha1-uploads0";s:40:"9fdad79bcd3f27ed253097aea1009aca2d65042b";s:16:"sha1-mu-plugins0";s:40:"fb2c201baca09197ae811d713ad169ce368b83a2";s:12:"sha1-others0";s:40:"6d4f4588def3d8602ae4d98655074db05c7bf6e3";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-16-0153_ActorsCompass_c5199b9dcb31-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-16-0153_ActorsCompass_c5199b9dcb31-themes.zip";}s:11:"themes-size";i:1420219;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-16-0153_ActorsCompass_c5199b9dcb31-uploads.zip";}s:12:"uploads-size";i:1747146;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-16-0153_ActorsCompass_c5199b9dcb31-mu-plugins.zip";}s:15:"mu-plugins-size";i:1173596;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-16-0153_ActorsCompass_c5199b9dcb31-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:79;s:1:"a";i:79;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"d4f312da5010ef6213b14e4d6aa0cc9786b68544";s:19:"uploading_substatus";a:3:{s:1:"i";i:5;s:1:"p";d:1;s:1:"t";i:6;}s:44:"updraf_dbid_963c96fcbed2e7b46bff929b7e3a4a07";s:22:"AAAAAAAAnAsca7nLYoT_Kg";s:44:"updraf_dbof_963c96fcbed2e7b46bff929b7e3a4a07";i:19008423;s:49:"uploaded_dropbox-963c96fcbed2e7b46bff929b7e3a4a07";s:3:"yes";s:41:"uploaded_963c96fcbed2e7b46bff929b7e3a4a07";s:3:"yes";s:44:"updraf_dbid_76e54f18ec8491947486d268426f7fbf";s:22:"AAAAAAAAnAxL7c2KJdG6Hw";s:44:"updraf_dbof_76e54f18ec8491947486d268426f7fbf";i:1420219;s:49:"uploaded_dropbox-76e54f18ec8491947486d268426f7fbf";s:3:"yes";s:41:"uploaded_76e54f18ec8491947486d268426f7fbf";s:3:"yes";s:44:"updraf_dbid_48b5f0647c6adc229c7aef161cc830ad";s:22:"AAAAAAAAnA25IP6558AccQ";s:44:"updraf_dbof_48b5f0647c6adc229c7aef161cc830ad";i:1747146;s:49:"uploaded_dropbox-48b5f0647c6adc229c7aef161cc830ad";s:3:"yes";s:41:"uploaded_48b5f0647c6adc229c7aef161cc830ad";s:3:"yes";s:44:"updraf_dbid_83156b428dc831419301b184311839af";s:22:"AAAAAAAAnA6b5q0PWXn-jA";s:44:"updraf_dbof_83156b428dc831419301b184311839af";i:1173596;s:49:"uploaded_dropbox-83156b428dc831419301b184311839af";s:3:"yes";s:41:"uploaded_83156b428dc831419301b184311839af";s:3:"yes";s:44:"updraf_dbid_99c00b4c00407dc6d3ca0911ffb735f2";s:22:"AAAAAAAAnA-cgeIGENXzaw";s:44:"updraf_dbof_99c00b4c00407dc6d3ca0911ffb735f2";i:892;s:49:"uploaded_dropbox-99c00b4c00407dc6d3ca0911ffb735f2";s:3:"yes";s:41:"uploaded_99c00b4c00407dc6d3ca0911ffb735f2";s:3:"yes";s:44:"updraf_dbid_33044ef12da4d4c346b380fa8b0dd52a";s:22:"AAAAAAAAnBBF5yvhiytuQA";s:44:"updraf_dbof_33044ef12da4d4c346b380fa8b0dd52a";i:481590;}'),
(13125, 1, 'updraft_jobdata_4a1edbdfdb62', 'a:58:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:7:"pruning";s:11:"backup_time";i:1458095126;s:11:"job_time_ms";d:1458095126.421276092529296875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458095126.4837210178375244140625;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458095126;s:6:"themes";i:1458095129;s:7:"uploads";i:1458095129;s:10:"mu-plugins";i:1458095129;s:6:"others";i:1458095130;}s:9:"run_times";a:1:{i:0;d:63.58932209014892578125;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"e771722c60d289ce16a977f3478e1686d0ab24d3";s:12:"sha1-themes0";s:40:"49b9477773de7785adbf479069eee1b1564930e3";s:13:"sha1-uploads0";s:40:"9fdad79bcd3f27ed253097aea1009aca2d65042b";s:16:"sha1-mu-plugins0";s:40:"fb2c201baca09197ae811d713ad169ce368b83a2";s:12:"sha1-others0";s:40:"6d4f4588def3d8602ae4d98655074db05c7bf6e3";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-16-0225_ActorsCompass_4a1edbdfdb62-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-16-0225_ActorsCompass_4a1edbdfdb62-themes.zip";}s:11:"themes-size";i:1420219;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-16-0225_ActorsCompass_4a1edbdfdb62-uploads.zip";}s:12:"uploads-size";i:1747146;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-16-0225_ActorsCompass_4a1edbdfdb62-mu-plugins.zip";}s:15:"mu-plugins-size";i:1173596;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-16-0225_ActorsCompass_4a1edbdfdb62-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:79;s:1:"a";i:79;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"c591817b5d5a6fac739da2c01bffbcd525094e89";s:19:"uploading_substatus";a:3:{s:1:"i";i:6;s:1:"p";i:0;s:1:"t";i:6;}s:44:"updraf_dbid_1e4b549b1d383cd0b5c6d577bf7745d3";s:22:"AAAAAAAAnBbVzc9PyR8olA";s:44:"updraf_dbof_1e4b549b1d383cd0b5c6d577bf7745d3";i:19008423;s:49:"uploaded_dropbox-1e4b549b1d383cd0b5c6d577bf7745d3";s:3:"yes";s:41:"uploaded_1e4b549b1d383cd0b5c6d577bf7745d3";s:3:"yes";s:44:"updraf_dbid_5bd144fb718f3dea877532dd9e72cce4";s:22:"AAAAAAAAnBcW95Ed1xd4nw";s:44:"updraf_dbof_5bd144fb718f3dea877532dd9e72cce4";i:1420219;s:49:"uploaded_dropbox-5bd144fb718f3dea877532dd9e72cce4";s:3:"yes";s:41:"uploaded_5bd144fb718f3dea877532dd9e72cce4";s:3:"yes";s:44:"updraf_dbid_a888aee9ba41f8952fba46f148eb8a1d";s:22:"AAAAAAAAnBiQpIiwZF4kLQ";s:44:"updraf_dbof_a888aee9ba41f8952fba46f148eb8a1d";i:1747146;s:49:"uploaded_dropbox-a888aee9ba41f8952fba46f148eb8a1d";s:3:"yes";s:41:"uploaded_a888aee9ba41f8952fba46f148eb8a1d";s:3:"yes";s:44:"updraf_dbid_80896640a80bf73579e275aeb16165d8";s:22:"AAAAAAAAnBm9qyB5sqzNjg";s:44:"updraf_dbof_80896640a80bf73579e275aeb16165d8";i:1173596;s:49:"uploaded_dropbox-80896640a80bf73579e275aeb16165d8";s:3:"yes";s:41:"uploaded_80896640a80bf73579e275aeb16165d8";s:3:"yes";s:44:"updraf_dbid_e5b17f0fa1010dade50e29ad68226f99";s:22:"AAAAAAAAnBrjRLC967EeVQ";s:44:"updraf_dbof_e5b17f0fa1010dade50e29ad68226f99";i:892;s:49:"uploaded_dropbox-e5b17f0fa1010dade50e29ad68226f99";s:3:"yes";s:41:"uploaded_e5b17f0fa1010dade50e29ad68226f99";s:3:"yes";s:44:"updraf_dbid_157fbe2460b3e252223108af062acbf2";s:22:"AAAAAAAAnBtWN_J_QHLAng";s:44:"updraf_dbof_157fbe2460b3e252223108af062acbf2";i:481716;s:49:"uploaded_dropbox-157fbe2460b3e252223108af062acbf2";s:3:"yes";s:41:"uploaded_157fbe2460b3e252223108af062acbf2";s:3:"yes";s:5:"prune";s:5:"begun";}') ;
INSERT INTO `wp_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(13126, 1, 'updraft_jobdata_f9f5dd6d5523', 'a:22:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:13:"filescreating";s:11:"backup_time";i:1458110466;s:11:"job_time_ms";d:1458110466.47305393218994140625;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";s:5:"begun";}s:12:"backup_files";s:5:"begun";s:12:"runs_started";a:1:{i:0;d:1458110466.505268096923828125;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:7:"plugins";s:1:"i";i:1;s:1:"t";i:5;}s:19:"files_enumerated_at";a:1:{s:7:"plugins";i:1458110466;}s:9:"run_times";a:1:{i:0;d:1.400143146514892578125;}s:14:"useful_checkin";i:0;}'),
(13127, 1, 'updraft_jobdata_4ab9f9c3fdee', 'a:47:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1458129428;s:11:"job_time_ms";d:1458129428.7740280628204345703125;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458129428.8062369823455810546875;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458129428;s:6:"themes";i:1458129431;s:7:"uploads";i:1458129431;s:10:"mu-plugins";i:1458129432;s:6:"others";i:1458129432;}s:9:"run_times";a:1:{i:0;d:62.8311231136322021484375;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"e771722c60d289ce16a977f3478e1686d0ab24d3";s:12:"sha1-themes0";s:40:"49b9477773de7785adbf479069eee1b1564930e3";s:13:"sha1-uploads0";s:40:"9fdad79bcd3f27ed253097aea1009aca2d65042b";s:16:"sha1-mu-plugins0";s:40:"fb2c201baca09197ae811d713ad169ce368b83a2";s:12:"sha1-others0";s:40:"6d4f4588def3d8602ae4d98655074db05c7bf6e3";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-16-1157_ActorsCompass_4ab9f9c3fdee-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-16-1157_ActorsCompass_4ab9f9c3fdee-themes.zip";}s:11:"themes-size";i:1420219;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-16-1157_ActorsCompass_4ab9f9c3fdee-uploads.zip";}s:12:"uploads-size";i:1747146;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-16-1157_ActorsCompass_4ab9f9c3fdee-mu-plugins.zip";}s:15:"mu-plugins-size";i:1173596;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-16-1157_ActorsCompass_4ab9f9c3fdee-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:79;s:1:"a";i:79;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"0e80028aeeb795f54c83c3268e50c72a7fb8805a";s:19:"uploading_substatus";a:3:{s:1:"i";i:3;s:1:"p";d:1;s:1:"t";i:6;}s:44:"updraf_dbid_7e25fbe8ce99cb6db66f9d22c11071f3";s:22:"AAAAAAAAnCyKpQX7aUqYaw";s:44:"updraf_dbof_7e25fbe8ce99cb6db66f9d22c11071f3";i:19008423;s:49:"uploaded_dropbox-7e25fbe8ce99cb6db66f9d22c11071f3";s:3:"yes";s:41:"uploaded_7e25fbe8ce99cb6db66f9d22c11071f3";s:3:"yes";s:44:"updraf_dbid_e87edd9bda22fe089b44888e8b9ec0da";s:22:"AAAAAAAAnC1EvnXOeu0AtQ";s:44:"updraf_dbof_e87edd9bda22fe089b44888e8b9ec0da";i:1420219;s:49:"uploaded_dropbox-e87edd9bda22fe089b44888e8b9ec0da";s:3:"yes";s:41:"uploaded_e87edd9bda22fe089b44888e8b9ec0da";s:3:"yes";s:44:"updraf_dbid_38366de86d1182b4e05a91189057c712";s:22:"AAAAAAAAnC4pPnMm-OH23g";s:44:"updraf_dbof_38366de86d1182b4e05a91189057c712";i:1747146;s:49:"uploaded_dropbox-38366de86d1182b4e05a91189057c712";s:3:"yes";s:41:"uploaded_38366de86d1182b4e05a91189057c712";s:3:"yes";s:44:"updraf_dbid_581609502a6dee326eacaf4953e728f8";s:22:"AAAAAAAAnC80ht3LQyqf2g";s:44:"updraf_dbof_581609502a6dee326eacaf4953e728f8";i:1173596;}'),
(13130, 1, 'updraft_jobdata_4199d009a652', 'a:22:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:13:"filescreating";s:11:"backup_time";i:1458155072;s:11:"job_time_ms";d:1458155072.539061069488525390625;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";s:5:"begun";}s:12:"backup_files";s:5:"begun";s:12:"runs_started";a:1:{i:0;d:1458155072.5825130939483642578125;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:7:"plugins";s:1:"i";i:1;s:1:"t";i:5;}s:19:"files_enumerated_at";a:1:{s:7:"plugins";i:1458155072;}s:9:"run_times";a:1:{i:0;d:1.8969709873199462890625;}s:14:"useful_checkin";i:0;}'),
(13163, 1, 'updraft_jobdata_f145bbd6b123', 'a:22:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:13:"filescreating";s:11:"backup_time";i:1458264163;s:11:"job_time_ms";d:1458264163.89544010162353515625;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";s:5:"begun";}s:12:"backup_files";s:5:"begun";s:12:"runs_started";a:1:{i:0;d:1458264163.94851207733154296875;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:7:"plugins";s:1:"i";i:1;s:1:"t";i:5;}s:19:"files_enumerated_at";a:1:{s:7:"plugins";i:1458264164;}s:9:"run_times";a:1:{i:0;d:2.180119991302490234375;}s:14:"useful_checkin";i:0;}'),
(13164, 1, 'updraft_jobdata_f7854869c3b0', 'a:22:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:13:"filescreating";s:11:"backup_time";i:1458266702;s:11:"job_time_ms";d:1458266702.8467409610748291015625;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";s:5:"begun";}s:12:"backup_files";s:5:"begun";s:12:"runs_started";a:1:{i:0;d:1458266702.898426055908203125;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:7:"plugins";s:1:"i";i:1;s:1:"t";i:5;}s:19:"files_enumerated_at";a:1:{s:7:"plugins";i:1458266702;}s:9:"run_times";a:1:{i:0;d:1.58671092987060546875;}s:14:"useful_checkin";i:0;}'),
(13165, 1, 'updraft_jobdata_089b62fbae86', 'a:47:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1458267477;s:11:"job_time_ms";d:1458267477.2922599315643310546875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458267477.32283496856689453125;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458267477;s:6:"themes";i:1458267480;s:7:"uploads";i:1458267481;s:10:"mu-plugins";i:1458267481;s:6:"others";i:1458267481;}s:9:"run_times";a:1:{i:0;d:63.6459710597991943359375;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"e771722c60d289ce16a977f3478e1686d0ab24d3";s:12:"sha1-themes0";s:40:"49b9477773de7785adbf479069eee1b1564930e3";s:13:"sha1-uploads0";s:40:"9fdad79bcd3f27ed253097aea1009aca2d65042b";s:16:"sha1-mu-plugins0";s:40:"fb2c201baca09197ae811d713ad169ce368b83a2";s:12:"sha1-others0";s:40:"6d4f4588def3d8602ae4d98655074db05c7bf6e3";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-18-0217_ActorsCompass_089b62fbae86-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-18-0217_ActorsCompass_089b62fbae86-themes.zip";}s:11:"themes-size";i:1420219;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-18-0217_ActorsCompass_089b62fbae86-uploads.zip";}s:12:"uploads-size";i:1747146;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-18-0217_ActorsCompass_089b62fbae86-mu-plugins.zip";}s:15:"mu-plugins-size";i:1173596;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-18-0217_ActorsCompass_089b62fbae86-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:79;s:1:"a";i:79;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"eefadf519bbdbc18e26a48909ff1b2db9d91e5a9";s:19:"uploading_substatus";a:3:{s:1:"i";i:3;s:1:"p";d:1;s:1:"t";i:6;}s:44:"updraf_dbid_92af89af49c1e126b9d6f09c16ea52ce";s:22:"AAAAAAAAnJS_GALAthq7cQ";s:44:"updraf_dbof_92af89af49c1e126b9d6f09c16ea52ce";i:19008423;s:49:"uploaded_dropbox-92af89af49c1e126b9d6f09c16ea52ce";s:3:"yes";s:41:"uploaded_92af89af49c1e126b9d6f09c16ea52ce";s:3:"yes";s:44:"updraf_dbid_eb9992eec5ed1bc235e833cc930bb03d";s:22:"AAAAAAAAnJUcZFifr757Cw";s:44:"updraf_dbof_eb9992eec5ed1bc235e833cc930bb03d";i:1420219;s:49:"uploaded_dropbox-eb9992eec5ed1bc235e833cc930bb03d";s:3:"yes";s:41:"uploaded_eb9992eec5ed1bc235e833cc930bb03d";s:3:"yes";s:44:"updraf_dbid_671b70f9878b9686a31718f9f473d59a";s:22:"AAAAAAAAnJau1qw_myul6g";s:44:"updraf_dbof_671b70f9878b9686a31718f9f473d59a";i:1747146;s:49:"uploaded_dropbox-671b70f9878b9686a31718f9f473d59a";s:3:"yes";s:41:"uploaded_671b70f9878b9686a31718f9f473d59a";s:3:"yes";s:44:"updraf_dbid_19d4e641f5dda9e81ced466110917003";s:22:"AAAAAAAAnJcrUWXUVPlazw";s:44:"updraf_dbof_19d4e641f5dda9e81ced466110917003";i:1173596;}'),
(13166, 1, 'updraft_jobdata_5680ed836011', 'a:22:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:13:"filescreating";s:11:"backup_time";i:1458269415;s:11:"job_time_ms";d:1458269415.3135330677032470703125;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:9;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";s:5:"begun";}s:12:"backup_files";s:5:"begun";s:12:"runs_started";a:1:{i:0;d:1458269415.345077037811279296875;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:7:"plugins";s:1:"i";i:1;s:1:"t";i:5;}s:19:"files_enumerated_at";a:1:{s:7:"plugins";i:1458269415;}s:9:"run_times";a:1:{i:0;d:1.4297840595245361328125;}s:14:"useful_checkin";i:0;}'),
(13220, 1, 'updraft_jobdata_a2bf27b08cad', 'a:51:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1458530042;s:11:"job_time_ms";d:1458530042.7974350452423095703125;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458530042.848104953765869140625;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458530042;s:6:"themes";i:1458530047;s:7:"uploads";i:1458530047;s:10:"mu-plugins";i:1458530047;s:6:"others";i:1458530047;}s:9:"run_times";a:1:{i:0;d:64.87218189239501953125;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"e771722c60d289ce16a977f3478e1686d0ab24d3";s:12:"sha1-themes0";s:40:"cb9bf1baea110db83a528e5f3af20335f916ca10";s:13:"sha1-uploads0";s:40:"9fdad79bcd3f27ed253097aea1009aca2d65042b";s:16:"sha1-mu-plugins0";s:40:"fb2c201baca09197ae811d713ad169ce368b83a2";s:12:"sha1-others0";s:40:"6d4f4588def3d8602ae4d98655074db05c7bf6e3";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-21-0314_ActorsCompass_a2bf27b08cad-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-21-0314_ActorsCompass_a2bf27b08cad-themes.zip";}s:11:"themes-size";i:1420278;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-21-0314_ActorsCompass_a2bf27b08cad-uploads.zip";}s:12:"uploads-size";i:1747146;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-21-0314_ActorsCompass_a2bf27b08cad-mu-plugins.zip";}s:15:"mu-plugins-size";i:1173596;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-21-0314_ActorsCompass_a2bf27b08cad-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:79;s:1:"a";i:79;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"a42e6757c6cd1c48dd976531a5011f71ce43eea2";s:19:"uploading_substatus";a:3:{s:1:"i";i:4;s:1:"p";d:1;s:1:"t";i:6;}s:44:"updraf_dbid_f2a796bfcfd8e00413ad0de025ef4d93";s:22:"AAAAAAAAnVLn5YBqGOAInA";s:44:"updraf_dbof_f2a796bfcfd8e00413ad0de025ef4d93";i:19008423;s:49:"uploaded_dropbox-f2a796bfcfd8e00413ad0de025ef4d93";s:3:"yes";s:41:"uploaded_f2a796bfcfd8e00413ad0de025ef4d93";s:3:"yes";s:44:"updraf_dbid_54028b0473600e2801d6bcfb4b94aef4";s:22:"AAAAAAAAnVOJCtbk1KvIdg";s:44:"updraf_dbof_54028b0473600e2801d6bcfb4b94aef4";i:1420278;s:49:"uploaded_dropbox-54028b0473600e2801d6bcfb4b94aef4";s:3:"yes";s:41:"uploaded_54028b0473600e2801d6bcfb4b94aef4";s:3:"yes";s:44:"updraf_dbid_967404cc52f626afdfc982b358923612";s:22:"AAAAAAAAnVSlNIMHROd_EQ";s:44:"updraf_dbof_967404cc52f626afdfc982b358923612";i:1747146;s:49:"uploaded_dropbox-967404cc52f626afdfc982b358923612";s:3:"yes";s:41:"uploaded_967404cc52f626afdfc982b358923612";s:3:"yes";s:44:"updraf_dbid_64e937b76af23ba4cd09cba681830102";s:22:"AAAAAAAAnVWD5HoUUW8JvA";s:44:"updraf_dbof_64e937b76af23ba4cd09cba681830102";i:1173596;s:49:"uploaded_dropbox-64e937b76af23ba4cd09cba681830102";s:3:"yes";s:41:"uploaded_64e937b76af23ba4cd09cba681830102";s:3:"yes";s:44:"updraf_dbid_a04db14879d26add376bd8490514b493";s:22:"AAAAAAAAnVZoK0qwcNQT5g";s:44:"updraf_dbof_a04db14879d26add376bd8490514b493";i:892;}'),
(14758, 1, 'updraft_jobdata_b0bf6fcebb51', 'a:58:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:7:"pruning";s:11:"backup_time";i:1458778318;s:11:"job_time_ms";d:1458778318.9286429882049560546875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458778318.9633729457855224609375;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458778319;s:6:"themes";i:1458778322;s:7:"uploads";i:1458778322;s:10:"mu-plugins";i:1458778323;s:6:"others";i:1458778323;}s:9:"run_times";a:1:{i:0;d:61.14494609832763671875;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"ed8409bec5e0079115c2643876f127e939b606b1";s:12:"sha1-themes0";s:40:"3fadfdab04fca6337693dba28ff11fddbf1ee771";s:13:"sha1-uploads0";s:40:"16d1d4eed675f2d902793e44221e87663262897e";s:16:"sha1-mu-plugins0";s:40:"3812d4af1b1ae209927be159859d9cadbfc0f300";s:12:"sha1-others0";s:40:"2383c303653273d4d42b8b40769a8f7c72a41ad5";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-24-0011_ActorsCompass_b0bf6fcebb51-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-24-0011_ActorsCompass_b0bf6fcebb51-themes.zip";}s:11:"themes-size";i:1422732;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-24-0011_ActorsCompass_b0bf6fcebb51-uploads.zip";}s:12:"uploads-size";i:1901879;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-24-0011_ActorsCompass_b0bf6fcebb51-mu-plugins.zip";}s:15:"mu-plugins-size";i:1183680;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-24-0011_ActorsCompass_b0bf6fcebb51-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:99;s:1:"a";i:99;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"76894a7203b66ee52ad7761351a6e3f4737b57a5";s:19:"uploading_substatus";a:3:{s:1:"i";i:6;s:1:"p";i:0;s:1:"t";i:6;}s:44:"updraf_dbid_c5b4a8c76e8ff767c0d13d7e8576686a";s:22:"AAAAAAAAnfn_CdV7-yF22w";s:44:"updraf_dbof_c5b4a8c76e8ff767c0d13d7e8576686a";i:19008423;s:49:"uploaded_dropbox-c5b4a8c76e8ff767c0d13d7e8576686a";s:3:"yes";s:41:"uploaded_c5b4a8c76e8ff767c0d13d7e8576686a";s:3:"yes";s:44:"updraf_dbid_04431bbc702a9b838f2c53d4f810a7f6";s:22:"AAAAAAAAnfodwSzcd2uLbw";s:44:"updraf_dbof_04431bbc702a9b838f2c53d4f810a7f6";i:1422732;s:49:"uploaded_dropbox-04431bbc702a9b838f2c53d4f810a7f6";s:3:"yes";s:41:"uploaded_04431bbc702a9b838f2c53d4f810a7f6";s:3:"yes";s:44:"updraf_dbid_00b0dfe76642d496d7527922e18f583d";s:22:"AAAAAAAAnfs4vLjCQE3VyA";s:44:"updraf_dbof_00b0dfe76642d496d7527922e18f583d";i:1901879;s:49:"uploaded_dropbox-00b0dfe76642d496d7527922e18f583d";s:3:"yes";s:41:"uploaded_00b0dfe76642d496d7527922e18f583d";s:3:"yes";s:44:"updraf_dbid_e86d7515c72349db69643da6c5902fd8";s:22:"AAAAAAAAnfwDz9CVb3d4qw";s:44:"updraf_dbof_e86d7515c72349db69643da6c5902fd8";i:1183680;s:49:"uploaded_dropbox-e86d7515c72349db69643da6c5902fd8";s:3:"yes";s:41:"uploaded_e86d7515c72349db69643da6c5902fd8";s:3:"yes";s:44:"updraf_dbid_9c8bb6e2e6387ebe2277f1178b248283";s:22:"AAAAAAAAnf3Ea4DvEScFNw";s:44:"updraf_dbof_9c8bb6e2e6387ebe2277f1178b248283";i:892;s:49:"uploaded_dropbox-9c8bb6e2e6387ebe2277f1178b248283";s:3:"yes";s:41:"uploaded_9c8bb6e2e6387ebe2277f1178b248283";s:3:"yes";s:44:"updraf_dbid_d3d5ec51c573076a7b084b72137d8997";s:22:"AAAAAAAAnf4GRmCfjCLOBA";s:44:"updraf_dbof_d3d5ec51c573076a7b084b72137d8997";i:510579;s:49:"uploaded_dropbox-d3d5ec51c573076a7b084b72137d8997";s:3:"yes";s:41:"uploaded_d3d5ec51c573076a7b084b72137d8997";s:3:"yes";s:5:"prune";s:5:"begun";}'),
(14759, 1, 'updraft_jobdata_0f20b4e51026', 'a:49:{s:15:"resume_interval";i:300;s:8:"job_type";s:6:"backup";s:9:"jobstatus";s:14:"clouduploading";s:11:"backup_time";i:1458784569;s:11:"job_time_ms";d:1458784569.5335299968719482421875;s:7:"service";a:1:{i:0;s:7:"dropbox";}s:11:"split_every";i:500;s:11:"maxzipbatch";i:26214400;s:17:"job_file_entities";a:5:{s:7:"plugins";a:1:{s:5:"index";i:0;}s:6:"themes";a:1:{s:5:"index";i:0;}s:7:"uploads";a:1:{s:5:"index";i:0;}s:10:"mu-plugins";a:1:{s:5:"index";i:0;}s:6:"others";a:1:{s:5:"index";i:0;}}s:12:"option_cache";a:1:{s:15:"updraft_dropbox";a:6:{s:6:"appkey";b:0;s:6:"secret";b:0;s:6:"folder";s:16:"actorscompassdev";s:16:"tk_request_token";s:192:"+VQ3iXfPndt81Jmg9mv6tYErev6j0LXVa9HvtuE81E19WFdu1gBYNR8pPnYGbGhUay7PXECYGmiTgMARgwL1rttVaoBGgSkYdk8M9HF18QA0kpnDOy5Ch/juRGgijY7Io4OOetXLRkRMCLhtiDGW4fVJ0kFKu74qtIc/3rIIrrM4AOWl9DF3oJ5XdZemne58";s:15:"tk_access_token";s:216:"ONzBPLlFJfNMsiJArYTJe2ga0hSGwgBZZBcm9eTVKszAOhJyPh6w6co3AvZ19tVDftyTpgEoE1bm6sx+T4qnHfoUih1GyZiF5N2YaAayXH02cwmQtu/ebh9bRf9disYlQu+XB1x/UtE1nwig1kR4YMXjFhm7tV9FVGnojrec8coddgtUACLLI2tgeE9z/Njq82gehOhBGucywqH/kD5AgQ==";s:9:"ownername";s:17:"Shannon MacMillan";}}s:18:"uploaded_lastreset";i:0;s:8:"one_shot";b:0;s:18:"followsups_allowed";b:1;s:15:"backup_database";a:1:{s:2:"wp";a:2:{s:6:"status";s:8:"finished";s:6:"dbinfo";a:0:{}}}s:12:"backup_files";s:8:"finished";s:12:"runs_started";a:1:{i:0;d:1458784569.5656909942626953125;}s:18:"current_resumption";i:0;s:6:"binzip";s:12:"/usr/bin/zip";s:22:"filecreating_substatus";a:3:{s:1:"e";s:6:"others";s:1:"i";i:5;s:1:"t";i:5;}s:19:"files_enumerated_at";a:5:{s:7:"plugins";i:1458784569;s:6:"themes";i:1458784572;s:7:"uploads";i:1458784572;s:10:"mu-plugins";i:1458784572;s:6:"others";i:1458784572;}s:9:"run_times";a:1:{i:0;d:61.6695430278778076171875;}s:14:"useful_checkin";i:0;s:13:"sha1-plugins0";s:40:"ed8409bec5e0079115c2643876f127e939b606b1";s:12:"sha1-themes0";s:40:"3fadfdab04fca6337693dba28ff11fddbf1ee771";s:13:"sha1-uploads0";s:40:"16d1d4eed675f2d902793e44221e87663262897e";s:16:"sha1-mu-plugins0";s:40:"3812d4af1b1ae209927be159859d9cadbfc0f300";s:12:"sha1-others0";s:40:"2383c303653273d4d42b8b40769a8f7c72a41ad5";s:18:"backup_files_array";a:10:{s:7:"plugins";a:1:{i:0;s:61:"backup_2016-03-24-0156_ActorsCompass_0f20b4e51026-plugins.zip";}s:12:"plugins-size";i:19008423;s:6:"themes";a:1:{i:0;s:60:"backup_2016-03-24-0156_ActorsCompass_0f20b4e51026-themes.zip";}s:11:"themes-size";i:1422732;s:7:"uploads";a:1:{i:0;s:61:"backup_2016-03-24-0156_ActorsCompass_0f20b4e51026-uploads.zip";}s:12:"uploads-size";i:1901879;s:10:"mu-plugins";a:1:{i:0;s:64:"backup_2016-03-24-0156_ActorsCompass_0f20b4e51026-mu-plugins.zip";}s:15:"mu-plugins-size";i:1183680;s:6:"others";a:1:{i:0;s:60:"backup_2016-03-24-0156_ActorsCompass_0f20b4e51026-others.zip";}s:11:"others-size";i:892;}s:10:"binsqldump";s:18:"/usr/bin/mysqldump";s:20:"dbcreating_substatus";a:3:{s:1:"t";s:16:"wp_rg_lead_notes";s:1:"i";i:99;s:1:"a";i:99;}s:8:"warnings";a:0:{}s:8:"sha1-db0";s:40:"da6c634b2e5ed30e4d30c40a69f3be97f57faefb";s:19:"uploading_substatus";a:3:{s:1:"i";i:4;s:1:"p";i:0;s:1:"t";i:6;}s:44:"updraf_dbid_7b79f1098fbc090947fe07d0390e7264";s:22:"AAAAAAAAng3Dw7HtyRTatw";s:44:"updraf_dbof_7b79f1098fbc090947fe07d0390e7264";i:19008423;s:49:"uploaded_dropbox-7b79f1098fbc090947fe07d0390e7264";s:3:"yes";s:41:"uploaded_7b79f1098fbc090947fe07d0390e7264";s:3:"yes";s:44:"updraf_dbid_c2856c647cba79941f64f914ab37d84a";s:22:"AAAAAAAAng7CLp1F8kWYQA";s:44:"updraf_dbof_c2856c647cba79941f64f914ab37d84a";i:1422732;s:49:"uploaded_dropbox-c2856c647cba79941f64f914ab37d84a";s:3:"yes";s:41:"uploaded_c2856c647cba79941f64f914ab37d84a";s:3:"yes";s:44:"updraf_dbid_e5a69fdf92deb6ef7203b15ba05c6cea";s:22:"AAAAAAAAng-GvKczTtp_kA";s:44:"updraf_dbof_e5a69fdf92deb6ef7203b15ba05c6cea";i:1901879;s:49:"uploaded_dropbox-e5a69fdf92deb6ef7203b15ba05c6cea";s:3:"yes";s:41:"uploaded_e5a69fdf92deb6ef7203b15ba05c6cea";s:3:"yes";s:44:"updraf_dbid_89cbfb0d6dc25047e2956550cb6bd162";s:22:"AAAAAAAAnhCe_kRr1VEL2g";s:44:"updraf_dbof_89cbfb0d6dc25047e2956550cb6bd162";i:1183680;s:49:"uploaded_dropbox-89cbfb0d6dc25047e2956550cb6bd162";s:3:"yes";s:41:"uploaded_89cbfb0d6dc25047e2956550cb6bd162";s:3:"yes";}'),
(19243, 1, '_site_transient_timeout_itsec_upload_dir', '1463783862'),
(19244, 1, '_site_transient_itsec_upload_dir', 'a:6:{s:4:"path";s:103:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/uploads/2016/05";s:3:"url";s:54:"http://actorscompassdev.dev/wp-content/uploads/2016/05";s:6:"subdir";s:8:"/2016/05";s:7:"basedir";s:95:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/uploads";s:7:"baseurl";s:46:"http://actorscompassdev.dev/wp-content/uploads";s:5:"error";b:0;}'),
(19256, 1, '_site_transient_timeout_theme_roots', '1463699487'),
(19257, 1, '_site_transient_theme_roots', 'a:4:{s:6:"AClite";s:7:"/themes";s:13:"ActorsCompass";s:7:"/themes";s:8:"Strapped";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}'),
(19258, 1, '_site_transient_timeout_browser_45d7a0e36a03fdfcc7a4ee20ed1b5b33', '1464302488'),
(19259, 1, '_site_transient_browser_45d7a0e36a03fdfcc7a4ee20ed1b5b33', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"50.0.2661.86";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(19266, 1, '_site_transient_timeout_GFCache_205e17bae9e356b538d8068eeb2cbe6b', '1463698422'),
(19267, 1, '_site_transient_GFCache_205e17bae9e356b538d8068eeb2cbe6b', 'a:0:{}'),
(19268, 1, '_site_transient_timeout_GFCache_fe0e51a1da15c9a4bb7eeac3d77014c8', '1463698422'),
(19269, 1, '_site_transient_GFCache_fe0e51a1da15c9a4bb7eeac3d77014c8', 'a:0:{}'),
(19270, 1, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1463698025;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:13:{s:39:"aryo-activity-log/aryo-activity-log.php";O:8:"stdClass":6:{s:2:"id";s:5:"41038";s:4:"slug";s:17:"aryo-activity-log";s:6:"plugin";s:39:"aryo-activity-log/aryo-activity-log.php";s:11:"new_version";s:6:"2.2.12";s:3:"url";s:48:"https://wordpress.org/plugins/aryo-activity-log/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/aryo-activity-log.2.2.12.zip";}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.7.zip";}s:73:"advanced-responsive-video-embedder/advanced-responsive-video-embedder.php";O:8:"stdClass":6:{s:2:"id";s:5:"28990";s:4:"slug";s:34:"advanced-responsive-video-embedder";s:6:"plugin";s:73:"advanced-responsive-video-embedder/advanced-responsive-video-embedder.php";s:11:"new_version";s:5:"6.4.1";s:3:"url";s:65:"https://wordpress.org/plugins/advanced-responsive-video-embedder/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/advanced-responsive-video-embedder.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:45:"enhanced-text-widget/enhanced-text-widget.php";O:8:"stdClass":6:{s:2:"id";s:5:"22825";s:4:"slug";s:20:"enhanced-text-widget";s:6:"plugin";s:45:"enhanced-text-widget/enhanced-text-widget.php";s:11:"new_version";s:5:"1.4.5";s:3:"url";s:51:"https://wordpress.org/plugins/enhanced-text-widget/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/enhanced-text-widget.1.4.5.zip";}s:41:"better-wp-security/better-wp-security.php";O:8:"stdClass":7:{s:2:"id";s:5:"18308";s:4:"slug";s:18:"better-wp-security";s:6:"plugin";s:41:"better-wp-security/better-wp-security.php";s:11:"new_version";s:5:"5.3.7";s:3:"url";s:49:"https://wordpress.org/plugins/better-wp-security/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/better-wp-security.5.3.7.zip";s:14:"upgrade_notice";s:109:"Version 5.3.6 contains a bugfix that fixes compatability with WordPress SEO and is recommended for all users.";}s:31:"sg-cachepress/sg-cachepress.php";O:8:"stdClass":6:{s:2:"id";s:5:"54390";s:4:"slug";s:13:"sg-cachepress";s:6:"plugin";s:31:"sg-cachepress/sg-cachepress.php";s:11:"new_version";s:5:"2.3.4";s:3:"url";s:44:"https://wordpress.org/plugins/sg-cachepress/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/sg-cachepress.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:8:"4.3.10.1";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.3.10.1.zip";}s:27:"updraftplus/updraftplus.php";O:8:"stdClass":6:{s:2:"id";s:5:"31679";s:4:"slug";s:11:"updraftplus";s:6:"plugin";s:27:"updraftplus/updraftplus.php";s:11:"new_version";s:6:"1.12.6";s:3:"url";s:42:"https://wordpress.org/plugins/updraftplus/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/updraftplus.1.12.6.zip";}s:52:"user-activation-keys/ds_wp3_user_activation_keys.php";O:8:"stdClass":7:{s:2:"id";s:5:"17097";s:4:"slug";s:20:"user-activation-keys";s:6:"plugin";s:52:"user-activation-keys/ds_wp3_user_activation_keys.php";s:11:"new_version";s:5:"3.5.2";s:3:"url";s:51:"https://wordpress.org/plugins/user-activation-keys/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/user-activation-keys.zip";s:14:"upgrade_notice";s:111:"Tested up to: WP 3.9.2, removed batch delete of old keys, improved deleting an individual user key, typo fixes.";}s:31:"user-activity/user-activity.php";O:8:"stdClass":6:{s:2:"id";s:5:"39757";s:4:"slug";s:13:"user-activity";s:6:"plugin";s:31:"user-activity/user-activity.php";s:11:"new_version";s:3:"0.9";s:3:"url";s:44:"https://wordpress.org/plugins/user-activity/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/user-activity.zip";}s:33:"user-switching/user-switching.php";O:8:"stdClass":7:{s:2:"id";s:4:"6923";s:4:"slug";s:14:"user-switching";s:6:"plugin";s:33:"user-switching/user-switching.php";s:11:"new_version";s:5:"1.0.9";s:3:"url";s:45:"https://wordpress.org/plugins/user-switching/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/user-switching.1.0.9.zip";s:14:"upgrade_notice";s:86:"Remove the bundled languages in favour of language packs from translate.wordpress.org.";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}}}'),
(19272, 1, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1463698003;s:15:"version_checked";s:5:"4.5.2";s:12:"translations";a:0:{}}'),
(19273, 1, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1463698035;s:7:"checked";a:4:{s:6:"AClite";s:5:"1.0.0";s:13:"ActorsCompass";s:5:"1.0.0";s:8:"Strapped";s:5:"1.0.0";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}'),
(19274, 1, '_site_transient_timeout_wdp_un_local_projects', '1463698628'),
(19275, 1, '_site_transient_wdp_un_local_projects', 'a:10:{i:99;a:7:{s:3:"pid";s:2:"99";s:4:"name";s:14:"Domain Mapping";s:8:"filename";s:33:"domain-mapping/domain-mapping.php";s:4:"path";s:129:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/domain-mapping/domain-mapping.php";s:7:"version";s:7:"4.4.2.3";s:4:"slug";s:18:"wpmudev_install-99";s:4:"type";s:6:"plugin";}i:51;a:7:{s:3:"pid";s:2:"51";s:4:"name";s:18:"Google Analytics +";s:8:"filename";s:49:"google-analytics-async/google-analytics-async.php";s:4:"path";s:145:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/google-analytics-async/google-analytics-async.php";s:7:"version";s:7:"3.1.5.1";s:4:"slug";s:18:"wpmudev_install-51";s:4:"type";s:6:"plugin";}i:883804;a:7:{s:3:"pid";s:6:"883804";s:4:"name";s:23:"Multisite Theme Manager";s:8:"filename";s:51:"multisite-theme-manager/multisite-theme-manager.php";s:4:"path";s:147:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/multisite-theme-manager/multisite-theme-manager.php";s:7:"version";s:5:"1.1.3";s:4:"slug";s:22:"wpmudev_install-883804";s:4:"type";s:6:"plugin";}i:49;a:7:{s:3:"pid";s:2:"49";s:4:"name";s:9:"Pro Sites";s:8:"filename";s:23:"pro-sites/pro-sites.php";s:4:"path";s:119:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/pro-sites/pro-sites.php";s:7:"version";s:5:"3.5.4";s:4:"slug";s:18:"wpmudev_install-49";s:4:"type";s:6:"plugin";}i:32;a:7:{s:3:"pid";s:2:"32";s:4:"name";s:19:"Remember Me Checked";s:8:"filename";s:43:"remember-me-checked/remember-me-checked.php";s:4:"path";s:139:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/remember-me-checked/remember-me-checked.php";s:7:"version";s:5:"1.0.1";s:4:"slug";s:18:"wpmudev_install-32";s:4:"type";s:6:"plugin";}i:35;a:7:{s:3:"pid";s:2:"35";s:4:"name";s:39:"Set Password on Multisite Blog Creation";s:8:"filename";s:35:"signup-password/signup-password.php";s:4:"path";s:131:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/signup-password/signup-password.php";s:7:"version";s:7:"1.1.2.3";s:4:"slug";s:18:"wpmudev_install-35";s:4:"type";s:6:"plugin";}i:3;a:7:{s:3:"pid";s:1:"3";s:4:"name";s:13:"User Activity";s:8:"filename";s:31:"user-activity/user-activity.php";s:4:"path";s:127:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/user-activity/user-activity.php";s:7:"version";s:3:"1.1";s:4:"slug";s:17:"wpmudev_install-3";s:4:"type";s:6:"plugin";}i:912164;a:7:{s:3:"pid";s:6:"912164";s:4:"name";s:12:"WP Smush Pro";s:8:"filename";s:25:"wp-smush-pro/wp-smush.php";s:4:"path";s:121:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/wp-smush-pro/wp-smush.php";s:7:"version";s:5:"2.2.2";s:4:"slug";s:22:"wpmudev_install-912164";s:4:"type";s:6:"plugin";}i:167;a:7:{s:3:"pid";s:3:"167";s:4:"name";s:10:"SmartCrawl";s:8:"filename";s:29:"wpmu-dev-seo/wpmu-dev-seo.php";s:4:"path";s:125:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/wpmu-dev-seo/wpmu-dev-seo.php";s:7:"version";s:5:"1.7.7";s:4:"slug";s:19:"wpmudev_install-167";s:4:"type";s:6:"plugin";}i:119;a:7:{s:3:"pid";s:3:"119";s:4:"name";s:18:"WPMU DEV Dashboard";s:8:"filename";s:40:"wpmudev-updates/update-notifications.php";s:4:"path";s:136:"/Users/macmillan/Desktop/ACTORSCOMPASS/actorscompassdev/actorscompassdev.dev/wp-content/plugins/wpmudev-updates/update-notifications.php";s:7:"version";s:5:"4.0.9";s:4:"slug";s:19:"wpmudev_install-119";s:4:"type";s:6:"plugin";}}') ;

#
# End of data contents of table `wp_sitemeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(28, 8, 0),
(28, 11, 0),
(135, 8, 0),
(135, 9, 0),
(135, 11, 0),
(188, 3, 0),
(188, 4, 0),
(188, 8, 0),
(188, 9, 0),
(198, 5, 0),
(198, 6, 0),
(198, 8, 0),
(198, 10, 0),
(212, 5, 0),
(212, 6, 0),
(212, 8, 0),
(212, 10, 0),
(227, 7, 0),
(227, 8, 0),
(253, 12, 0),
(254, 12, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'post_tag', '', 0, 2),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'category', '', 0, 6),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 0, 2),
(12, 12, 'nav_menu', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'ActorsCompass Updates', 'actorscompass-updates', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'headshots', 'headshots', 0),
(4, 'image optimization', 'image-optimization', 0),
(5, 'acting resume', 'acting-resume', 0),
(6, 'actor resume', 'actor-resume', 0),
(7, 'Blogging for actors', 'blogging-for-actors', 0),
(8, 'Pro Tips', 'pro-tips', 0),
(9, 'Headshots', 'headshots', 0),
(10, 'Resumes', 'resumes', 0),
(11, 'Reels', 'reels', 0),
(12, 'Social Media Links', 'social-media-links', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ACadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:2:{s:64:"35f0ac3a212138bb4df8b2bf16a4eb0211caba2eb2a1eb216d2499a41a85ae16";a:4:{s:10:"expiration";i:1463870483;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36";s:5:"login";i:1463697683;}s:64:"08fda1abd19a763eb7577f85925d671eed6db7229a41abd04cf71ddf6520aca8";a:2:{s:10:"expiration";i:1463701284;s:20:"psts_sessions_active";b:1;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '255'),
(16, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(17, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:21:"dashboard_quick_press";i:1;s:17:"dashboard_primary";}'),
(18, 1, 'source_domain', 'actorscompass.com'),
(19, 1, 'primary_blog', '1'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&advImgDetails=show&align=none'),
(21, 1, 'wp_user-settings-time', '1452506221'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, '_wdp_un_has_gravatar', '1'),
(26, 2, 'nickname', 'shannon'),
(27, 2, 'first_name', ''),
(28, 2, 'last_name', ''),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(36, 2, 'wp_user_level', '0'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 3, 'nickname', 'helenkim'),
(39, 3, 'first_name', 'Helen'),
(40, 3, 'last_name', 'Kim'),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'comment_shortcuts', 'false'),
(44, 3, 'admin_color', 'fresh'),
(45, 3, 'use_ssl', '0'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(48, 3, 'wp_user_level', '0'),
(49, 3, 'dismissed_wp_pointers', ''),
(50, 4, 'nickname', 'demo user'),
(51, 4, 'first_name', ''),
(52, 4, 'last_name', ''),
(53, 4, 'description', ''),
(54, 4, 'rich_editing', 'true'),
(55, 4, 'comment_shortcuts', 'false'),
(56, 4, 'admin_color', 'fresh'),
(57, 4, 'use_ssl', '0'),
(58, 4, 'show_admin_bar_front', 'true'),
(61, 4, 'dismissed_wp_pointers', ''),
(62, 4, 'show_welcome_panel', '2'),
(63, 4, 'primary_blog', '2'),
(64, 4, 'source_domain', 'demo.actorscompassdev.com'),
(65, 4, 'wp_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(66, 4, 'wp_2_user_level', '10'),
(67, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(68, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:"slugdiv";}'),
(69, 1, 'wp_2_r_tru_u_x', 'a:2:{s:2:"id";s:0:"";s:7:"expires";i:86400;}'),
(70, 1, 'wp_r_tru_u_x', 'a:2:{s:2:"id";s:0:"";s:7:"expires";i:86400;}'),
(91, 6, 'nickname', 'keller1'),
(92, 6, 'first_name', ''),
(93, 6, 'last_name', ''),
(94, 6, 'description', ''),
(95, 6, 'rich_editing', 'true'),
(96, 6, 'comment_shortcuts', 'false'),
(97, 6, 'admin_color', 'fresh'),
(98, 6, 'use_ssl', '0'),
(99, 6, 'show_admin_bar_front', 'true'),
(102, 6, 'dismissed_wp_pointers', ''),
(103, 6, 'session_tokens', 'a:2:{s:64:"ff3c4cccf59dc771d8daaf87f8451ddaf714953480a825280e8a454f7bae713d";a:4:{s:10:"expiration";i:1459162418;s:2:"ip";s:12:"76.171.79.85";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/601.4.4 (KHTML, like Gecko) Version/9.0.3 Safari/537.86.4";s:5:"login";i:1457952818;}s:64:"a136f6d71ab077b365936d077a24b894110db586b108cbb3fbb9ba3b7f6359c8";a:2:{s:10:"expiration";i:1457983269;s:20:"psts_sessions_active";b:1;}}'),
(104, 6, 'show_welcome_panel', '2'),
(105, 6, 'primary_blog', '4'),
(106, 6, 'source_domain', 'keller1.actorscompassdev.com'),
(107, 6, 'wp_4_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(108, 6, 'wp_4_user_level', '10'),
(109, 6, 'wp_4_dashboard_quick_press_last_post_id', '3'),
(110, 4, 'session_tokens', 'a:2:{s:64:"975242f108bdf45b401b6972bcd07c15de6a6425134e8a863a6ca003d6389696";a:4:{s:10:"expiration";i:1459925900;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36";s:5:"login";i:1459753100;}s:64:"1c1a25a67adb526fba8cb62253fae5d3db632f8effca567bde6d6aa41782254e";a:2:{s:10:"expiration";i:1459760334;s:20:"psts_sessions_active";b:1;}}'),
(111, 4, 'wp_2_r_tru_u_x', 'a:2:{s:2:"id";s:0:"";s:7:"expires";i:86400;}'),
(112, 7, 'nickname', 'shannontest1'),
(113, 7, 'first_name', ''),
(114, 7, 'last_name', ''),
(115, 7, 'description', ''),
(116, 7, 'rich_editing', 'true'),
(117, 7, 'comment_shortcuts', 'false'),
(118, 7, 'admin_color', 'fresh'),
(119, 7, 'use_ssl', '0'),
(120, 7, 'show_admin_bar_front', 'true'),
(123, 7, 'dismissed_wp_pointers', ''),
(124, 7, 'session_tokens', 'a:1:{s:64:"447bc962b5acab23fc04327a6608457b9df42630973d3ddc29172f58880fb8f5";a:2:{s:10:"expiration";i:1458717376;s:20:"psts_sessions_active";b:1;}}'),
(125, 7, 'show_welcome_panel', '2'),
(126, 7, 'primary_blog', '5') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(127, 7, 'source_domain', 'shannontest1.actorscompassdev.com'),
(128, 7, 'wp_5_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(129, 7, 'wp_5_user_level', '10'),
(130, 7, 'wp_5_r_tru_u_x', 'a:2:{s:2:"id";i:0;s:7:"expires";i:1458677635;}'),
(131, 4, 'wp_2_user-settings', 'libraryContent=browse'),
(132, 4, 'wp_2_user-settings-time', '1458874613'),
(133, 1, 'ignore_redux_blast_1459552778', '1'),
(134, 1, 'ignore_redux_blast_1459550459', '1'),
(135, 8, 'nickname', 'shannontest2'),
(136, 8, 'first_name', ''),
(137, 8, 'last_name', ''),
(138, 8, 'description', ''),
(139, 8, 'rich_editing', 'true'),
(140, 8, 'comment_shortcuts', 'false'),
(141, 8, 'admin_color', 'fresh'),
(142, 8, 'use_ssl', '0'),
(143, 8, 'show_admin_bar_front', 'true'),
(146, 8, 'dismissed_wp_pointers', ''),
(147, 9, 'nickname', 'shannontest3'),
(148, 9, 'first_name', ''),
(149, 9, 'last_name', ''),
(150, 9, 'description', ''),
(151, 9, 'rich_editing', 'true'),
(152, 9, 'comment_shortcuts', 'false'),
(153, 9, 'admin_color', 'fresh'),
(154, 9, 'use_ssl', '0'),
(155, 9, 'show_admin_bar_front', 'true'),
(158, 9, 'dismissed_wp_pointers', ''),
(159, 9, 'show_welcome_panel', '2'),
(160, 9, 'primary_blog', '7'),
(161, 9, 'source_domain', 'shannontest3.actorscompassdev.dev'),
(162, 9, 'wp_7_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(163, 9, 'wp_7_user_level', '10'),
(164, 4, 'ignore_redux_blast_1459552778', '1'),
(165, 10, 'nickname', 'stesting777'),
(166, 10, 'first_name', ''),
(167, 10, 'last_name', ''),
(168, 10, 'description', ''),
(169, 10, 'rich_editing', 'true'),
(170, 10, 'comment_shortcuts', 'false'),
(171, 10, 'admin_color', 'fresh'),
(172, 10, 'use_ssl', '0'),
(173, 10, 'show_admin_bar_front', 'true'),
(176, 10, 'dismissed_wp_pointers', ''),
(177, 10, 'session_tokens', 'a:1:{s:64:"6414408978768e7ad879d65de0aea9ecd81f55802023849bf5aea34b8a11c42e";a:2:{s:10:"expiration";i:1459766002;s:20:"psts_sessions_active";b:1;}}'),
(178, 10, 'show_welcome_panel', '2'),
(179, 10, 'primary_blog', '8'),
(180, 10, 'source_domain', 'testing.actorscompassdev.dev'),
(181, 10, 'wp_8_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(182, 10, 'wp_8_user_level', '10'),
(183, 11, 'nickname', 'shannonnewtest'),
(184, 11, 'first_name', ''),
(185, 11, 'last_name', ''),
(186, 11, 'description', ''),
(187, 11, 'rich_editing', 'true'),
(188, 11, 'comment_shortcuts', 'false'),
(189, 11, 'admin_color', 'fresh'),
(190, 11, 'use_ssl', '0'),
(191, 11, 'show_admin_bar_front', 'true'),
(194, 11, 'dismissed_wp_pointers', ''),
(195, 11, 'session_tokens', 'a:1:{s:64:"b718e614dd6ab490bd01ecaf7fcfbcf63fe023fbe2ffb4c679d9edcca9bf4b4a";a:5:{s:10:"expiration";i:1459767689;s:20:"psts_sessions_active";b:1;s:10:"tax_object";O:8:"stdClass":6:{s:7:"country";s:0:"";s:4:"type";s:0:"";s:8:"tax_rate";b:0;s:9:"apply_tax";b:0;s:2:"ip";b:0;s:8:"evidence";s:0:"";}s:16:"new_blog_details";a:10:{s:8:"username";s:14:"shannonnewtest";s:5:"email";s:24:"max@shannonmacmillan.com";s:8:"blogname";s:7:"newtest";s:5:"title";s:8:"New Test";s:5:"level";i:0;s:6:"period";i:1;s:9:"user_pass";s:11:"newtest123!";s:7:"blog_id";i:9;s:6:"domain";s:28:"newtest.actorscompassdev.dev";s:4:"path";s:1:"/";}s:14:"activation_key";s:16:"07ab8b9410a82559";}}'),
(196, 11, 'show_welcome_panel', '2'),
(197, 11, 'primary_blog', '9'),
(198, 11, 'source_domain', 'newtest.actorscompassdev.dev'),
(199, 11, 'wp_9_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(200, 11, 'wp_9_user_level', '10'),
(201, 12, 'nickname', 'newtest2'),
(202, 12, 'first_name', ''),
(203, 12, 'last_name', ''),
(204, 12, 'description', ''),
(205, 12, 'rich_editing', 'true'),
(206, 12, 'comment_shortcuts', 'false'),
(207, 12, 'admin_color', 'fresh'),
(208, 12, 'use_ssl', '0'),
(209, 12, 'show_admin_bar_front', 'true'),
(212, 12, 'dismissed_wp_pointers', ''),
(213, 12, 'session_tokens', 'a:1:{s:64:"3eb7a37d97cd42338603f23a61e586a10a9a8d2df1e9f2f38eb1bad9799c083f";a:3:{s:10:"expiration";i:1459786153;s:20:"psts_sessions_active";b:1;s:10:"tax_object";O:8:"stdClass":6:{s:7:"country";s:0:"";s:4:"type";s:0:"";s:8:"tax_rate";b:0;s:9:"apply_tax";b:0;s:2:"ip";b:0;s:8:"evidence";s:0:"";}}}'),
(214, 12, 'show_welcome_panel', '2'),
(215, 12, 'primary_blog', '10'),
(216, 12, 'source_domain', 'newtest2.actorscompassdev.dev'),
(217, 12, 'wp_10_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(218, 12, 'wp_10_user_level', '10'),
(219, 12, 'wp_10_r_tru_u_x', 'a:2:{s:2:"id";s:0:"";s:7:"expires";i:86400;}'),
(220, 12, 'ignore_redux_blast_1459764546', '1') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'ACadmin', '$P$BYGosp8eI.hoSho9Mulfa6YZQ14d/A.', 'acadmin', 'shannon@bluestormcreative.com', '', '2016-01-07 00:09:37', '', 0, 'ACadmin', 0, 0),
(2, 'shannon', '$P$BTTOkgTfG763AX0mYf.mrt25HkCFol/', 'shannon', 'max@bluestormcreative.com', '', '2016-01-11 09:51:45', '', 0, 'Shannon', 0, 0),
(3, 'helenkim', '$P$BD84Qvlu2JUiONXIZs.Yl7C8GJwlup0', 'helenkim', 'meetme@thethinkfarm.com', '', '2016-01-11 09:51:45', '', 0, 'Helen', 0, 0),
(4, 'demo', '$P$BUn95B0jKGlvqEnuEzPeUE2ti2QJa31', 'demo-user', 'grant@kellerdigital.com', '', '2016-03-04 01:27:49', '1457054869:$P$BBuno/5249QbVM6jYwXSXxRLI/UaPk0', 0, 'demo', 0, 0),
(6, 'keller1', '$P$BN4XObbLWszFoj2Z4vfTnjLUYs8.1q0', 'keller1', 'kellermanage@gmail.com', '', '2016-03-14 10:53:38', '', 0, 'keller1', 0, 0),
(7, 'shannontest1', '$P$B0PucohpoZZuWKOgHb2/GLiMfQ5umO.', 'shannontest1', 'shannon.1@bluestormcreative.com', '', '2016-03-22 19:12:17', '', 0, 'shannontest1', 0, 0),
(8, 'shannontest2', '$P$BTf1hB4Za.QF5BCa96IHc45KtNBppl.', 'shannontest2', 'shannon.2@bluestormcreative.com', '', '2016-04-04 05:54:34', '1459749275:$P$B41V8jzEU4lwPazTn6lO.RvQgHXgLu1', 0, 'shannontest2', 0, 0),
(9, 'shannontest3', '$P$BiLZA1yWV5VjsGQfzHncM55qikl8100', 'shannontest3', 'shannon.3@bluestormcreative.com', '', '2016-04-04 05:57:02', '1459749423:$P$BYpazGszOXCKiDvpezkJXhxvT/sc/r.', 0, 'shannontest3', 0, 0),
(10, 'stesting777', '$P$Bu.0OUTSnX8TV0VrEMM.tSNIzn8IKY1', 'stesting777', 'shannon.7@bluestormcreative.com', '', '2016-04-04 09:33:10', '', 0, 'stesting777', 0, 0),
(11, 'shannonnewtest', '$P$BgpZyEBWYGLeXGqLAZt40yF.28G7tU.', 'shannonnewtest', 'max@shannonmacmillan.com', '', '2016-04-04 10:01:17', '', 0, 'shannonnewtest', 0, 0),
(12, 'newtest2', '$P$Bom7j9lJObax/8BatelsRtJ/h1.wXg.', 'newtest2', 'max.1@shannonmacmillan.com', '', '2016-04-04 10:05:35', '', 0, 'newtest2', 0, 0) ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#
