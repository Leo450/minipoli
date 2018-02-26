-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 26 Février 2018 à 18:44
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `minipoli`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-14 03:28:35', '2018-02-14 02:28:35', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 15, 'WooCommerce', 'woocommerce@minipoli.local', '', '', '2018-02-14 09:18:38', '2018-02-14 08:18:38', 'État de la commande modifié de Attente paiement à En cours.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://minipoli.local', 'yes'),
(2, 'home', 'http://minipoli.local', 'yes'),
(3, 'blogname', 'Minipoli', 'yes'),
(4, 'blogdescription', 'Biscuits faits maison, {% category=&quot;personnalisable&quot; text=&quot;personnalisables&quot; %}.&lt;br/&gt;Décorés mains par {% category=&quot;saisons&quot; text=&quot;saison&quot; %}, pour vos {% category=&quot;evenements&quot; text=&quot;évènements&quot; %}.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'leo450450@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:11:"boutique/?$";s:27:"index.php?post_type=product";s:41:"boutique/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:36:"boutique/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:28:"boutique/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:51:"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:32:"categorie-produit/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:44:"categorie-produit/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:26:"categorie-produit/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:58:"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:53:"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:34:"etiquette-produit/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:46:"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:28:"etiquette-produit/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"produit/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"produit/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"produit/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"produit/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"produit/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"produit/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"produit/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"produit/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"produit/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"produit/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"produit/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"produit/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:27:"persocookie/persocookie.php";i:2;s:77:"product-input-fields-for-woocommerce/product-input-fields-for-woocommerce.php";i:3;s:37:"schedulecategory/schedulecategory.php";i:4;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:5;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:54:"/var/www/minipoli/wp-content/themes/minipoli/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'minipoli', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:6:"Client";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:21:"Gestionnaire boutique";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:10:{i:1519669300;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1519686000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519693200;a:1:{s:21:"ywraq_time_validation";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519698515;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1519698613;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519698650;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1519716695;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519718372;a:1:{s:16:"ywraq_clean_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1520294400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1518575674;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '0', 'no'),
(143, 'recently_activated', 'a:1:{s:37:"woo-add-to-quote/woo_add_to_quote.php";i:1519470726;}', 'yes'),
(153, 'woocommerce_store_address', 'Test', 'yes'),
(154, 'woocommerce_store_address_2', '', 'yes'),
(155, 'woocommerce_store_city', 'Test', 'yes'),
(156, 'woocommerce_default_country', 'FR', 'yes'),
(157, 'woocommerce_store_postcode', '12345', 'yes'),
(158, 'woocommerce_allowed_countries', 'all', 'yes'),
(159, 'woocommerce_all_except_countries', '', 'yes'),
(160, 'woocommerce_specific_allowed_countries', '', 'yes'),
(161, 'woocommerce_ship_to_countries', '', 'yes'),
(162, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(163, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(164, 'woocommerce_calc_taxes', 'no', 'yes'),
(165, 'woocommerce_currency', 'EUR', 'yes'),
(166, 'woocommerce_currency_pos', 'right', 'yes'),
(167, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(168, 'woocommerce_price_decimal_sep', ',', 'yes'),
(169, 'woocommerce_price_num_decimals', '2', 'yes'),
(170, 'woocommerce_shop_page_id', '4', 'yes'),
(171, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(172, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(173, 'woocommerce_weight_unit', 'kg', 'yes'),
(174, 'woocommerce_dimension_unit', 'cm', 'yes'),
(175, 'woocommerce_enable_reviews', 'yes', 'yes'),
(176, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(177, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(178, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(179, 'woocommerce_review_rating_required', 'yes', 'no'),
(180, 'woocommerce_manage_stock', 'yes', 'yes'),
(181, 'woocommerce_hold_stock_minutes', '60', 'no'),
(182, 'woocommerce_notify_low_stock', 'yes', 'no'),
(183, 'woocommerce_notify_no_stock', 'yes', 'no'),
(184, 'woocommerce_stock_email_recipient', 'leo450450@gmail.com', 'no'),
(185, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(186, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(188, 'woocommerce_stock_format', '', 'yes'),
(189, 'woocommerce_file_download_method', 'force', 'no'),
(190, 'woocommerce_downloads_require_login', 'no', 'no'),
(191, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_tax_classes', 'Taux réduit\nTaux Zéro', 'yes'),
(197, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'no'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_total_display', 'itemized', 'no'),
(201, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(202, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(203, 'woocommerce_ship_to_destination', 'billing', 'no'),
(204, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(205, 'woocommerce_enable_coupons', 'yes', 'yes'),
(206, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(207, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(208, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(209, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(210, 'woocommerce_cart_page_id', '5', 'yes'),
(211, 'woocommerce_checkout_page_id', '6', 'yes'),
(212, 'woocommerce_terms_page_id', '', 'no'),
(213, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(214, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(215, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(216, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(217, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(218, 'woocommerce_myaccount_page_id', '7', 'yes'),
(219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'no', 'no'),
(224, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(225, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(226, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(227, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(228, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(229, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(230, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(231, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(232, 'woocommerce_email_from_name', 'Minipoli', 'no'),
(233, 'woocommerce_email_from_address', 'leo450450@gmail.com', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(236, 'woocommerce_email_base_color', '#96588a', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_api_enabled', 'yes', 'yes'),
(241, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"produit";s:13:"category_base";s:17:"categorie-produit";s:8:"tag_base";s:17:"etiquette-produit";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(242, 'current_theme_supports_woocommerce', '1', 'yes'),
(246, 'default_product_cat', '15', 'yes'),
(249, 'woocommerce_version', '3.3.1', 'yes'),
(250, 'woocommerce_db_version', '3.3.1', 'yes'),
(251, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(252, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(253, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(264, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(268, 'woocommerce_product_type', 'physical', 'yes'),
(269, 'woocommerce_allow_tracking', 'no', 'yes'),
(270, 'woocommerce_tracker_last_send', '1518575544', 'yes'),
(283, 'woocommerce_stripe_settings', 'a:3:{s:7:"enabled";s:3:"yes";s:14:"create_account";b:0;s:5:"email";s:19:"leo450450@gmail.com";}', 'yes'),
(285, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:"reroute_requests";b:0;s:5:"email";s:19:"leo450450@gmail.com";}', 'yes'),
(286, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(287, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(288, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(289, 'wc_ppec_version', '1.5.1', 'yes'),
(295, 'wc_stripe_version', '4.0.5', 'yes'),
(296, '_transient_shipping-transient-version', '1518575660', 'yes'),
(297, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:"title";s:7:"Forfait";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:1:"0";}', 'yes'),
(298, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:"title";s:7:"Forfait";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:1:"0";}', 'yes'),
(300, 'current_theme', 'Minipoli', 'yes'),
(301, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #747474;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #404040;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #595959;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #404040;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #404040;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1518601371;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(302, 'theme_switched', '', 'yes'),
(303, 'storefront_nux_fresh_site', '0', 'yes'),
(305, 'woocommerce_catalog_rows', '4', 'yes'),
(306, 'woocommerce_catalog_columns', '3', 'yes'),
(316, '_transient_product_query-transient-version', '1519665014', 'yes'),
(323, 'schcat_settings_options', '2', 'yes'),
(324, 'schcat_settings_option__category', '2', 'yes'),
(327, 'schcat_settings_field__category', '0', 'yes'),
(329, 'schcat_settings_cat_1', '', 'yes'),
(331, 'schcat', '', 'yes'),
(332, 'schcat_settings_field__date_start', 'qzd', 'yes'),
(333, 'schcat_settings_field__date_end', '', 'yes'),
(334, 'schcat_settings_cat_1_field__date_start', '15 février 2018', 'yes'),
(335, 'schcat_settings_cat_1_field__date_end', '10 février 2018', 'yes'),
(336, 'category_children', 'a:0:{}', 'yes'),
(337, 'schcat_settings_cat_', '', 'yes'),
(338, 'schcat_settings_cat__field__date_start', '1 février 2018', 'yes'),
(339, 'schcat_settings_cat__field__date_end', '25 février 2018', 'yes'),
(342, 'schcat_settings_cat_15', '', 'yes'),
(343, 'schcat_settings_cat_15_field__date_start', '1 février 2018', 'yes'),
(344, 'schcat_settings_cat_15_field__date_end', '28 février 2018', 'yes'),
(345, 'schcat_settings_cat_16', '', 'yes'),
(346, 'schcat_settings_option_date__cat_15', '', 'yes'),
(347, 'schcat_settings_option__date__cat_15', '', 'yes'),
(348, 'schcat_dates_cat_15', '', 'yes'),
(353, 'storefront_nux_guided_tour', '1', 'yes'),
(356, '_transient_timeout_wc_shipping_method_count_1_1518575660', '1521184745', 'no'),
(357, '_transient_wc_shipping_method_count_1_1518575660', '2', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(361, '_transient_product-transient-version', '1519665014', 'yes'),
(477, 'alg_wc_pif_enabled', 'yes', 'yes'),
(478, 'alg_wc_pif_frontend_position', 'woocommerce_before_add_to_cart_button', 'yes'),
(479, 'alg_wc_pif_frontend_position_priority', '10', 'yes'),
(480, 'alg_wc_pif_frontend_before', '<table id="alg-product-input-fields-table" class="alg-product-input-fields-table">', 'yes'),
(481, 'alg_wc_pif_frontend_template', '<tr><td><label for="%field_id%">%title%</label></td><td>%field%</td></tr>', 'yes'),
(482, 'alg_wc_pif_frontend_after', '</table>', 'yes'),
(483, 'alg_wc_pif_frontend_required_html', '&nbsp;<abbr class="required" title="required">*</abbr>', 'yes'),
(484, 'alg_wc_pif_frontend_required_js', 'yes', 'yes'),
(485, 'alg_wc_pif_frontend_order_table_format', '&nbsp;| %title% %value%', 'yes'),
(486, 'alg_wc_pif_frontend_refill', 'yes', 'yes'),
(487, 'alg_wc_pif_attach_to_admin_new_order', 'yes', 'yes'),
(488, 'alg_wc_pif_attach_to_customer_processing_order', 'yes', 'yes'),
(489, 'alg_wc_pif__reset', 'no', 'yes'),
(490, 'alg_wc_pif_local_enabled', 'yes', 'yes'),
(491, 'alg_wc_pif_local_total_number_default', '1', 'yes'),
(492, 'alg_wc_pif_per_product_reset', 'no', 'yes'),
(493, 'alg_wc_pif_global_enabled', 'yes', 'yes'),
(494, 'alg_wc_pif_global_total_number', '1', 'yes'),
(495, 'alg_wc_pif_all_products_reset', 'no', 'yes'),
(496, 'alg_wc_pif_options_global_1', '', 'yes'),
(497, 'alg_wc_pif_enabled_global_1', 'no', 'yes'),
(498, 'alg_wc_pif_general_options_global_1', '', 'yes'),
(499, 'alg_wc_pif_type_global_1', 'text', 'yes'),
(500, 'alg_wc_pif_required_global_1', 'no', 'yes'),
(501, 'alg_wc_pif_title_global_1', 'Input Field', 'yes'),
(502, 'alg_wc_pif_placeholder_global_1', '', 'yes'),
(503, 'alg_wc_pif_default_value_global_1', '', 'yes'),
(504, 'alg_wc_pif_class_global_1', '', 'yes'),
(505, 'alg_wc_pif_style_global_1', '', 'yes'),
(506, 'alg_wc_pif_required_message_global_1', 'Field "%title%" is required!', 'yes'),
(507, 'alg_wc_pif_input_restrictions_options_global_1', '', 'yes'),
(508, 'alg_wc_pif_input_restrictions_min_global_1', '', 'yes'),
(509, 'alg_wc_pif_input_restrictions_max_global_1', '', 'yes'),
(510, 'alg_wc_pif_input_restrictions_step_global_1', '', 'yes'),
(511, 'alg_wc_pif_input_restrictions_maxlength_global_1', '', 'yes'),
(512, 'alg_wc_pif_input_restrictions_pattern_global_1', '', 'yes'),
(513, 'alg_wc_pif_type_checkbox_options_global_1', '', 'yes'),
(514, 'alg_wc_pif_type_checkbox_yes_global_1', 'Yes', 'yes'),
(515, 'alg_wc_pif_type_checkbox_no_global_1', 'No', 'yes'),
(516, 'alg_wc_pif_type_file_options_global_1', '', 'yes'),
(517, 'alg_wc_pif_type_file_accept_global_1', '.jpg,.jpeg,.png', 'yes'),
(518, 'alg_wc_pif_type_file_wrong_type_msg_global_1', 'Wrong file type!', 'yes'),
(519, 'alg_wc_pif_type_file_max_size_global_1', '0', 'yes'),
(520, 'alg_wc_pif_type_file_max_size_msg_global_1', 'File is too big!', 'yes'),
(521, 'alg_wc_pif_type_date_options_global_1', '', 'yes'),
(522, 'alg_wc_pif_type_datepicker_format_global_1', '', 'yes'),
(523, 'alg_wc_pif_type_datepicker_mindate_global_1', '-365', 'yes'),
(524, 'alg_wc_pif_type_datepicker_maxdate_global_1', '365', 'yes'),
(525, 'alg_wc_pif_type_datepicker_addyear_global_1', 'no', 'yes'),
(526, 'alg_wc_pif_type_datepicker_yearrange_global_1', 'c-10:c+10', 'yes'),
(527, 'alg_wc_pif_type_datepicker_firstday_global_1', '0', 'yes'),
(528, 'alg_wc_pif_type_time_options_global_1', '', 'yes'),
(529, 'alg_wc_pif_type_timepicker_format_global_1', 'hh:mm p', 'yes'),
(530, 'alg_wc_pif_type_timepicker_interval_global_1', '15', 'yes'),
(531, 'alg_wc_pif_type_select_radio_options_global_1', '', 'yes'),
(532, 'alg_wc_pif_type_select_options_global_1', '', 'yes'),
(533, 'alg_wc_pif_all_products_field_1_reset', 'no', 'yes'),
(534, 'alg_wc_pif_version', '1.1.1', 'yes'),
(604, 'yit_recently_activated', 'a:2:{i:0;s:69:"yith-woocommerce-request-a-quote/yith-woocommerce-request-a-quote.php";i:1;s:69:"yith-woocommerce-request-a-quote/yith-woocommerce-request-a-quote.php";}', 'yes'),
(605, 'ywraq_page_id', '12', 'yes'),
(606, 'yith_wraq_general_videobox', 'a:7:{s:11:"plugin_name";s:32:"YITH Woocommerce Request A Quote";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:96:"Upgrade to the PREMIUM VERSION of YITH Woocommerce Request A Quote to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"123722478";s:15:"video_image_url";s:107:"http://minipoli.local/wp-content/plugins/yith-woocommerce-request-a-quote/assets/images/request-a-quote.jpg";s:17:"video_description";s:32:"YITH WooCommerce Request A Quote";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:199:"By purchasing the premium version of the plugin, you will benefit from the advanced features of the product and you will get one year of free update and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:85:"http://yithemes.com/themes/plugins/yith-woocommerce-request-a-quote/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(607, 'ywraq_show_btn_link', 'button', 'yes'),
(608, 'ywraq_show_btn_link_text', 'Add to quote', 'yes'),
(609, 'ywraq_hide_add_to_cart', 'no', 'yes'),
(610, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:32:"yith_woocommerce_request_a_quote";b:1;}', 'yes'),
(614, '_yith_ywraq_session_340820f3a37108b5702db2e72a998631', 'a:1:{s:3:"raq";s:6:"a:0:{}";}', 'no'),
(615, '_yith_ywraq_session_expires_340820f3a37108b5702db2e72a998631', '1518767978', 'no'),
(617, '_yith_ywraq_session_1', 'a:2:{s:3:"raq";s:182:"a:1:{s:32:"50905d7b2216bfeccb5b41016357176b";a:4:{s:10:"product_id";s:2:"13";s:12:"variation_id";s:2:"14";s:8:"quantity";i:1;s:10:"variations";a:1:{s:13:"attribute_qzd";s:3:"qzd";}}}";s:18:"yith_ywraq_notices";N;}', 'no'),
(618, '_yith_ywraq_session_expires_1', '1518767972', 'no'),
(619, '_yith_ywraq_session_627fef26036c639b39a99eedd54db17d', 'a:1:{s:3:"raq";s:6:"a:0:{}";}', 'no'),
(620, '_yith_ywraq_session_expires_627fef26036c639b39a99eedd54db17d', '1518767993', 'no'),
(722, '_yith_ywraq_session_f205b47ab0d8cd10df9fbc113bc2bec2', 'a:1:{s:3:"raq";s:6:"a:0:{}";}', 'no'),
(723, '_yith_ywraq_session_expires_f205b47ab0d8cd10df9fbc113bc2bec2', '1518768443', 'no'),
(743, '_transient_orders-transient-version', '1518596318', 'yes'),
(745, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(746, '_yith_ywraq_session_efbb5e725b0ef67d028aa6988de979ac', 'a:1:{s:3:"raq";s:6:"a:0:{}";}', 'no'),
(747, '_yith_ywraq_session_expires_efbb5e725b0ef67d028aa6988de979ac', '1518769806', 'no'),
(752, 'watq_unread_quotes', '1', 'yes'),
(799, 'theme_mods_minipoli', 'a:17:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:23;}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #de676f;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #de676f;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffa8b0;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #f4a98b;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #de676f;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #f4a98b;\n			}\n\n			.widget h1 {\n				border-bottom-color: #f4a98b;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #727272;\n			}\n\n			a  {\n				color: #de676f;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #de676f;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #f4a98b;\n				border-color: #f4a98b;\n				color: #ffffff;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #db9072;\n				border-color: #db9072;\n				color: #ffffff;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #de676f;\n				border-color: #de676f;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #c54e56;\n				border-color: #c54e56;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #636363;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #f4a98b;\n			}\n\n			.site-footer a:not(.button) {\n				color: #de676f;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #f4a98b;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #ffc2a4;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #f4a98b;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #de676f;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #727272;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #de676f;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #de676f;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #de676f;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #f4a98b;\n				color: #ffffff;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #db9072;\n				border-color: #db9072;\n				color: #ffffff;\n			}\n\n			.button.loading {\n				color: #f4a98b;\n			}\n\n			.button.loading:hover {\n				background-color: #f4a98b;\n			}\n\n			.button.loading:after {\n				color: #ffffff;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #f4a98b;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:24:"storefront_heading_color";s:7:"#f4a98b";s:23:"storefront_accent_color";s:7:"#de676f";s:28:"storefront_header_text_color";s:7:"#f4a98b";s:28:"storefront_header_link_color";s:7:"#de676f";s:31:"storefront_footer_heading_color";s:7:"#f4a98b";s:28:"storefront_footer_text_color";s:7:"#f4a98b";s:28:"storefront_footer_link_color";s:7:"#de676f";s:11:"custom_logo";i:39;s:34:"storefront_button_background_color";s:7:"#f4a98b";s:28:"storefront_button_text_color";s:7:"#ffffff";s:38:"storefront_button_alt_background_color";s:7:"#de676f";}', 'yes'),
(855, '_transient_timeout_external_ip_address_127.0.0.1', '1520075459', 'no'),
(856, '_transient_external_ip_address_127.0.0.1', '77.199.155.64', 'no'),
(862, '_site_transient_timeout_browser_4db8793b3d7acaec4a41560eb34c4ffa', '1520075472', 'no'),
(863, '_site_transient_browser_4db8793b3d7acaec4a41560eb34c4ffa', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.167";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(939, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(997, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1519655322;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(999, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1519654763;s:7:"checked";a:5:{s:8:"minipoli";s:5:"1.0.0";s:10:"storefront";s:5:"2.2.8";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(1000, 'wpcf7', 'a:2:{s:7:"version";s:3:"5.0";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1519488007;s:7:"version";s:3:"5.0";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(1006, 'storefront_nux_dismissed', '1', 'yes'),
(1007, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:7:"glacage";s:15:"attribute_label";s:8:"Glaçage";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:16:"personnalisation";s:15:"attribute_label";s:16:"Personnalisation";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(1091, 'schcat_dates_cat_26', '', 'yes'),
(1093, 'schcat_dates_cat_27', '', 'yes'),
(1095, 'schcat_dates_cat_28', '', 'yes'),
(1096, 'product_cat_children', 'a:2:{i:19;a:4:{i:0;i:20;i:1;i:21;i:2;i:22;i:3;i:25;}i:21;a:4:{i:0;i:26;i:1;i:27;i:2;i:28;i:3;i:29;}}', 'yes'),
(1105, 'schcat_dates_cat_26_date_start', '01-02-2018', 'yes'),
(1106, 'schcat_dates_cat_26_date_end', '28-02-2018', 'yes'),
(1109, 'schcat_dates_cat_29', '', 'yes'),
(1110, 'woocommerce_category_archive_display', '', 'yes'),
(1120, '_site_transient_timeout_theme_roots', '1519656562', 'no'),
(1121, '_site_transient_theme_roots', 'a:5:{s:8:"minipoli";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1125, '_transient_timeout_wc_report_sales_by_date', '1519741229', 'no'),
(1126, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"d50a3cf103029ca4a4073961a6073785";a:1:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"1";s:9:"post_date";s:19:"2018-02-14 09:18:38";}}s:32:"3c351e2e2a1b56ad00e38be18fd8d19a";a:0:{}s:32:"10624cce313cac4210a7ad0b2670eb1d";a:1:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"1";s:9:"post_date";s:19:"2018-02-14 09:18:38";}}s:32:"85d4c1cacd57b034dc4e908d97054615";N;s:32:"42b20b01c7ce6ad84f660843c4ea9654";a:1:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:1:"0";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2018-02-14 09:18:38";}}s:32:"9d8db10d80db60f7c478a49579fb8b38";a:0:{}s:32:"da232d7fc20d55b8b37e298868b5ffc7";a:0:{}s:32:"81cd5550f41b67d43dc07ace206dd34c";a:0:{}}', 'no'),
(1127, '_transient_timeout_wc_admin_report', '1519741229', 'no'),
(1128, '_transient_wc_admin_report', 'a:2:{s:32:"9dcbd0db9e14245c2539f29739a1ab4e";a:1:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:1:"0";s:9:"post_date";s:19:"2018-02-14 09:18:38";}}s:32:"a75ed8c35377ffec9deb10c6b359ef59";a:1:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:2:"13";s:15:"sparkline_value";s:1:"1";s:9:"post_date";s:19:"2018-02-14 09:18:38";}}}', 'no'),
(1133, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1519698030', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1134, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 26 Feb 2018 13:54:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Liste des candidats au bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/liste-candidats-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Feb 2018 11:45:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2092699";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/liste-candidats-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/liste-candidats-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WPFR sponsor du WP Tech Lyon !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Feb 2018 07:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2082223";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1507:"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wpfr-sponsor-wptech-lyon/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Loi anti-fraude et l’e-commerce : les informations officielles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 14:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Loi anti-fraude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2072415";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1503:"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"39";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"L’élection du bureau WPFR 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/election-bureau-wpfr-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 11:30:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2041252";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1530:"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/election-bureau-wpfr-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wpfr.net/election-bureau-wpfr-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"PHP Tour Montpellier 2018 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Jan 2018 10:12:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2035309";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1489:"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Le point sur les certifications WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/point-certifications-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Dec 2017 17:15:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2001761";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1552:"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wpfr.net/point-certifications-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/point-certifications-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Certification WordPress par WPFR, appel à contributions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Oct 2017 06:46:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1931227";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Le 30 septembre, c’est le WordPress Translation Day 2017 !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Sep 2017 12:03:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:10:"traduction";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1883236";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jb Audras";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 05 Sep 2017 11:59:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1860285";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/gen5-evenement-numerique-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"BlendWebMix 2017 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WzJcLpFnZ7Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Aug 2017 10:00:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1780344";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1513:"Le BlendWebMix 2017 aura lieu les 26 et 27 octobre 2017 à Lyon. Pour l&#8217;occasion, WPFR vous propose une billetterie communautaire pour vous faire profiter de tarifs avantageux. Le BlendWebMix est un évènement Web similaire aux WordCamps organisés par la communauté WordPress. Elle rassemble des orateurs talentueux aux multiples compétences Web qui vous feront partager leurs<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WzJcLpFnZ7Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"SOWD5tHMhWH236EVbdI1z3A5wC4";s:13:"last-modified";s:29:"Mon, 26 Feb 2018 13:57:11 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Mon, 26 Feb 2018 14:20:30 GMT";s:7:"expires";s:29:"Mon, 26 Feb 2018 14:20:30 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:140:"hq=":443"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=":443"; ma=2592000; v="41,39,38,37,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(1135, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1519698030', 'no'),
(1136, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1519654830', 'no'),
(1137, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1519698030', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1138, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"BitCoin et WordPress : Comment accepter les paiements en crypto-monnaie ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/Tn8SSn9lQkc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpformation.com/bitcoin-wordpress-woocommerce/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 26 Feb 2018 07:45:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:553:"\n		        Le Bitcoin est la nouvelle hype. C’est aussi l’ancienne hype. Bref, c’est la hype et si vous ne surfez déjà sur la vague de la crypto-monnaie, il n’y a peut-être jamais eu de meilleur moment pour s’y mettre. Bien que les devises virtuelles connaissent de fortes variations vers le haut ou le bas sur le [&#8230;]\n\n\nBitCoin et WordPress : Comment accepter les paiements en crypto-monnaie ? est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1378:"<p><img width="1280" height="898" src="https://wpformation.com/wp-content/uploads/2018/02/bitcoin_1517585946.jpg" class="attachment-Large size-Large wp-post-image" alt="Bitcoin et WordPress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Le Bitcoin est la nouvelle hype. C’est aussi l’ancienne hype. Bref, c’est la hype et si vous ne surfez déjà sur la vague de la crypto-monnaie, il n’y a peut-être jamais eu de meilleur moment pour s’y mettre. Bien que les devises virtuelles connaissent de fortes variations vers le haut ou le bas sur le [&#8230;]</p>\n<p></p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/bitcoin-wordpress-woocommerce/">BitCoin et WordPress : Comment accepter les paiements en crypto-monnaie ?</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a><br /><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/Tn8SSn9lQkc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpformation.com/bitcoin-wordpress-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"SmartCrop";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/QrUdqNFI-QE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:54:"https://www.echodesplugins.li-an.fr/plugins/smartcrop/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Feb 2018 11:26:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"\n		        Retaillez intelligemment vos miniatures automatiquement		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:146:"Retaillez intelligemment vos miniatures automatiquement<img src="http://feeds.feedburner.com/~r/wpfr/~4/QrUdqNFI-QE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"https://www.echodesplugins.li-an.fr/plugins/smartcrop/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Ajouter un nouveau menu responsive dans Genesis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/kuzwpwsRpm8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:82:"https://www.gregoirenoyelle.com/ajouter-nouveau-menu-responsive-genesis-framework/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Feb 2018 05:33:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:303:"\n		        Dans ce tutoriel nous verrrons comment ajouter un nouveau menu WordPress dans votre thème qui repose sur Genesis Framework.Cet article a été publié le 21 février 2018 par Grégoire Noyelle. Pour le lire en ligne, suivre le lien: Ajouter un nouveau menu responsive dans Genesis.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:523:"Dans ce tutoriel nous verrrons comment ajouter un nouveau menu WordPress dans votre thème qui repose sur Genesis Framework.<p>Cet article a été publié le 21 février 2018 par <a href="https://www.gregoirenoyelle.com">Grégoire Noyelle</a>. Pour le lire en ligne, suivre le lien: <a href="https://www.gregoirenoyelle.com/ajouter-nouveau-menu-responsive-genesis-framework/">Ajouter un nouveau menu responsive dans Genesis</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/kuzwpwsRpm8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:82:"https://www.gregoirenoyelle.com/ajouter-nouveau-menu-responsive-genesis-framework/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"Salon WPNDIGITAL : 1ère étape franchie (Date et lieu) – WordPress, Web, digital";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/y7Eu1g7nL3I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:99:"https://www.wpnormandie.fr/salon-wpndigital-1ere-etape-franchie-date-et-lieu-wordpress-web-digital/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Feb 2018 17:29:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:348:"\n		        Comme vous le savez certainement, le grand salon national WPNDIGITAL aura lieu en juin 2018. On y parlera de Web, de Digital et bien évidement de WordPress. C&#8217;est avec grand plaisir que nous vous annonçons que ce salon WPNDIGITAL se tiendra le 2 juin 2018 à Caen. Il aura lieu au Centre de congrès. Celui-ci [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:418:"Comme vous le savez certainement, le grand salon national WPNDIGITAL aura lieu en juin 2018. On y parlera de Web, de Digital et bien évidement de WordPress. C&#8217;est avec grand plaisir que nous vous annonçons que ce salon WPNDIGITAL se tiendra le 2 juin 2018 à Caen. Il aura lieu au Centre de congrès. Celui-ci [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/y7Eu1g7nL3I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:99:"https://www.wpnormandie.fr/salon-wpndigital-1ere-etape-franchie-date-et-lieu-wordpress-web-digital/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"Désactiver la notice de connexion à WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/N4EI7QOPa1w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wpchannel.com/desactiver-notice-connexion-woocommerce/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Feb 2018 08:00:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:429:"\n		        WooCommerce 3.3.1 affiche une notice vous invitant à connecter votre compte Woocommerce.com et il est impossible de la désactiver. Un simple filtre va nous permettre de contourner cette notice intrusive dans votre administration WordPress. La version récente de WooCommerce affiche le message d&#8217;avertissement suivant : Connecter votre boutique à WooCommerce.com pour recevoir les mises à [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:703:"<img width="558" height="300" src="https://wpchannel.com/images/2018/02/php-code-558x300.jpg" class="webfeedsFeaturedVisual wp-post-image" alt="" style="margin: auto;margin-bottom: 5px;max-width: 100%" />WooCommerce 3.3.1 affiche une notice vous invitant à connecter votre compte Woocommerce.com et il est impossible de la désactiver. Un simple filtre va nous permettre de contourner cette notice intrusive dans votre administration WordPress. La version récente de WooCommerce affiche le message d&#8217;avertissement suivant : Connecter votre boutique à WooCommerce.com pour recevoir les mises à [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/N4EI7QOPa1w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wpchannel.com/desactiver-notice-connexion-woocommerce/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Gérez vos mails de notification pour les commentaires WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/5rq_F8yof0M/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpformation.com/mails-notification-commentaires/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Feb 2018 07:45:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:601:"\n		        Vous voulez améliorer la gestion de vos mails de notification pour les commentaires WordPress ? Vous avez parfaitement raison : les commentaires sont la fondation du dialogue et de l’engagement utilisateur sur de nombreux blogs. Par défaut, WordPress ne fait pas du si bon travail quand il s’agit d’informer les utilisateurs à propos des nouveaux commentaires… [&#8230;]\n\n\nGérez vos mails de notification pour les commentaires WordPress est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1429:"<p><img width="893" height="538" src="https://wpformation.com/wp-content/uploads/2017/10/email-pdf-newsletter.jpg" class="attachment-Large size-Large wp-post-image" alt="email pdf newsletter" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Vous voulez améliorer la gestion de vos mails de notification pour les commentaires WordPress ? Vous avez parfaitement raison : les commentaires sont la fondation du dialogue et de l’engagement utilisateur sur de nombreux blogs. Par défaut, WordPress ne fait pas du si bon travail quand il s’agit d’informer les utilisateurs à propos des nouveaux commentaires… [&#8230;]</p>\n<p></p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/mails-notification-commentaires/">Gérez vos mails de notification pour les commentaires WordPress</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a><br /><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/5rq_F8yof0M" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpformation.com/mails-notification-commentaires/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WP TECH, l’évènement technique à ne pas rater sur WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/uYtvJQ9eadg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://www.seomix.fr/wp-tech-2018/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Feb 2018 05:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1124:"\n		        Le WP TECH 2018 arrive à grands pas. Prenez vite vos places pour le seul évènement technique dédié à WordPress, pour les débutants comme pour les développeurs expérimentés !Accédez à l\'article original : WP TECH, l&rsquo;évènement technique à ne pas rater sur WordPress.\n    Voici le début du contenu : Le WP TECH 2018 arrive à grands pas&nbsp;: prenez vite vos places pour le seul événement technique dédié à WordPress&nbsp;! Le WP TECH, c&rsquo;est quoi&nbsp;? Le WP TECH est une série de conférences consacrées aux aspects techniques du CMS WordPress (29% de parts de marché au niveau mondial). Pour sa troisième édition elle aura lieu le 28 Avril à Lyon&nbsp;! Et cela s&rsquo;annonce prometteur avec deux sessions différentes en simultané&nbsp;:  des conférences techniques pour les débutants afin d&rsquo;appréhender certains concepts clés de WordPress; des conférences techniques avancées pour aller très loin dans le code et l&rsquo;expertise sur ce CMS.  L&rsquo;édition 2015 du WP TECH Que vais-je apprendre&nbsp;? Plein de choses pour mieux gérer [...]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1522:"<div><img class="webfeedsFeaturedVisual" src="https://www.seomix.fr/wp-content/uploads/2018/02/wp-tech-logo-1-500x500.jpg" /></div>Le WP TECH 2018 arrive à grands pas. Prenez vite vos places pour le seul évènement technique dédié à WordPress, pour les débutants comme pour les développeurs expérimentés !<p><strong>Accédez à l\'article original :</strong> <a href="https://www.seomix.fr/wp-tech-2018/">WP TECH, l&rsquo;évènement technique à ne pas rater sur WordPress</a>.</p>\n    <p><strong>Voici le début du contenu :</strong> <p>Le WP TECH 2018 arrive à grands pas&nbsp;: <strong>prenez vite vos places</strong> pour le seul événement technique dédié à WordPress&nbsp;!</p> <h2>Le WP TECH, c&rsquo;est quoi&nbsp;?</h2> <p>Le WP TECH est une série de conférences consacrées aux aspects techniques du CMS WordPress (29% de parts de marché au niveau mondial). Pour sa troisième édition elle aura lieu le 28 Avril à Lyon&nbsp;! Et cela s&rsquo;annonce prometteur avec deux sessions différentes en simultané&nbsp;:</p>  des conférences techniques <strong>pour les débutants</strong> afin d&rsquo;appréhender certains concepts clés de WordPress; des conférences techniques<strong> avancées</strong> pour aller très loin dans le code et l&rsquo;expertise sur ce CMS.  <p>L&rsquo;édition 2015 du WP TECH</p> <h2>Que vais-je apprendre&nbsp;?</h2> <p>Plein de choses pour mieux gérer [...]</p><hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/uYtvJQ9eadg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"https://www.seomix.fr/wp-tech-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"Accessibilité d’un thème WordPress : les éléments de code obligatoires";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/TV_CGIPycoM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:95:"https://www.wpnormandie.fr/accessibilite-dun-theme-wordpress-les-elements-de-code-obligatoires/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Feb 2018 13:23:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:436:"\n		        Tout thème WordPress qui veut atteindre un bon niveau d’accessibilité doit intégrer sur toutes les pages du site, des éléments de code obligatoires. Les thèmes du répertoire de WordPress ayant le tag « Accessibility ready » prennent en compte une partie de ces éléments. Encore faut-il qu’ils répondent aux exigences du Référentiel Général d’Accessibilité pour les Administrations [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:506:"Tout thème WordPress qui veut atteindre un bon niveau d’accessibilité doit intégrer sur toutes les pages du site, des éléments de code obligatoires. Les thèmes du répertoire de WordPress ayant le tag « Accessibility ready » prennent en compte une partie de ces éléments. Encore faut-il qu’ils répondent aux exigences du Référentiel Général d’Accessibilité pour les Administrations [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/TV_CGIPycoM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:95:"https://www.wpnormandie.fr/accessibilite-dun-theme-wordpress-les-elements-de-code-obligatoires/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"So8+W1I0YXNDKXff+laVEm/NvSw";s:13:"last-modified";s:29:"Mon, 26 Feb 2018 13:56:05 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Mon, 26 Feb 2018 14:20:30 GMT";s:7:"expires";s:29:"Mon, 26 Feb 2018 14:20:30 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:140:"hq=":443"; ma=2592000; quic=51303431; quic=51303339; quic=51303338; quic=51303337; quic=51303335,quic=":443"; ma=2592000; v="41,39,38,37,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(1139, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1519698030', 'no'),
(1140, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1519654830', 'no'),
(1141, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1519698030', 'no'),
(1142, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\'>Liste des candidats au bureau 2018</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Tn8SSn9lQkc/\'>BitCoin et WordPress : Comment accepter les paiements en crypto-monnaie ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/QrUdqNFI-QE/\'>SmartCrop</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/kuzwpwsRpm8/\'>Ajouter un nouveau menu responsive dans Genesis</a></li></ul></div>', 'no'),
(1143, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1519698030', 'no'),
(1144, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:3:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:13:"Themification";s:3:"url";s:73:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/events/248097413/";s:6:"meetup";s:28:"WordPressⓌ Aix-en-Provence";s:10:"meetup_url";s:56:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/";s:4:"date";s:19:"2018-03-06 19:30:00";s:8:"location";a:4:{s:8:"location";s:23:"Aix-en-Provence, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.523060000000001;s:9:"longitude";d:5.4508470000000004;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:73:"Barcamp 2018 #1 Tout le monde du le pont ! Constitution du programme 2018";s:3:"url";s:73:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/events/247248118/";s:6:"meetup";s:28:"WordPressⓌ Aix-en-Provence";s:10:"meetup_url";s:56:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/";s:4:"date";s:19:"2018-03-06 19:30:00";s:8:"location";a:4:{s:8:"location";s:23:"Aix-en-Provence, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.523060000000001;s:9:"longitude";d:5.4508470000000004;}}i:2;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:73:"Barcamp 2018 #1 Tout le monde du le pont ! Constitution du programme 2018";s:3:"url";s:73:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/events/247248140/";s:6:"meetup";s:28:"WordPressⓌ Aix-en-Provence";s:10:"meetup_url";s:56:"https://www.meetup.com/Meetup-WordPress-Aix-en-Provence/";s:4:"date";s:19:"2018-04-03 19:30:00";s:8:"location";a:4:{s:8:"location";s:23:"Aix-en-Provence, France";s:7:"country";s:2:"fr";s:8:"latitude";d:43.523060000000001;s:9:"longitude";d:5.4508470000000004;}}}}', 'no'),
(1147, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1519655710;s:7:"checked";a:9:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"5.0";s:9:"hello.php";s:3:"1.6";s:27:"persocookie/persocookie.php";s:5:"1.0.0";s:77:"product-input-fields-for-woocommerce/product-input-fields-for-woocommerce.php";s:5:"1.1.1";s:37:"schedulecategory/schedulecategory.php";s:5:"1.0.0";s:27:"woocommerce/woocommerce.php";s:5:"3.3.1";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:5:"1.5.1";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:5:"4.0.5";}s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.3.3";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.3.3.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:7:"default";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";s:7:"default";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":11:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.5.2";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.2.zip";s:5:"icons";a:3:{s:2:"1x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389";s:2:"2x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389";s:7:"default";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389";}s:7:"banners";a:3:{s:2:"2x";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389";s:2:"1x";s:98:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389";s:7:"default";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";O:8:"stdClass":11:{s:2:"id";s:40:"w.org/plugins/woocommerce-gateway-stripe";s:4:"slug";s:26:"woocommerce-gateway-stripe";s:6:"plugin";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:11:"new_version";s:5:"4.0.7";s:3:"url";s:57:"https://wordpress.org/plugins/woocommerce-gateway-stripe/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.0.7.zip";s:5:"icons";a:3:{s:2:"1x";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1799707";s:2:"2x";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1799707";s:7:"default";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1799707";}s:7:"banners";a:3:{s:2:"2x";s:82:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1799707";s:2:"1x";s:81:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1799707";s:7:"default";s:82:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1799707";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"5.0";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:77:"product-input-fields-for-woocommerce/product-input-fields-for-woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:50:"w.org/plugins/product-input-fields-for-woocommerce";s:4:"slug";s:36:"product-input-fields-for-woocommerce";s:6:"plugin";s:77:"product-input-fields-for-woocommerce/product-input-fields-for-woocommerce.php";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:67:"https://wordpress.org/plugins/product-input-fields-for-woocommerce/";s:7:"package";s:85:"https://downloads.wordpress.org/plugin/product-input-fields-for-woocommerce.1.1.1.zip";s:5:"icons";a:3:{s:2:"1x";s:89:"https://ps.w.org/product-input-fields-for-woocommerce/assets/icon-128x128.png?rev=1623329";s:2:"2x";s:89:"https://ps.w.org/product-input-fields-for-woocommerce/assets/icon-256x256.png?rev=1623329";s:7:"default";s:89:"https://ps.w.org/product-input-fields-for-woocommerce/assets/icon-256x256.png?rev=1623329";}s:7:"banners";a:3:{s:2:"2x";s:92:"https://ps.w.org/product-input-fields-for-woocommerce/assets/banner-1544x500.png?rev=1623747";s:2:"1x";s:91:"https://ps.w.org/product-input-fields-for-woocommerce/assets/banner-772x250.png?rev=1623747";s:7:"default";s:92:"https://ps.w.org/product-input-fields-for-woocommerce/assets/banner-1544x500.png?rev=1623747";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(1151, '_transient_timeout__woocommerce_helper_updates', '1519698910', 'no'),
(1152, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1519655710;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(1153, '_transient_timeout_plugin_slugs', '1519742115', 'no'),
(1154, '_transient_plugin_slugs', 'a:9:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:27:"persocookie/persocookie.php";i:4;s:77:"product-input-fields-for-woocommerce/product-input-fields-for-woocommerce.php";i:5;s:37:"schedulecategory/schedulecategory.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:8;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";}', 'no'),
(1155, '_transient_timeout_wc_upgrade_notice_3.3.3', '1519742112', 'no'),
(1156, '_transient_wc_upgrade_notice_3.3.3', '', 'no'),
(1202, '_transient_is_multi_author', '0', 'yes'),
(1203, '_transient_timeout_wc_term_counts', '1522257016', 'no'),
(1204, '_transient_wc_term_counts', 'a:4:{i:26;s:1:"1";i:25;s:1:"1";i:20;s:1:"1";i:21;s:1:"1";}', 'no'),
(1205, '_transient_timeout_wc_related_52', '1519753182', 'no'),
(1206, '_transient_wc_related_52', 'a:1:{s:50:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=52";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(141, 8, '_wc_review_count', '0'),
(142, 8, '_wc_rating_count', 'a:0:{}'),
(143, 8, '_wc_average_rating', '0'),
(242, 15, '_order_key', 'wc_order_5a83f0de77ecf'),
(243, 15, '_customer_user', '1'),
(244, 15, '_payment_method', ''),
(245, 15, '_payment_method_title', ''),
(246, 15, '_transaction_id', ''),
(247, 15, '_customer_ip_address', '127.0.0.1'),
(248, 15, '_customer_user_agent', 'mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/64.0.3282.140 safari/537.36'),
(249, 15, '_created_via', 'checkout'),
(250, 15, '_date_completed', ''),
(251, 15, '_completed_date', ''),
(252, 15, '_date_paid', '1518596318'),
(253, 15, '_paid_date', '2018-02-14 09:18:38'),
(254, 15, '_cart_hash', 'dc3c6097d5c38fd8b3a1176deb5cae49'),
(255, 15, '_billing_first_name', 'client'),
(256, 15, '_billing_last_name', 'client'),
(257, 15, '_billing_company', 'client'),
(258, 15, '_billing_address_1', '12345'),
(259, 15, '_billing_address_2', ''),
(260, 15, '_billing_city', 'client'),
(261, 15, '_billing_state', ''),
(262, 15, '_billing_postcode', '12345'),
(263, 15, '_billing_country', 'FR'),
(264, 15, '_billing_email', 'client@yopmail.com'),
(265, 15, '_billing_phone', '101010101'),
(266, 15, '_shipping_first_name', 'client'),
(267, 15, '_shipping_last_name', 'client'),
(268, 15, '_shipping_company', 'client'),
(269, 15, '_shipping_address_1', '12345'),
(270, 15, '_shipping_address_2', ''),
(271, 15, '_shipping_city', 'client'),
(272, 15, '_shipping_state', ''),
(273, 15, '_shipping_postcode', '12345'),
(274, 15, '_shipping_country', 'FR'),
(275, 15, '_order_currency', 'EUR'),
(276, 15, '_cart_discount', '0'),
(277, 15, '_cart_discount_tax', '0'),
(278, 15, '_order_shipping', '0.00'),
(279, 15, '_order_shipping_tax', '0'),
(280, 15, '_order_tax', '0'),
(281, 15, '_order_total', '0.00'),
(282, 15, '_order_version', '3.3.1'),
(283, 15, '_prices_include_tax', 'no'),
(284, 15, '_billing_address_index', 'client client client 12345  client  12345 FR client@yopmail.com 101010101'),
(285, 15, '_shipping_address_index', 'client client client 12345  client  12345 FR'),
(286, 15, '_download_permissions_granted', 'yes'),
(287, 15, '_recorded_sales', 'yes'),
(288, 15, '_recorded_coupon_usage_counts', 'yes'),
(289, 15, '_order_stock_reduced', 'yes'),
(290, 15, '_edit_lock', '1518596326:1'),
(297, 13, '_wc_review_count', '0'),
(298, 13, '_wc_rating_count', 'a:0:{}'),
(299, 13, '_wc_average_rating', '0'),
(300, 17, '_wc_review_count', '0'),
(301, 17, '_wc_rating_count', 'a:0:{}'),
(302, 17, '_wc_average_rating', '0'),
(303, 17, '_edit_last', '1'),
(304, 17, '_alg_wc_pif_enabled_local_1', 'no'),
(305, 17, '_alg_wc_pif_type_local_1', 'text'),
(306, 17, '_alg_wc_pif_required_local_1', 'yes'),
(307, 17, '_alg_wc_pif_title_local_1', 'Perso'),
(308, 17, '_alg_wc_pif_placeholder_local_1', ''),
(309, 17, '_alg_wc_pif_default_value_local_1', ''),
(310, 17, '_alg_wc_pif_class_local_1', ''),
(311, 17, '_alg_wc_pif_style_local_1', ''),
(312, 17, '_alg_wc_pif_required_message_local_1', 'Field "%title%" is required!'),
(313, 17, '_alg_wc_pif_input_restrictions_min_local_1', ''),
(314, 17, '_alg_wc_pif_input_restrictions_max_local_1', ''),
(315, 17, '_alg_wc_pif_input_restrictions_step_local_1', ''),
(316, 17, '_alg_wc_pif_input_restrictions_maxlength_local_1', ''),
(317, 17, '_alg_wc_pif_input_restrictions_pattern_local_1', ''),
(318, 17, '_alg_wc_pif_type_checkbox_yes_local_1', 'Yes'),
(319, 17, '_alg_wc_pif_type_checkbox_no_local_1', 'No'),
(320, 17, '_alg_wc_pif_type_file_accept_local_1', '.jpg,.jpeg,.png'),
(321, 17, '_alg_wc_pif_type_file_wrong_type_msg_local_1', 'Wrong file type!'),
(322, 17, '_alg_wc_pif_type_file_max_size_local_1', '0'),
(323, 17, '_alg_wc_pif_type_file_max_size_msg_local_1', 'File is too big!'),
(324, 17, '_alg_wc_pif_type_datepicker_format_local_1', ''),
(325, 17, '_alg_wc_pif_type_datepicker_mindate_local_1', '-365'),
(326, 17, '_alg_wc_pif_type_datepicker_maxdate_local_1', '365'),
(327, 17, '_alg_wc_pif_type_datepicker_addyear_local_1', 'no'),
(328, 17, '_alg_wc_pif_type_datepicker_yearrange_local_1', 'c-10:c+10'),
(329, 17, '_alg_wc_pif_type_datepicker_firstday_local_1', '0'),
(330, 17, '_alg_wc_pif_type_timepicker_format_local_1', 'hh:mm p'),
(331, 17, '_alg_wc_pif_type_timepicker_interval_local_1', '15'),
(332, 17, '_alg_wc_pif_type_select_options_local_1', ''),
(333, 17, '_alg_wc_pif_local_total_number', '1'),
(334, 17, '_sku', ''),
(335, 17, '_regular_price', '0'),
(336, 17, '_sale_price', ''),
(337, 17, '_sale_price_dates_from', ''),
(338, 17, '_sale_price_dates_to', ''),
(339, 17, 'total_sales', '0'),
(340, 17, '_tax_status', 'taxable'),
(341, 17, '_tax_class', ''),
(342, 17, '_manage_stock', 'no'),
(343, 17, '_backorders', 'no'),
(344, 17, '_sold_individually', 'no'),
(345, 17, '_weight', ''),
(346, 17, '_length', ''),
(347, 17, '_width', ''),
(348, 17, '_height', ''),
(349, 17, '_upsell_ids', 'a:0:{}'),
(350, 17, '_crosssell_ids', 'a:0:{}'),
(351, 17, '_purchase_note', ''),
(352, 17, '_default_attributes', 'a:0:{}'),
(353, 17, '_virtual', 'no'),
(354, 17, '_downloadable', 'no'),
(355, 17, '_product_image_gallery', ''),
(356, 17, '_download_limit', '-1'),
(357, 17, '_download_expiry', '-1'),
(358, 17, '_stock', NULL),
(359, 17, '_stock_status', 'instock'),
(360, 17, '_product_version', '3.3.1'),
(362, 17, '_edit_lock', '1519485476:1'),
(363, 17, '_product_attributes', 'a:1:{s:10:"pa_glacage";a:6:{s:4:"name";s:10:"pa_glacage";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(364, 18, '_variation_description', ''),
(365, 18, '_sku', ''),
(366, 18, '_regular_price', '0'),
(367, 18, '_sale_price', ''),
(368, 18, '_sale_price_dates_from', ''),
(369, 18, '_sale_price_dates_to', ''),
(370, 18, 'total_sales', '0'),
(371, 18, '_tax_status', 'taxable'),
(372, 18, '_tax_class', 'parent'),
(373, 18, '_manage_stock', 'no'),
(374, 18, '_backorders', 'no'),
(375, 18, '_sold_individually', 'no'),
(376, 18, '_weight', ''),
(377, 18, '_length', ''),
(378, 18, '_width', ''),
(379, 18, '_height', ''),
(380, 18, '_upsell_ids', 'a:0:{}'),
(381, 18, '_crosssell_ids', 'a:0:{}'),
(382, 18, '_purchase_note', ''),
(383, 18, '_default_attributes', 'a:0:{}'),
(384, 18, '_virtual', 'no'),
(385, 18, '_downloadable', 'no'),
(386, 18, '_product_image_gallery', ''),
(387, 18, '_download_limit', '-1'),
(388, 18, '_download_expiry', '-1'),
(389, 18, '_stock', NULL),
(390, 18, '_stock_status', 'instock'),
(391, 18, '_wc_average_rating', '0'),
(392, 18, '_wc_rating_count', 'a:0:{}'),
(393, 18, '_wc_review_count', '0'),
(394, 18, '_downloadable_files', 'a:0:{}'),
(395, 18, '_price', '0'),
(396, 18, '_product_version', '3.3.1'),
(397, 17, '_price', '0'),
(398, 19, 'quote_post_data', 'a:4:{s:7:"sent_to";s:19:"leo450450@gmail.com";s:7:"user_id";i:1;s:10:"quote_data";a:1:{i:18;a:10:{s:10:"product_id";i:17;s:13:"product_image";s:0:"";s:13:"product_title";s:4:"Test";s:13:"product_price";s:0:"";s:16:"product_quantity";i:1;s:12:"product_type";s:9:"variation";s:12:"variation_id";i:18;s:9:"sub_total";s:7:"0,00€";s:11:"quote_total";s:1:"0";s:17:"product_variation";s:218:"<dl class="variation _quote_variations"><dt class="variation-glacage">Glacage </dt><dd class="variation-glacage"> <p>cerise</p></dd><dt class="variation-test">Test </dt><dd class="variation-test"> <p>test</p></dd></dl>";}}s:18:"quote_general_data";a:2:{s:4:"time";s:10:"9 h 39 min";s:4:"date";s:11:"14-Feb-2018";}}'),
(400, 2, '_edit_lock', '1518601224:1'),
(402, 21, '_edit_last', '1'),
(403, 21, '_wp_page_template', 'template-homepage.php'),
(404, 21, '_edit_lock', '1519479218:1'),
(406, 23, '_wp_trash_meta_status', 'publish'),
(407, 23, '_wp_trash_meta_time', '1518601516'),
(408, 24, '_wp_attached_file', '2018/02/1920x780.png'),
(409, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:780;s:4:"file";s:20:"2018/02/1920x780.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"1920x780-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"1920x780-300x122.png";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"1920x780-768x312.png";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"1920x780-1024x416.png";s:5:"width";i:1024;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:4:{s:4:"file";s:20:"1920x780-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"1920x780-416x169.png";s:5:"width";i:416;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:24:"woocommerce_thumbnail_2x";a:4:{s:4:"file";s:20:"1920x780-648x648.png";s:5:"width";i:648;s:6:"height";i:648;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"1920x780-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"1920x780-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"1920x780-416x169.png";s:5:"width";i:416;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(410, 21, '_thumbnail_id', '24'),
(411, 26, '_wp_trash_meta_status', 'publish'),
(412, 26, '_wp_trash_meta_time', '1519470698'),
(419, 29, '_wp_trash_meta_status', 'publish'),
(420, 29, '_wp_trash_meta_time', '1519474452'),
(421, 30, '_wp_trash_meta_status', 'publish'),
(422, 30, '_wp_trash_meta_time', '1519474510'),
(423, 31, '_wp_trash_meta_status', 'publish'),
(424, 31, '_wp_trash_meta_time', '1519474560'),
(425, 32, '_wp_trash_meta_status', 'publish'),
(426, 32, '_wp_trash_meta_time', '1519474600'),
(427, 33, '_edit_lock', '1519474740:1'),
(428, 33, '_wp_trash_meta_status', 'publish'),
(429, 33, '_wp_trash_meta_time', '1519474751'),
(430, 34, '_wp_trash_meta_status', 'publish'),
(431, 34, '_wp_trash_meta_time', '1519474781'),
(432, 35, '_wp_trash_meta_status', 'publish'),
(433, 35, '_wp_trash_meta_time', '1519474799'),
(434, 36, '_edit_lock', '1519475151:1'),
(435, 37, '_wp_attached_file', '2018/02/logo.png'),
(436, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:294;s:6:"height";i:103;s:4:"file";s:16:"2018/02/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x103.png";s:5:"width";i:150;s:6:"height";i:103;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(437, 36, '_wp_trash_meta_status', 'publish'),
(438, 36, '_wp_trash_meta_time', '1519475182'),
(439, 38, '_wp_trash_meta_status', 'publish'),
(440, 38, '_wp_trash_meta_time', '1519475213'),
(441, 39, '_wp_attached_file', '2018/02/logo_light.png'),
(442, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:293;s:6:"height";i:102;s:4:"file";s:22:"2018/02/logo_light.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"logo_light-150x102.png";s:5:"width";i:150;s:6:"height";i:102;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(443, 40, '_wp_trash_meta_status', 'publish'),
(444, 40, '_wp_trash_meta_time', '1519475329'),
(445, 41, '_wp_trash_meta_status', 'publish'),
(446, 41, '_wp_trash_meta_time', '1519475365'),
(447, 42, '_edit_lock', '1519475393:1'),
(448, 42, '_wp_trash_meta_status', 'publish'),
(449, 42, '_wp_trash_meta_time', '1519475412'),
(450, 43, '_wp_trash_meta_status', 'publish'),
(451, 43, '_wp_trash_meta_time', '1519475560'),
(452, 44, '_edit_lock', '1519475695:1'),
(453, 44, '_wp_trash_meta_status', 'publish'),
(454, 44, '_wp_trash_meta_time', '1519475709'),
(455, 45, '_edit_lock', '1519475941:1'),
(456, 45, '_wp_trash_meta_status', 'publish'),
(457, 45, '_wp_trash_meta_time', '1519475982'),
(458, 46, '_edit_lock', '1519476241:1'),
(459, 46, '_wp_trash_meta_status', 'publish'),
(460, 46, '_wp_trash_meta_time', '1519476296'),
(461, 47, '_wp_attached_file', '2018/02/AMANDE_large.png'),
(462, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:261;s:6:"height";i:173;s:4:"file";s:24:"2018/02/AMANDE_large.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"AMANDE_large-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(463, 17, '_thumbnail_id', '47'),
(464, 4, '_edit_lock', '1519484658:1'),
(473, 48, '_wp_trash_meta_status', 'publish'),
(474, 48, '_wp_trash_meta_time', '1519479352'),
(484, 51, '_menu_item_type', 'taxonomy'),
(485, 51, '_menu_item_menu_item_parent', '0'),
(486, 51, '_menu_item_object_id', '19'),
(487, 51, '_menu_item_object', 'product_cat'),
(488, 51, '_menu_item_target', ''),
(489, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(490, 51, '_menu_item_xfn', ''),
(491, 51, '_menu_item_url', ''),
(493, 52, '_wc_review_count', '0'),
(494, 52, '_wc_rating_count', 'a:0:{}'),
(495, 52, '_wc_average_rating', '0'),
(496, 52, '_edit_last', '1'),
(497, 52, '_alg_wc_pif_enabled_local_1', 'yes'),
(498, 52, '_alg_wc_pif_type_local_1', 'text'),
(499, 52, '_alg_wc_pif_required_local_1', 'yes'),
(500, 52, '_alg_wc_pif_title_local_1', 'Input Field'),
(501, 52, '_alg_wc_pif_placeholder_local_1', ''),
(502, 52, '_alg_wc_pif_default_value_local_1', ''),
(503, 52, '_alg_wc_pif_class_local_1', ''),
(504, 52, '_alg_wc_pif_style_local_1', ''),
(505, 52, '_alg_wc_pif_required_message_local_1', 'Field "%title%" is required!'),
(506, 52, '_alg_wc_pif_input_restrictions_min_local_1', ''),
(507, 52, '_alg_wc_pif_input_restrictions_max_local_1', ''),
(508, 52, '_alg_wc_pif_input_restrictions_step_local_1', ''),
(509, 52, '_alg_wc_pif_input_restrictions_maxlength_local_1', ''),
(510, 52, '_alg_wc_pif_input_restrictions_pattern_local_1', ''),
(511, 52, '_alg_wc_pif_type_checkbox_yes_local_1', 'Yes'),
(512, 52, '_alg_wc_pif_type_checkbox_no_local_1', 'No'),
(513, 52, '_alg_wc_pif_type_file_accept_local_1', '.jpg,.jpeg,.png'),
(514, 52, '_alg_wc_pif_type_file_wrong_type_msg_local_1', 'Wrong file type!'),
(515, 52, '_alg_wc_pif_type_file_max_size_local_1', '0'),
(516, 52, '_alg_wc_pif_type_file_max_size_msg_local_1', 'File is too big!'),
(517, 52, '_alg_wc_pif_type_datepicker_format_local_1', ''),
(518, 52, '_alg_wc_pif_type_datepicker_mindate_local_1', '-365'),
(519, 52, '_alg_wc_pif_type_datepicker_maxdate_local_1', '365'),
(520, 52, '_alg_wc_pif_type_datepicker_addyear_local_1', 'no'),
(521, 52, '_alg_wc_pif_type_datepicker_yearrange_local_1', 'c-10:c+10'),
(522, 52, '_alg_wc_pif_type_datepicker_firstday_local_1', '0'),
(523, 52, '_alg_wc_pif_type_timepicker_format_local_1', 'hh:mm p'),
(524, 52, '_alg_wc_pif_type_timepicker_interval_local_1', '15'),
(525, 52, '_alg_wc_pif_type_select_options_local_1', ''),
(526, 52, '_alg_wc_pif_local_total_number', '1'),
(527, 52, '_sku', ''),
(528, 52, '_regular_price', '0'),
(529, 52, '_sale_price', ''),
(530, 52, '_sale_price_dates_from', ''),
(531, 52, '_sale_price_dates_to', ''),
(532, 52, 'total_sales', '0'),
(533, 52, '_tax_status', 'taxable'),
(534, 52, '_tax_class', ''),
(535, 52, '_manage_stock', 'no'),
(536, 52, '_backorders', 'no'),
(537, 52, '_sold_individually', 'no'),
(538, 52, '_weight', ''),
(539, 52, '_length', ''),
(540, 52, '_width', ''),
(541, 52, '_height', ''),
(542, 52, '_upsell_ids', 'a:0:{}'),
(543, 52, '_crosssell_ids', 'a:0:{}'),
(544, 52, '_purchase_note', ''),
(545, 52, '_default_attributes', 'a:0:{}'),
(546, 52, '_virtual', 'no'),
(547, 52, '_downloadable', 'no'),
(548, 52, '_product_image_gallery', ''),
(549, 52, '_download_limit', '-1'),
(550, 52, '_download_expiry', '-1'),
(551, 52, '_stock', NULL),
(552, 52, '_stock_status', 'instock'),
(553, 52, '_product_version', '3.3.1'),
(555, 52, '_edit_lock', '1519665014:1'),
(565, 54, '_wp_attached_file', '2018/02/ecris-moi-un-biscuit-small.png'),
(566, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:315;s:6:"height";i:200;s:4:"file";s:38:"2018/02/ecris-moi-un-biscuit-small.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"ecris-moi-un-biscuit-small-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:38:"ecris-moi-un-biscuit-small-300x190.png";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(567, 52, '_thumbnail_id', '54'),
(568, 55, '_wp_trash_meta_status', 'publish'),
(569, 55, '_wp_trash_meta_time', '1519480396'),
(570, 56, '_wp_trash_meta_status', 'publish'),
(571, 56, '_wp_trash_meta_time', '1519481662'),
(572, 57, '_wp_trash_meta_status', 'publish'),
(573, 57, '_wp_trash_meta_time', '1519481667'),
(574, 58, '_edit_lock', '1519482094:1'),
(575, 58, '_wp_trash_meta_status', 'publish'),
(576, 58, '_wp_trash_meta_time', '1519482095'),
(577, 59, '_menu_item_type', 'taxonomy'),
(578, 59, '_menu_item_menu_item_parent', '0'),
(579, 59, '_menu_item_object_id', '19'),
(580, 59, '_menu_item_object', 'product_cat'),
(581, 59, '_menu_item_target', ''),
(582, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(583, 59, '_menu_item_xfn', ''),
(584, 59, '_menu_item_url', ''),
(585, 59, '_menu_item_orphaned', '1519483506'),
(586, 60, '_menu_item_type', 'taxonomy'),
(587, 60, '_menu_item_menu_item_parent', '51'),
(588, 60, '_menu_item_object_id', '20'),
(589, 60, '_menu_item_object', 'product_cat'),
(590, 60, '_menu_item_target', ''),
(591, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(592, 60, '_menu_item_xfn', ''),
(593, 60, '_menu_item_url', ''),
(595, 4, '_edit_last', '1'),
(596, 21, '_wp_trash_meta_status', 'publish'),
(597, 21, '_wp_trash_meta_time', '1519483964'),
(598, 21, '_wp_desired_post_slug', 'homepage'),
(599, 4, '_thumbnail_id', '71'),
(600, 62, '_edit_last', '1'),
(601, 62, '_wp_page_template', 'default'),
(602, 62, '_edit_lock', '1519484348:1'),
(603, 64, '_menu_item_type', 'post_type'),
(604, 64, '_menu_item_menu_item_parent', '0'),
(605, 64, '_menu_item_object_id', '62'),
(606, 64, '_menu_item_object', 'page'),
(607, 64, '_menu_item_target', ''),
(608, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(609, 64, '_menu_item_xfn', ''),
(610, 64, '_menu_item_url', ''),
(612, 67, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]'),
(613, 67, '_mail', 'a:8:{s:7:"subject";s:25:"Minipoli "[your-subject]"";s:6:"sender";s:38:"[your-name] <wordpress@minipoli.local>";s:4:"body";s:190:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Minipoli (http://minipoli.local)";s:9:"recipient";s:19:"leo450450@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(614, 67, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"Minipoli "[your-subject]"";s:6:"sender";s:35:"Minipoli <wordpress@minipoli.local>";s:4:"body";s:132:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Minipoli (http://minipoli.local)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: leo450450@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(615, 67, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";}'),
(616, 67, '_additional_settings', NULL),
(617, 67, '_locale', 'fr_FR'),
(618, 68, '_edit_last', '1'),
(619, 68, '_wp_page_template', 'default'),
(620, 68, '_edit_lock', '1519484436:1'),
(621, 70, '_menu_item_type', 'post_type'),
(622, 70, '_menu_item_menu_item_parent', '0'),
(623, 70, '_menu_item_object_id', '68'),
(624, 70, '_menu_item_object', 'page'),
(625, 70, '_menu_item_target', ''),
(626, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(627, 70, '_menu_item_xfn', ''),
(628, 70, '_menu_item_url', ''),
(630, 71, '_wp_attached_file', '2018/02/pattern.png'),
(631, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1094;s:6:"height";i:321;s:4:"file";s:19:"2018/02/pattern.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"pattern-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"pattern-300x88.png";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"pattern-768x225.png";s:5:"width";i:768;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"pattern-1024x300.png";s:5:"width";i:1024;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:4:{s:4:"file";s:19:"pattern-324x321.png";s:5:"width";i:324;s:6:"height";i:321;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"pattern-416x122.png";s:5:"width";i:416;s:6:"height";i:122;s:9:"mime-type";s:9:"image/png";}s:24:"woocommerce_thumbnail_2x";a:4:{s:4:"file";s:19:"pattern-648x321.png";s:5:"width";i:648;s:6:"height";i:321;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"pattern-324x321.png";s:5:"width";i:324;s:6:"height";i:321;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"pattern-324x321.png";s:5:"width";i:324;s:6:"height";i:321;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:19:"pattern-416x122.png";s:5:"width";i:416;s:6:"height";i:122;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(632, 4, '_wp_page_template', 'template-homepage.php'),
(633, 72, '_wc_review_count', '0'),
(634, 72, '_wc_rating_count', 'a:0:{}'),
(635, 72, '_wc_average_rating', '0'),
(636, 52, '_product_attributes', 'a:0:{}'),
(637, 73, '_variation_description', ''),
(638, 73, '_sku', ''),
(639, 73, '_regular_price', '0'),
(640, 73, '_sale_price', ''),
(641, 73, '_sale_price_dates_from', ''),
(642, 73, '_sale_price_dates_to', ''),
(643, 73, 'total_sales', '0'),
(644, 73, '_tax_status', 'taxable'),
(645, 73, '_tax_class', 'parent'),
(646, 73, '_manage_stock', 'no'),
(647, 73, '_backorders', 'no'),
(648, 73, '_sold_individually', 'no'),
(649, 73, '_weight', ''),
(650, 73, '_length', ''),
(651, 73, '_width', ''),
(652, 73, '_height', ''),
(653, 73, '_upsell_ids', 'a:0:{}'),
(654, 73, '_crosssell_ids', 'a:0:{}'),
(655, 73, '_purchase_note', ''),
(656, 73, '_default_attributes', 'a:0:{}'),
(657, 73, '_virtual', 'no'),
(658, 73, '_downloadable', 'no'),
(659, 73, '_product_image_gallery', ''),
(660, 73, '_download_limit', '-1'),
(661, 73, '_download_expiry', '-1'),
(662, 73, '_stock', NULL),
(663, 73, '_stock_status', 'instock'),
(664, 73, '_wc_average_rating', '0'),
(665, 73, '_wc_rating_count', 'a:0:{}'),
(666, 73, '_wc_review_count', '0'),
(667, 73, '_downloadable_files', 'a:0:{}'),
(668, 73, '_price', '0'),
(669, 73, '_product_version', '3.3.1'),
(670, 52, '_price', '0'),
(671, 18, '_wp_trash_meta_status', 'publish'),
(672, 18, '_wp_trash_meta_time', '1519485375'),
(673, 18, '_wp_desired_post_slug', 'test'),
(674, 74, '_menu_item_type', 'taxonomy'),
(675, 74, '_menu_item_menu_item_parent', '51'),
(676, 74, '_menu_item_object_id', '25'),
(677, 74, '_menu_item_object', 'product_cat'),
(678, 74, '_menu_item_target', ''),
(679, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(680, 74, '_menu_item_xfn', ''),
(681, 74, '_menu_item_url', ''),
(683, 17, '_wp_old_slug', 'test'),
(684, 75, '_wc_review_count', '0'),
(685, 75, '_wc_rating_count', 'a:0:{}'),
(686, 75, '_wc_average_rating', '0'),
(687, 75, '_edit_last', '1'),
(688, 75, '_edit_lock', '1519485631:1'),
(689, 76, '_wc_review_count', '0'),
(690, 76, '_wc_rating_count', 'a:0:{}'),
(691, 76, '_wc_average_rating', '0'),
(692, 76, '_edit_last', '1'),
(693, 76, '_edit_lock', '1519485638:1'),
(694, 77, '_wp_attached_file', '2018/02/AUTHENTIQUE_large.png'),
(695, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:267;s:6:"height";i:177;s:4:"file";s:29:"2018/02/AUTHENTIQUE_large.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"AUTHENTIQUE_large-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(696, 76, '_thumbnail_id', '77'),
(697, 76, '_alg_wc_pif_enabled_local_1', 'no'),
(698, 76, '_alg_wc_pif_type_local_1', 'text'),
(699, 76, '_alg_wc_pif_required_local_1', 'no'),
(700, 76, '_alg_wc_pif_title_local_1', 'Input Field'),
(701, 76, '_alg_wc_pif_placeholder_local_1', ''),
(702, 76, '_alg_wc_pif_default_value_local_1', ''),
(703, 76, '_alg_wc_pif_class_local_1', ''),
(704, 76, '_alg_wc_pif_style_local_1', ''),
(705, 76, '_alg_wc_pif_required_message_local_1', 'Field "%title%" is required!'),
(706, 76, '_alg_wc_pif_input_restrictions_min_local_1', ''),
(707, 76, '_alg_wc_pif_input_restrictions_max_local_1', ''),
(708, 76, '_alg_wc_pif_input_restrictions_step_local_1', ''),
(709, 76, '_alg_wc_pif_input_restrictions_maxlength_local_1', ''),
(710, 76, '_alg_wc_pif_input_restrictions_pattern_local_1', ''),
(711, 76, '_alg_wc_pif_type_checkbox_yes_local_1', 'Yes'),
(712, 76, '_alg_wc_pif_type_checkbox_no_local_1', 'No'),
(713, 76, '_alg_wc_pif_type_file_accept_local_1', '.jpg,.jpeg,.png'),
(714, 76, '_alg_wc_pif_type_file_wrong_type_msg_local_1', 'Wrong file type!'),
(715, 76, '_alg_wc_pif_type_file_max_size_local_1', '0'),
(716, 76, '_alg_wc_pif_type_file_max_size_msg_local_1', 'File is too big!'),
(717, 76, '_alg_wc_pif_type_datepicker_format_local_1', ''),
(718, 76, '_alg_wc_pif_type_datepicker_mindate_local_1', '-365'),
(719, 76, '_alg_wc_pif_type_datepicker_maxdate_local_1', '365'),
(720, 76, '_alg_wc_pif_type_datepicker_addyear_local_1', 'no'),
(721, 76, '_alg_wc_pif_type_datepicker_yearrange_local_1', 'c-10:c+10'),
(722, 76, '_alg_wc_pif_type_datepicker_firstday_local_1', '0'),
(723, 76, '_alg_wc_pif_type_timepicker_format_local_1', 'hh:mm p'),
(724, 76, '_alg_wc_pif_type_timepicker_interval_local_1', '15'),
(725, 76, '_alg_wc_pif_type_select_options_local_1', ''),
(726, 76, '_alg_wc_pif_local_total_number', '1'),
(727, 76, '_sku', ''),
(728, 76, '_regular_price', '0'),
(729, 76, '_sale_price', ''),
(730, 76, '_sale_price_dates_from', ''),
(731, 76, '_sale_price_dates_to', ''),
(732, 76, 'total_sales', '0'),
(733, 76, '_tax_status', 'taxable'),
(734, 76, '_tax_class', ''),
(735, 76, '_manage_stock', 'no'),
(736, 76, '_backorders', 'no'),
(737, 76, '_sold_individually', 'no'),
(738, 76, '_weight', ''),
(739, 76, '_length', ''),
(740, 76, '_width', ''),
(741, 76, '_height', ''),
(742, 76, '_upsell_ids', 'a:0:{}'),
(743, 76, '_crosssell_ids', 'a:0:{}'),
(744, 76, '_purchase_note', ''),
(745, 76, '_default_attributes', 'a:0:{}'),
(746, 76, '_virtual', 'no'),
(747, 76, '_downloadable', 'no'),
(748, 76, '_product_image_gallery', ''),
(749, 76, '_download_limit', '-1'),
(750, 76, '_download_expiry', '-1'),
(751, 76, '_stock', NULL),
(752, 76, '_stock_status', 'instock'),
(753, 76, '_product_version', '3.3.1'),
(754, 76, '_price', '0'),
(755, 78, '_menu_item_type', 'taxonomy'),
(756, 78, '_menu_item_menu_item_parent', '51'),
(757, 78, '_menu_item_object_id', '21'),
(758, 78, '_menu_item_object', 'product_cat'),
(759, 78, '_menu_item_target', ''),
(760, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(761, 78, '_menu_item_xfn', ''),
(762, 78, '_menu_item_url', ''),
(764, 79, '_menu_item_type', 'taxonomy'),
(765, 79, '_menu_item_menu_item_parent', '78'),
(766, 79, '_menu_item_object_id', '26'),
(767, 79, '_menu_item_object', 'product_cat'),
(768, 79, '_menu_item_target', ''),
(769, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(770, 79, '_menu_item_xfn', ''),
(771, 79, '_menu_item_url', ''),
(773, 80, '_wp_trash_meta_status', 'publish'),
(774, 80, '_wp_trash_meta_time', '1519489241'),
(775, 81, '_wp_trash_meta_status', 'publish'),
(776, 81, '_wp_trash_meta_time', '1519489257'),
(777, 82, '_edit_lock', '1519489297:1'),
(778, 82, '_wp_trash_meta_status', 'publish'),
(779, 82, '_wp_trash_meta_time', '1519489301'),
(780, 83, '_edit_lock', '1519489777:1'),
(781, 83, '_wp_trash_meta_status', 'publish'),
(782, 83, '_wp_trash_meta_time', '1519489787'),
(783, 73, '_wp_trash_meta_status', 'publish'),
(784, 73, '_wp_trash_meta_time', '1519659065'),
(785, 73, '_wp_desired_post_slug', 'personnalisable'),
(786, 52, '_enable', 'yes'),
(787, 52, '_prsckie_enable', 'yes'),
(788, 52, '_prsckie_inputs_length', '10,7'),
(789, 52, '_prsckie_inputs_placeholder', 'ECRIS-MOI,UN BISCUIT');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-14 03:28:35', '2018-02-14 02:28:35', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-02-14 03:28:35', '2018-02-14 02:28:35', '', 0, 'http://minipoli.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-14 03:28:35', '2018-02-14 02:28:35', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://minipoli.local/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-02-14 03:28:35', '2018-02-14 02:28:35', '', 0, 'http://minipoli.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-02-14 03:32:26', '2018-02-14 02:32:26', '', 'Biscuits', '', 'publish', 'closed', 'closed', '', 'boutique', '', '', '2018-02-24 16:04:18', '2018-02-24 15:04:18', '', 0, 'http://minipoli.local/boutique/', 0, 'page', '', 0),
(5, 1, '2018-02-14 03:32:26', '2018-02-14 02:32:26', '[woocommerce_cart]', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2018-02-14 03:32:26', '2018-02-14 02:32:26', '', 0, 'http://minipoli.local/panier/', 0, 'page', '', 0),
(6, 1, '2018-02-14 03:32:26', '2018-02-14 02:32:26', '[woocommerce_checkout]', 'Commande', '', 'publish', 'closed', 'closed', '', 'commande', '', '', '2018-02-14 03:32:26', '2018-02-14 02:32:26', '', 0, 'http://minipoli.local/commande/', 0, 'page', '', 0),
(7, 1, '2018-02-14 03:32:26', '2018-02-14 02:32:26', '[woocommerce_my_account]', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2018-02-14 03:32:26', '2018-02-14 02:32:26', '', 0, 'http://minipoli.local/mon-compte/', 0, 'page', '', 0),
(15, 1, '2018-02-14 09:18:38', '2018-02-14 08:18:38', '', 'Order &ndash; février 14, 2018 @ 09:18  ', '', 'wc-processing', 'open', 'closed', 'order_5a83f0de77fda', 'commande-feb-14-2018-0818-am', '', '', '2018-02-14 09:18:38', '2018-02-14 08:18:38', '', 0, 'http://minipoli.local/?post_type=shop_order&#038;p=15', 0, 'shop_order', '', 1),
(17, 1, '2018-02-14 09:32:55', '2018-02-14 08:32:55', '', 'Amande', '', 'publish', 'open', 'closed', '', 'amande', '', '', '2018-02-24 16:19:54', '2018-02-24 15:19:54', '', 0, 'http://minipoli.local/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2018-02-14 09:33:12', '2018-02-14 08:33:12', '', 'Amande', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-02-24 16:16:15', '2018-02-24 15:16:15', '', 17, 'http://minipoli.local/produit/test/', 0, 'product_variation', '', 0),
(19, 1, '2018-02-14 09:39:35', '2018-02-14 08:39:35', 'unread', 'Quote #6078', '', 'publish', 'closed', 'closed', '', 'quote-6078', '', '', '2018-02-14 09:39:35', '2018-02-14 08:39:35', '', 0, 'http://minipoli.local/watq-quotes/quote-6078/', 0, 'watq-quotes', '', 0),
(21, 1, '2018-02-14 10:45:01', '2018-02-14 09:45:01', '', 'Homepage', '', 'trash', 'closed', 'closed', '', 'homepage__trashed', '', '', '2018-02-24 15:52:44', '2018-02-24 14:52:44', '', 0, 'http://minipoli.local/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-02-14 10:45:01', '2018-02-14 09:45:01', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-02-14 10:45:01', '2018-02-14 09:45:01', '', 21, 'http://minipoli.local/2018/02/14/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-02-14 10:45:16', '2018-02-14 09:45:16', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 09:45:16"\n    },\n    "page_on_front": {\n        "value": "21",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-14 09:45:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '038973a4-04a5-4634-99a8-caa2a17754bc', '', '', '2018-02-14 10:45:16', '2018-02-14 09:45:16', '', 0, 'http://minipoli.local/2018/02/14/038973a4-04a5-4634-99a8-caa2a17754bc/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-02-15 08:49:06', '2018-02-15 07:49:06', '', '1920x780', '', 'inherit', 'open', 'closed', '', '1920x780', '', '', '2018-02-15 08:49:06', '2018-02-15 07:49:06', '', 21, 'http://minipoli.local/wp-content/uploads/2018/02/1920x780.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-02-24 12:11:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-24 12:11:12', '0000-00-00 00:00:00', '', 0, 'http://minipoli.local/?p=25', 0, 'post', '', 0),
(26, 1, '2018-02-24 12:11:38', '2018-02-24 11:11:38', '{\n    "page_on_front": {\n        "value": "4",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 11:11:38"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c680abee-d4cf-40ca-b4ed-ff7cccab8eb4', '', '', '2018-02-24 12:11:38', '2018-02-24 11:11:38', '', 0, 'http://minipoli.local/2018/02/24/c680abee-d4cf-40ca-b4ed-ff7cccab8eb4/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-02-24 13:14:12', '2018-02-24 12:14:12', '{\n    "minipoli::storefront_heading_color": {\n        "value": "#e19476",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:14:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07a19850-68d4-4567-81e7-505c6d26bef3', '', '', '2018-02-24 13:14:12', '2018-02-24 12:14:12', '', 0, 'http://minipoli.local/2018/02/24/07a19850-68d4-4567-81e7-505c6d26bef3/', 0, 'customize_changeset', '', 0),
(30, 1, '2018-02-24 13:15:10', '2018-02-24 12:15:10', '{\n    "minipoli::storefront_accent_color": {\n        "value": "#f7a383",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:15:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8837ae11-8701-416d-9267-c765616dff68', '', '', '2018-02-24 13:15:10', '2018-02-24 12:15:10', '', 0, 'http://minipoli.local/2018/02/24/8837ae11-8701-416d-9267-c765616dff68/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-02-24 13:16:00', '2018-02-24 12:16:00', '{\n    "minipoli::storefront_heading_color": {\n        "value": "#c16a5e",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:16:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9bc65bfe-5a28-4bee-bf2c-c227913851c0', '', '', '2018-02-24 13:16:00', '2018-02-24 12:16:00', '', 0, 'http://minipoli.local/2018/02/24/9bc65bfe-5a28-4bee-bf2c-c227913851c0/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-02-24 13:16:40', '2018-02-24 12:16:40', '{\n    "minipoli::storefront_header_text_color": {\n        "value": "#c2847c",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:16:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97b35282-0483-4d50-8bed-e888aa059f43', '', '', '2018-02-24 13:16:40', '2018-02-24 12:16:40', '', 0, 'http://minipoli.local/2018/02/24/97b35282-0483-4d50-8bed-e888aa059f43/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-02-24 13:19:11', '2018-02-24 12:19:11', '{\n    "minipoli::storefront_header_text_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:19:11"\n    },\n    "minipoli::storefront_header_link_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:18:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1136d201-2f20-41e4-9960-536d62bf5093', '', '', '2018-02-24 13:19:11', '2018-02-24 12:19:11', '', 0, 'http://minipoli.local/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2018-02-24 13:19:41', '2018-02-24 12:19:41', '{\n    "minipoli::storefront_footer_heading_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:19:41"\n    },\n    "minipoli::storefront_footer_text_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:19:41"\n    },\n    "minipoli::storefront_footer_link_color": {\n        "value": "#de676f",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:19:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85a7375e-1c7b-482b-bb7d-6215e5d180b2', '', '', '2018-02-24 13:19:41', '2018-02-24 12:19:41', '', 0, 'http://minipoli.local/2018/02/24/85a7375e-1c7b-482b-bb7d-6215e5d180b2/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-02-24 13:19:58', '2018-02-24 12:19:58', '{\n    "minipoli::storefront_header_link_color": {\n        "value": "#de676f",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:19:58"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1615ddb1-e4c8-496c-90e9-75af819fd08e', '', '', '2018-02-24 13:19:58', '2018-02-24 12:19:58', '', 0, 'http://minipoli.local/2018/02/24/1615ddb1-e4c8-496c-90e9-75af819fd08e/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-02-24 13:26:22', '2018-02-24 12:26:22', '{\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:20:43"\n    },\n    "minipoli::custom_logo": {\n        "value": 37,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:26:22"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69366616-7f2e-4b9f-825b-a8b37a7d9966', '', '', '2018-02-24 13:26:22', '2018-02-24 12:26:22', '', 0, 'http://minipoli.local/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2018-02-24 13:26:04', '2018-02-24 12:26:04', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-02-24 13:26:04', '2018-02-24 12:26:04', '', 0, 'http://minipoli.local/wp-content/uploads/2018/02/logo.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2018-02-24 13:26:53', '2018-02-24 12:26:53', '{\n    "minipoli::storefront_header_link_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:26:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b894387-6960-475d-9789-42f78a845702', '', '', '2018-02-24 13:26:53', '2018-02-24 12:26:53', '', 0, 'http://minipoli.local/2018/02/24/9b894387-6960-475d-9789-42f78a845702/', 0, 'customize_changeset', '', 0),
(39, 1, '2018-02-24 13:28:39', '2018-02-24 12:28:39', '', 'logo_light', '', 'inherit', 'open', 'closed', '', 'logo_light', '', '', '2018-02-24 13:28:39', '2018-02-24 12:28:39', '', 0, 'http://minipoli.local/wp-content/uploads/2018/02/logo_light.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-02-24 13:28:49', '2018-02-24 12:28:49', '{\n    "minipoli::custom_logo": {\n        "value": 39,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:28:49"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4bb371bf-f96a-4031-9726-cef5db0a33a8', '', '', '2018-02-24 13:28:49', '2018-02-24 12:28:49', '', 0, 'http://minipoli.local/2018/02/24/4bb371bf-f96a-4031-9726-cef5db0a33a8/', 0, 'customize_changeset', '', 0),
(41, 1, '2018-02-24 13:29:25', '2018-02-24 12:29:25', '{\n    "minipoli::storefront_heading_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:29:25"\n    },\n    "minipoli::storefront_accent_color": {\n        "value": "#de676f",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:29:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fe50919c-c229-4df5-ade5-4465ed4e2f3c', '', '', '2018-02-24 13:29:25', '2018-02-24 12:29:25', '', 0, 'http://minipoli.local/2018/02/24/fe50919c-c229-4df5-ade5-4465ed4e2f3c/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-02-24 13:30:12', '2018-02-24 12:30:12', '{\n    "minipoli::storefront_button_background_color": {\n        "value": "#f4a98b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:29:53"\n    },\n    "minipoli::storefront_button_text_color": {\n        "value": "#ffffff",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:30:12"\n    },\n    "minipoli::storefront_button_alt_background_color": {\n        "value": "#de676f",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:30:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4ed3ea4b-0236-4a42-9c71-d5e6f2225506', '', '', '2018-02-24 13:30:12', '2018-02-24 12:30:12', '', 0, 'http://minipoli.local/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2018-02-24 13:32:40', '2018-02-24 12:32:40', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, personnalisables.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:32:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d6972e0-b3b9-4ba0-9dcb-2fc261825c21', '', '', '2018-02-24 13:32:40', '2018-02-24 12:32:40', '', 0, 'http://minipoli.local/2018/02/24/9d6972e0-b3b9-4ba0-9dcb-2fc261825c21/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-02-24 13:35:09', '2018-02-24 12:35:09', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, personnalisables.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:34:12"\n    },\n    "minipoli::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:35:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9926daf8-7f0e-48d3-b40e-c36b07dfecec', '', '', '2018-02-24 13:35:09', '2018-02-24 12:35:09', '', 0, 'http://minipoli.local/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2018-02-24 13:39:42', '2018-02-24 12:39:42', '{\n    "blogname": {\n        "value": "Minipoli",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:36:19"\n    },\n    "minipoli::custom_logo": {\n        "value": 39,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:36:19"\n    },\n    "blogdescription": {\n        "value": "Biscuits faits maison, personnalisables.<br>test",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:39:42"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c133f71-3a47-4e46-b2b4-3c4bc3e54854', '', '', '2018-02-24 13:39:42', '2018-02-24 12:39:42', '', 0, 'http://minipoli.local/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2018-02-24 13:44:56', '2018-02-24 12:44:56', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, personnalisables.<br/>D\\u00e9cor\\u00e9s mains par saison, pour vos \\u00e9v\\u00e8nements.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:42:25"\n    },\n    "minipoli::storefront_header_link_color": {\n        "value": "#de676f",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 12:44:56"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2b51194f-e1bb-466d-b098-c2976e041d43', '', '', '2018-02-24 13:44:56', '2018-02-24 12:44:56', '', 0, 'http://minipoli.local/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2018-02-24 14:23:54', '2018-02-24 13:23:54', '', 'AMANDE_large', '', 'inherit', 'open', 'closed', '', 'amande_large', '', '', '2018-02-24 14:23:54', '2018-02-24 13:23:54', '', 17, 'http://minipoli.local/wp-content/uploads/2018/02/AMANDE_large.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2018-02-24 14:35:52', '2018-02-24 13:35:52', '{\n    "minipoli::nav_menu_locations[primary]": {\n        "value": -8466219683890143000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 13:35:52"\n    },\n    "nav_menu[-8466219683890143000]": {\n        "value": {\n            "name": "Primary",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 13:35:52"\n    },\n    "nav_menu_item[-7921475575200113000]": {\n        "value": {\n            "object_id": 4,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Boutique",\n            "url": "http://minipoli.local/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Boutique",\n            "nav_menu_term_id": -8466219683890143000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 13:35:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f011b43-1322-4f24-9788-c649732031d0', '', '', '2018-02-24 14:35:52', '2018-02-24 13:35:52', '', 0, 'http://minipoli.local/2018/02/24/7f011b43-1322-4f24-9788-c649732031d0/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-02-24 14:39:37', '2018-02-24 13:39:37', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 0, 'http://minipoli.local/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2018-02-24 14:41:53', '2018-02-24 13:41:53', '', 'Personnalisable', '', 'publish', 'open', 'closed', '', 'personnalisable', '', '', '2018-02-26 18:10:14', '2018-02-26 17:10:14', '', 0, 'http://minipoli.local/?post_type=product&#038;p=52', 0, 'product', '', 0),
(54, 1, '2018-02-24 14:42:25', '2018-02-24 13:42:25', '', 'ecris-moi-un-biscuit-small', '', 'inherit', 'open', 'closed', '', 'ecris-moi-un-biscuit-small', '', '', '2018-02-24 14:42:25', '2018-02-24 13:42:25', '', 52, 'http://minipoli.local/wp-content/uploads/2018/02/ecris-moi-un-biscuit-small.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-02-24 14:53:16', '2018-02-24 13:53:16', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, {% category=\\"personnalisables\\" text=\\"personnalisables\\" %}.<br/>D\\u00e9cor\\u00e9s mains par saison, pour vos \\u00e9v\\u00e8nements.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 13:53:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a15b12dd-31d8-460c-af20-6c3e5630dfba', '', '', '2018-02-24 14:53:16', '2018-02-24 13:53:16', '', 0, 'http://minipoli.local/2018/02/24/a15b12dd-31d8-460c-af20-6c3e5630dfba/', 0, 'customize_changeset', '', 0),
(56, 1, '2018-02-24 15:14:22', '2018-02-24 14:14:22', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, {% category=\\"personnalisable\\" text=\\"personnalisables\\" %}.<br/>D\\u00e9cor\\u00e9s mains par saison, pour vos \\u00e9v\\u00e8nements.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 14:14:22"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75b947dd-755d-44cf-a991-d82acf205896', '', '', '2018-02-24 15:14:22', '2018-02-24 14:14:22', '', 0, 'http://minipoli.local/2018/02/24/75b947dd-755d-44cf-a991-d82acf205896/', 0, 'customize_changeset', '', 0),
(57, 1, '2018-02-24 15:14:27', '2018-02-24 14:14:27', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, {% category=\\"personnalisable\\" text=\\"personnalisable\\" %}.<br/>D\\u00e9cor\\u00e9s mains par saison, pour vos \\u00e9v\\u00e8nements.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 14:14:27"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '498c3a32-5701-49ec-ad56-5278e679fa1a', '', '', '2018-02-24 15:14:27', '2018-02-24 14:14:27', '', 0, 'http://minipoli.local/2018/02/24/498c3a32-5701-49ec-ad56-5278e679fa1a/', 0, 'customize_changeset', '', 0),
(58, 1, '2018-02-24 15:21:35', '2018-02-24 14:21:35', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, {% category=\\"personnalisable\\" text=\\"personnalisables\\" %}.<br/>D\\u00e9cor\\u00e9s mains par saison, pour vos \\u00e9v\\u00e8nements.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 14:21:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85b53468-89b2-4566-ae97-bce060f1a9f2', '', '', '2018-02-24 15:21:35', '2018-02-24 14:21:35', '', 0, 'http://minipoli.local/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2018-02-24 15:45:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-24 15:45:06', '0000-00-00 00:00:00', '', 0, 'http://minipoli.local/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2018-02-24 15:45:12', '2018-02-24 14:45:12', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 19, 'http://minipoli.local/?p=60', 3, 'nav_menu_item', '', 0),
(61, 1, '2018-02-24 15:45:39', '2018-02-24 14:45:39', '', 'Biscuits', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-24 15:45:39', '2018-02-24 14:45:39', '', 4, 'http://minipoli.local/2018/02/24/4-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-02-24 15:58:08', '2018-02-24 14:58:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id arcu felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam a ornare ex. Duis rhoncus ullamcorper lectus, sit amet mattis odio condimentum blandit. Nam tincidunt metus sed tempus ultricies. Fusce a tortor nec tortor cursus rutrum sed sit amet ipsum. Mauris tincidunt viverra nisi ac varius. Ut eget nunc sed urna posuere blandit. Integer egestas libero id turpis interdum vestibulum.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-54 aligncenter" src="http://minipoli.local/wp-content/uploads/2018/02/ecris-moi-un-biscuit-small-300x190.png" alt="" width="300" height="190" />\r\n\r\n&nbsp;\r\n\r\nMorbi semper felis nec urna ultrices posuere. Aliquam sit amet massa nec magna pharetra volutpat. Fusce non sem erat. Ut vitae arcu placerat, dictum metus ac, euismod ex. Curabitur cursus ullamcorper lectus, eget laoreet lorem fermentum ut. Curabitur ut volutpat lorem. Aliquam sagittis augue leo, eget laoreet metus iaculis ut. In hac habitasse platea dictumst. Ut ac rutrum nulla.', 'Notre Histoire', '', 'publish', 'closed', 'closed', '', 'notre-histoire', '', '', '2018-02-24 15:59:08', '2018-02-24 14:59:08', '', 0, 'http://minipoli.local/?page_id=62', 0, 'page', '', 0),
(63, 1, '2018-02-24 15:58:08', '2018-02-24 14:58:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id arcu felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam a ornare ex. Duis rhoncus ullamcorper lectus, sit amet mattis odio condimentum blandit. Nam tincidunt metus sed tempus ultricies. Fusce a tortor nec tortor cursus rutrum sed sit amet ipsum. Mauris tincidunt viverra nisi ac varius. Ut eget nunc sed urna posuere blandit. Integer egestas libero id turpis interdum vestibulum.', 'Notre Histoire', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-02-24 15:58:08', '2018-02-24 14:58:08', '', 62, 'http://minipoli.local/2018/02/24/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-02-24 15:58:15', '2018-02-24 14:58:15', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 0, 'http://minipoli.local/?p=64', 6, 'nav_menu_item', '', 0),
(65, 1, '2018-02-24 15:58:59', '2018-02-24 14:58:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id arcu felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam a ornare ex. Duis rhoncus ullamcorper lectus, sit amet mattis odio condimentum blandit. Nam tincidunt metus sed tempus ultricies. Fusce a tortor nec tortor cursus rutrum sed sit amet ipsum. Mauris tincidunt viverra nisi ac varius. Ut eget nunc sed urna posuere blandit. Integer egestas libero id turpis interdum vestibulum.\r\n\r\n<img class="size-medium wp-image-54 aligncenter" src="http://minipoli.local/wp-content/uploads/2018/02/ecris-moi-un-biscuit-small-300x190.png" alt="" width="300" height="190" />\r\n\r\nMorbi semper felis nec urna ultrices posuere. Aliquam sit amet massa nec magna pharetra volutpat. Fusce non sem erat. Ut vitae arcu placerat, dictum metus ac, euismod ex. Curabitur cursus ullamcorper lectus, eget laoreet lorem fermentum ut. Curabitur ut volutpat lorem. Aliquam sagittis augue leo, eget laoreet metus iaculis ut. In hac habitasse platea dictumst. Ut ac rutrum nulla.', 'Notre Histoire', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-02-24 15:58:59', '2018-02-24 14:58:59', '', 62, 'http://minipoli.local/2018/02/24/62-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-02-24 15:59:08', '2018-02-24 14:59:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id arcu felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam a ornare ex. Duis rhoncus ullamcorper lectus, sit amet mattis odio condimentum blandit. Nam tincidunt metus sed tempus ultricies. Fusce a tortor nec tortor cursus rutrum sed sit amet ipsum. Mauris tincidunt viverra nisi ac varius. Ut eget nunc sed urna posuere blandit. Integer egestas libero id turpis interdum vestibulum.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-54 aligncenter" src="http://minipoli.local/wp-content/uploads/2018/02/ecris-moi-un-biscuit-small-300x190.png" alt="" width="300" height="190" />\r\n\r\n&nbsp;\r\n\r\nMorbi semper felis nec urna ultrices posuere. Aliquam sit amet massa nec magna pharetra volutpat. Fusce non sem erat. Ut vitae arcu placerat, dictum metus ac, euismod ex. Curabitur cursus ullamcorper lectus, eget laoreet lorem fermentum ut. Curabitur ut volutpat lorem. Aliquam sagittis augue leo, eget laoreet metus iaculis ut. In hac habitasse platea dictumst. Ut ac rutrum nulla.', 'Notre Histoire', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-02-24 15:59:08', '2018-02-24 14:59:08', '', 62, 'http://minipoli.local/2018/02/24/62-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-02-24 16:00:07', '2018-02-24 15:00:07', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]\nMinipoli "[your-subject]"\n[your-name] <wordpress@minipoli.local>\nDe : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Minipoli (http://minipoli.local)\nleo450450@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nMinipoli "[your-subject]"\nMinipoli <wordpress@minipoli.local>\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Minipoli (http://minipoli.local)\n[your-email]\nReply-To: leo450450@gmail.com\n\n0\n0\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2018-02-24 16:00:07', '2018-02-24 15:00:07', '', 0, 'http://minipoli.local/?post_type=wpcf7_contact_form&p=67', 0, 'wpcf7_contact_form', '', 0),
(68, 1, '2018-02-24 16:00:36', '2018-02-24 15:00:36', '[contact-form-7 id="67" title="Formulaire de contact"]', 'Nous Contacter', '', 'publish', 'closed', 'closed', '', 'nous-contacter', '', '', '2018-02-24 16:00:36', '2018-02-24 15:00:36', '', 0, 'http://minipoli.local/?page_id=68', 0, 'page', '', 0),
(69, 1, '2018-02-24 16:00:36', '2018-02-24 15:00:36', '[contact-form-7 id="67" title="Formulaire de contact"]', 'Nous Contacter', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-02-24 16:00:36', '2018-02-24 15:00:36', '', 68, 'http://minipoli.local/2018/02/24/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-02-24 16:00:43', '2018-02-24 15:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 0, 'http://minipoli.local/?p=70', 7, 'nav_menu_item', '', 0),
(71, 1, '2018-02-24 16:04:02', '2018-02-24 15:04:02', '', 'pattern', '', 'inherit', 'open', 'closed', '', 'pattern', '', '', '2018-02-24 16:04:02', '2018-02-24 15:04:02', '', 4, 'http://minipoli.local/wp-content/uploads/2018/02/pattern.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2018-02-24 16:12:48', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-02-24 16:12:48', '0000-00-00 00:00:00', '', 0, 'http://minipoli.local/?post_type=product&p=72', 0, 'product', '', 0),
(73, 1, '2018-02-24 16:15:26', '2018-02-24 15:15:26', '', 'Personnalisable', '', 'trash', 'closed', 'closed', '', 'personnalisable__trashed', '', '', '2018-02-26 16:31:05', '2018-02-26 15:31:05', '', 52, 'http://minipoli.local/produit/personnalisable/', 0, 'product_variation', '', 0),
(74, 1, '2018-02-24 16:17:49', '2018-02-24 15:17:49', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 19, 'http://minipoli.local/?p=74', 2, 'nav_menu_item', '', 0),
(75, 1, '2018-02-24 16:20:31', '0000-00-00 00:00:00', '', 'Printemps', '', 'draft', 'open', 'closed', '', '', '', '', '2018-02-24 16:20:31', '2018-02-24 15:20:31', '', 0, 'http://minipoli.local/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2018-02-24 16:22:22', '2018-02-24 15:22:22', '', 'Biscuit de Printemps', '', 'publish', 'open', 'closed', '', 'biscuit-de-printemps', '', '', '2018-02-24 16:22:54', '2018-02-24 15:22:54', '', 0, 'http://minipoli.local/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2018-02-24 16:22:12', '2018-02-24 15:22:12', '', 'AUTHENTIQUE_large', '', 'inherit', 'open', 'closed', '', 'authentique_large', '', '', '2018-02-24 16:22:12', '2018-02-24 15:22:12', '', 76, 'http://minipoli.local/wp-content/uploads/2018/02/AUTHENTIQUE_large.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-02-24 16:23:16', '2018-02-24 15:23:16', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 19, 'http://minipoli.local/?p=78', 4, 'nav_menu_item', '', 0),
(79, 1, '2018-02-24 16:23:16', '2018-02-24 15:23:16', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2018-02-24 16:23:16', '2018-02-24 15:23:16', '', 21, 'http://minipoli.local/?p=79', 5, 'nav_menu_item', '', 0),
(80, 1, '2018-02-24 17:20:41', '2018-02-24 16:20:41', '{\n    "woocommerce_category_archive_display": {\n        "value": "both",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 16:20:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '598bb74f-e5b8-41cc-98dd-43bc35020e94', '', '', '2018-02-24 17:20:41', '2018-02-24 16:20:41', '', 0, 'http://minipoli.local/2018/02/24/598bb74f-e5b8-41cc-98dd-43bc35020e94/', 0, 'customize_changeset', '', 0),
(81, 1, '2018-02-24 17:20:57', '2018-02-24 16:20:57', '{\n    "woocommerce_category_archive_display": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 16:20:57"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c06e1585-f73d-4a34-aa34-ecec4dd6ddec', '', '', '2018-02-24 17:20:57', '2018-02-24 16:20:57', '', 0, 'http://minipoli.local/2018/02/24/c06e1585-f73d-4a34-aa34-ecec4dd6ddec/', 0, 'customize_changeset', '', 0),
(82, 1, '2018-02-24 17:21:41', '2018-02-24 16:21:41', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, {% category=\\"personnalisable\\" text=\\"personnalisables\\" %}.<br/>D\\u00e9cor\\u00e9s mains par {% category=\\"saisons\\" text=\\"saison\\" %}, pour vos \\u00e9v\\u00e8nements.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 16:21:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9639641b-c03b-4a79-baf6-e605e56b8ff4', '', '', '2018-02-24 17:21:41', '2018-02-24 16:21:41', '', 0, 'http://minipoli.local/?p=82', 0, 'customize_changeset', '', 0),
(83, 1, '2018-02-24 17:29:47', '2018-02-24 16:29:47', '{\n    "blogdescription": {\n        "value": "Biscuits faits maison, {% category=\\"personnalisable\\" text=\\"personnalisables\\" %}.<br/>D\\u00e9cor\\u00e9s mains par {% category=\\"saisons\\" text=\\"saison\\" %}, pour vos {% category=\\"evenements\\" text=\\"\\u00e9v\\u00e8nements\\" %}.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-24 16:29:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2561111c-a8b5-4bd7-b858-01073d87a03c', '', '', '2018-02-24 17:29:47', '2018-02-24 16:29:47', '', 0, 'http://minipoli.local/?p=83', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(4, 15, 'product_count_product_cat', '0'),
(5, 17, 'order_pa_glacage', '0'),
(6, 18, 'order_pa_glacage', '0'),
(7, 19, 'order', '2'),
(8, 19, 'display_type', ''),
(9, 19, 'thumbnail_id', '0'),
(10, 20, 'order', '4'),
(11, 20, 'display_type', ''),
(12, 20, 'thumbnail_id', '0'),
(13, 21, 'order', '5'),
(14, 21, 'display_type', ''),
(15, 21, 'thumbnail_id', '0'),
(16, 22, 'order', '6'),
(17, 22, 'display_type', ''),
(18, 22, 'thumbnail_id', '0'),
(19, 19, 'product_count_product_cat', '3'),
(20, 20, 'product_count_product_cat', '1'),
(22, 25, 'order', '3'),
(23, 25, 'display_type', ''),
(24, 25, 'thumbnail_id', '0'),
(25, 15, 'order', '1'),
(26, 25, 'product_count_product_cat', '1'),
(27, 26, 'order', '0'),
(28, 26, 'display_type', ''),
(29, 26, 'thumbnail_id', '0'),
(30, 27, 'order', '0'),
(31, 27, 'display_type', ''),
(32, 27, 'thumbnail_id', '0'),
(33, 28, 'order', '0'),
(34, 28, 'display_type', ''),
(35, 28, 'thumbnail_id', '0'),
(36, 29, 'order', '0'),
(37, 29, 'display_type', ''),
(38, 29, 'thumbnail_id', '0'),
(39, 26, 'product_count_product_cat', '1'),
(40, 21, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Non classé', 'non-classe', 0),
(17, 'Nature', 'nature', 0),
(18, 'Cerise', 'cerise', 0),
(19, 'Biscuits', 'biscuits', 0),
(20, 'Personnalisable', 'personnalisable', 0),
(21, 'Saisons', 'saisons', 0),
(22, 'Événements', 'evenements', 0),
(23, 'Primary', 'primary', 0),
(25, 'Simple', 'simple', 0),
(26, 'Printemps', 'printemps', 0),
(27, 'Été', 'ete', 0),
(28, 'Automne', 'automne', 0),
(29, 'Hiver', 'hiver', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(17, 8, 0),
(17, 17, 0),
(17, 18, 0),
(17, 25, 0),
(51, 23, 0),
(52, 2, 0),
(52, 20, 0),
(60, 23, 0),
(64, 23, 0),
(70, 23, 0),
(74, 23, 0),
(76, 2, 0),
(76, 21, 0),
(76, 26, 0),
(78, 23, 0),
(79, 23, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 1),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(17, 17, 'pa_glacage', '', 0, 1),
(18, 18, 'pa_glacage', '', 0, 1),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', '', 19, 1),
(21, 21, 'product_cat', '', 19, 1),
(22, 22, 'product_cat', '', 19, 0),
(23, 23, 'nav_menu', '', 0, 7),
(25, 25, 'product_cat', '', 19, 1),
(26, 26, 'product_cat', '', 21, 1),
(27, 27, 'product_cat', '', 21, 0),
(28, 28, 'product_cat', '', 21, 0),
(29, 29, 'product_cat', '', 21, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'client'),
(3, 1, 'last_name', 'client'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"781a00794dc51dd7adb3a2acdb3b71032627673c8ba27faef02cb42aa526231e";a:4:{s:10:"expiration";i:1519827629;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36";s:5:"login";i:1519654829;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '25'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(20, 1, 'closedpostboxes_product', 'a:0:{}'),
(21, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(22, 1, 'last_update', '1518596318'),
(23, 1, 'billing_first_name', 'client'),
(24, 1, 'billing_last_name', 'client'),
(25, 1, 'billing_company', 'client'),
(26, 1, 'billing_address_1', '12345'),
(27, 1, 'billing_city', 'client'),
(28, 1, 'billing_postcode', '12345'),
(29, 1, 'billing_country', 'FR'),
(30, 1, 'billing_email', 'client@yopmail.com'),
(31, 1, 'billing_phone', '101010101'),
(32, 1, 'shipping_first_name', 'client'),
(33, 1, 'shipping_last_name', 'client'),
(34, 1, 'shipping_company', 'client'),
(35, 1, 'shipping_address_1', '12345'),
(36, 1, 'shipping_city', 'client'),
(37, 1, 'shipping_postcode', '12345'),
(38, 1, 'shipping_country', 'FR'),
(39, 1, 'shipping_method', 'a:1:{i:0;s:11:"flat_rate:1";}'),
(40, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(41, 1, 'watq_quote_whishlist', 'a:1:{s:11:"Quote #6078";a:2:{s:18:"quote_general_data";a:3:{s:4:"time";s:10:"9 h 39 min";s:4:"date";s:11:"14-Feb-2018";s:7:"sent_to";s:19:"leo450450@gmail.com";}s:10:"quote_data";a:1:{i:18;a:10:{s:10:"product_id";i:17;s:13:"product_image";s:0:"";s:13:"product_title";s:4:"Test";s:13:"product_price";s:0:"";s:16:"product_quantity";i:1;s:12:"product_type";s:9:"variation";s:12:"variation_id";i:18;s:9:"sub_total";s:7:"0,00€";s:11:"quote_total";s:1:"0";s:17:"product_variation";s:218:"<dl class="variation _quote_variations"><dt class="variation-glacage">Glacage </dt><dd class="variation-glacage"> <p>cerise</p></dd><dt class="variation-test">Test </dt><dd class="variation-test"> <p>test</p></dd></dl>";}}}}'),
(42, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(43, 1, 'wp_user-settings-time', '1519484431'),
(44, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(45, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_tag";}'),
(46, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:57:"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(47, 1, 'screen_layout_page', '2'),
(48, 1, 'nav_menu_recently_edited', '23'),
(49, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BfJC/Qk//d1zGfn1ilDlyMJaQMggGa/', 'admin', 'leo450450@gmail.com', '', '2018-02-14 02:28:35', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'glacage', 'Glaçage', 'select', 'menu_order', 0),
(2, 'personnalisation', 'Personnalisation', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '13'),
(2, 1, '_variation_id', '14'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '0'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 1, 'qzd', 'qzd'),
(11, 1, '_alg_wc_pif_global', 'a:0:{}'),
(12, 1, '_alg_wc_pif_local', 'a:1:{i:0;a:32:{s:7:"enabled";s:3:"yes";s:4:"type";s:4:"text";s:8:"required";s:3:"yes";s:5:"title";s:5:"Perso";s:11:"placeholder";s:0:"";s:13:"default_value";s:0:"";s:5:"class";s:0:"";s:5:"style";s:0:"";s:16:"required_message";s:28:"Field "%title%" is required!";s:22:"input_restrictions_min";s:0:"";s:22:"input_restrictions_max";s:0:"";s:23:"input_restrictions_step";s:0:"";s:28:"input_restrictions_maxlength";s:0:"";s:26:"input_restrictions_pattern";s:0:"";s:17:"type_checkbox_yes";s:3:"Yes";s:16:"type_checkbox_no";s:2:"No";s:16:"type_file_accept";s:15:".jpg,.jpeg,.png";s:24:"type_file_wrong_type_msg";s:16:"Wrong file type!";s:18:"type_file_max_size";s:1:"0";s:22:"type_file_max_size_msg";s:16:"File is too big!";s:22:"type_datepicker_format";s:0:"";s:23:"type_datepicker_mindate";s:4:"-365";s:23:"type_datepicker_maxdate";s:3:"365";s:23:"type_datepicker_addyear";s:2:"no";s:25:"type_datepicker_yearrange";s:9:"c-10:c+10";s:24:"type_datepicker_firstday";s:1:"0";s:22:"type_timepicker_format";s:7:"hh:mm p";s:24:"type_timepicker_interval";s:2:"15";s:19:"type_select_options";s:0:"";s:15:"_plugin_version";s:5:"1.1.1";s:9:"_field_nr";i:1;s:6:"_value";s:3:"qzd";}}'),
(13, 2, 'method_id', 'flat_rate:1'),
(14, 2, 'cost', '0.00'),
(15, 2, 'total_tax', '0'),
(16, 2, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(17, 2, 'Articles', 'Test &times; 1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Test', 'line_item', 15),
(2, 'Forfait', 'shipping', 15);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(33, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:819:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2018-02-14T09:18:38+01:00";s:8:"postcode";s:5:"12345";s:4:"city";s:6:"client";s:9:"address_1";s:5:"12345";s:7:"address";s:5:"12345";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"FR";s:17:"shipping_postcode";s:5:"12345";s:13:"shipping_city";s:6:"client";s:18:"shipping_address_1";s:5:"12345";s:16:"shipping_address";s:5:"12345";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"FR";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:6:"client";s:9:"last_name";s:6:"client";s:7:"company";s:6:"client";s:5:"phone";s:9:"101010101";s:5:"email";s:18:"client@yopmail.com";s:19:"shipping_first_name";s:6:"client";s:18:"shipping_last_name";s:6:"client";s:16:"shipping_company";s:6:"client";}";}', 1519827629);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'France', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'FR', 'country');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Index pour la table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1208;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
