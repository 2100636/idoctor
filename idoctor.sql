-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 07 2015 г., 04:07
-- Версия сервера: 5.5.41-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `idoctor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add menu', 7, 'add_menu'),
(20, 'Can change menu', 7, 'change_menu'),
(21, 'Can delete menu', 7, 'delete_menu'),
(22, 'Can add page', 8, 'add_page'),
(23, 'Can change page', 8, 'change_page'),
(24, 'Can delete page', 8, 'delete_page'),
(25, 'Can add page image', 9, 'add_pageimage'),
(26, 'Can change page image', 9, 'change_pageimage'),
(27, 'Can delete page image', 9, 'delete_pageimage'),
(28, 'Can add article', 10, 'add_article'),
(29, 'Can change article', 10, 'change_article'),
(30, 'Can delete article', 10, 'delete_article'),
(31, 'Can add article image', 11, 'add_articleimage'),
(32, 'Can change article image', 11, 'change_articleimage'),
(33, 'Can delete article image', 11, 'delete_articleimage'),
(34, 'Can add service', 12, 'add_service'),
(35, 'Can change service', 12, 'change_service'),
(36, 'Can delete service', 12, 'delete_service'),
(37, 'Can add service step', 13, 'add_servicestep'),
(38, 'Can change service step', 13, 'change_servicestep'),
(39, 'Can delete service step', 13, 'delete_servicestep'),
(40, 'Can add service step image', 14, 'add_servicestepimage'),
(41, 'Can change service step image', 14, 'change_servicestepimage'),
(42, 'Can delete service step image', 14, 'delete_servicestepimage'),
(43, 'Can add faq', 15, 'add_faq'),
(44, 'Can change faq', 15, 'change_faq'),
(45, 'Can delete faq', 15, 'delete_faq'),
(46, 'Can add review', 16, 'add_review'),
(47, 'Can change review', 16, 'change_review'),
(48, 'Can delete review', 16, 'delete_review'),
(49, 'Can add Site Tree', 17, 'add_tree'),
(50, 'Can change Site Tree', 17, 'change_tree'),
(51, 'Can delete Site Tree', 17, 'delete_tree'),
(52, 'Can add Site Tree Item', 18, 'add_treeitem'),
(53, 'Can change Site Tree Item', 18, 'change_treeitem'),
(54, 'Can delete Site Tree Item', 18, 'delete_treeitem');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$tt1RY2yWMJhL$haNEGiWugT3ZBY2HkaNn5esB+NiFvCdioOp3PnZ751w=', '2015-04-06 10:47:30', 1, 'admin', '', '', '', 1, 1, '2015-04-06 09:23:33');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `core_article`
--

CREATE TABLE IF NOT EXISTS `core_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `core_article`
--

INSERT INTO `core_article` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'test', 'test', 'test', 'pages/services6.png');

-- --------------------------------------------------------

--
-- Структура таблицы `core_articleimage`
--

CREATE TABLE IF NOT EXISTS `core_articleimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_articleimage_article_id_4e4e14e196c46a93_fk_core_article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `core_faq`
--

CREATE TABLE IF NOT EXISTS `core_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(240) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `core_menu`
--

CREATE TABLE IF NOT EXISTS `core_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(244) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `core_menu_caf7cc51` (`lft`),
  KEY `core_menu_3cfbd988` (`rght`),
  KEY `core_menu_656442a0` (`tree_id`),
  KEY `core_menu_c9e9a848` (`level`),
  KEY `core_menu_6be37982` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `core_menu`
--

INSERT INTO `core_menu` (`id`, `name`, `slug`, `lft`, `rght`, `tree_id`, `level`, `parent_id`) VALUES
(1, 'Главная', 'home', 1, 2, 1, 0, NULL),
(2, 'Статьи', 'articles', 1, 2, 2, 0, NULL),
(3, 'Услуги', 'services', 1, 6, 3, 0, NULL),
(4, 'О нас', 'about', 1, 2, 4, 0, NULL),
(5, 'Контакты', 'contacts', 1, 2, 5, 0, NULL),
(6, 'Модульная ремонт', 'modul', 2, 3, 3, 1, 3),
(7, 'Еще ремонт', 'remont', 4, 5, 3, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `core_page`
--

CREATE TABLE IF NOT EXISTS `core_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `core_pageimage`
--

CREATE TABLE IF NOT EXISTS `core_pageimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_pageimage_1a63c800` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `core_review`
--

CREATE TABLE IF NOT EXISTS `core_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `core_service`
--

CREATE TABLE IF NOT EXISTS `core_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `main_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `core_service`
--

INSERT INTO `core_service` (`id`, `name`, `slug`, `description`, `image`, `main_check`) VALUES
(1, 'Модульный ремонт', 'modulnyj-remont', 'Замена кнопок, разъемов, динамиков, шлейфов', 'service/modul.png', 1),
(2, 'Простой ремонт с применением пайки iPhone', 'prostoj-remont-s-primeneniem-pajki-iphone', ' Замена коннекторов, разъемов, контактных групп, контактов SIM', 'service/shema2.png', 1),
(3, 'Сложный ремонт с применением пайки iPhone', 'slozhnyj-remont-s-primeneniem-pajki-iphone', ' Замена микросхем и контроллеров', 'service/shema.png', 1),
(4, 'Чистка после попадания влаги, устранение коррозии iPhone ', 'chistka-posle-popadaniya-vlagi-ustranenie-korrozii', 'Удаление окислов, коррозии после попадания жидкости, без последующего ремонта', 'service/chstka.png', 1),
(5, 'Восстановление программного обеспечения (прошивка) iPhone', 'vosstanovlenie-programmnogo-obespecheniya-proshivk', 'После неудачной прошивки, технического сбоя', 'service/vostonovlenie.png', 1),
(6, 'Замена аккумуляторной батареи iPhone', 'zamena-akkumulyatornoj-batarei-iphone', 'Замена аккумулятора в iPhone дело ответственное.', 'service/akom.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_servicestep`
--

CREATE TABLE IF NOT EXISTS `core_servicestep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(244) NOT NULL,
  `description` longtext NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_servicestep_service_id_3ca0e4c764e36885_fk_core_service_id` (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `core_servicestep`
--

INSERT INTO `core_servicestep` (`id`, `name`, `description`, `service_id`) VALUES
(1, 'Шаг 1', 'Aliquam et venenatis arcu, ac dictum felis. Nulla sapien dolor, tempor sodales mauris et, ultrices tristique odio. Vestibulum ac enim in urna dignissim pharetra. Sed pulvinar dolor ut ligula mattis blandit. Maecenas venenatis vehicula venenatis. Aliquam euismod orci elit, id placerat quam pulvinar vel. Mauris gravida arcu quis dapibus molestie.\r\n\r\nDuis nec orci eget libero consectetur feugiat et vitae diam. Sed porta egestas metus aliquam vehicula. Aliquam ornare condimentum arcu et volutpat. Ut ac diam vel arcu iaculis suscipit.', 1),
(2, 'Шаг 2', 'Aliquam et venenatis arcu, ac dictum felis. Nulla sapien dolor, tempor sodales mauris et, ultrices tristique odio. Vestibulum ac enim in urna dignissim pharetra. Sed pulvinar dolor ut ligula mattis blandit. Maecenas venenatis vehicula venenatis. Aliquam euismod orci elit, id placerat quam pulvinar vel. Mauris gravida arcu quis dapibus molestie.\r\n\r\nDuis nec orci eget libero consectetur feugiat et vitae diam. Sed porta egestas metus aliquam vehicula. Aliquam ornare condimentum arcu et volutpat. Ut ac diam vel arcu iaculis suscipit.', 1),
(3, 'Шаг 3', 'Aliquam et venenatis arcu, ac dictum felis. Nulla sapien dolor, tempor sodales mauris et, ultrices tristique odio. Vestibulum ac enim in urna dignissim pharetra. Sed pulvinar dolor ut ligula mattis blandit. Maecenas venenatis vehicula venenatis. Aliquam euismod orci elit, id placerat quam pulvinar vel. Mauris gravida arcu quis dapibus molestie.\r\n\r\nDuis nec orci eget libero consectetur feugiat et vitae diam. Sed porta egestas metus aliquam vehicula. Aliquam ornare condimentum arcu et volutpat. Ut ac diam vel arcu iaculis suscipit.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_servicestepimage`
--

CREATE TABLE IF NOT EXISTS `core_servicestepimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_step_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_servicestepi_service_id_62fc2e4389f9cf5f_fk_core_service_id` (`service_id`),
  KEY `core_servicestepimage_646862b6` (`service_step_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `core_servicestepimage`
--

INSERT INTO `core_servicestepimage` (`id`, `image`, `service_id`, `service_step_id`) VALUES
(1, 'service/services_image1.jpg', 1, 1),
(2, 'service/services_image2.jpg', 1, 2),
(3, 'service/services_image3.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-04-06 10:48:08', '1', 'Главная', 1, '', 7, 1),
(2, '2015-04-06 10:48:35', '2', 'Статьи', 1, '', 7, 1),
(3, '2015-04-06 10:48:46', '3', 'Услуги', 1, '', 7, 1),
(4, '2015-04-06 10:48:59', '4', 'О нас', 1, '', 7, 1),
(5, '2015-04-06 10:49:16', '5', 'Контакты', 1, '', 7, 1),
(6, '2015-04-06 10:49:48', '6', 'Модульная ремонт', 1, '', 7, 1),
(7, '2015-04-06 10:50:10', '7', 'Еще ремонт', 1, '', 7, 1),
(8, '2015-04-06 10:57:16', '1', 'Модульный ремонт', 1, '', 12, 1),
(9, '2015-04-06 10:58:58', '1', 'Модульный ремонт', 2, 'Added service step image "ServiceStepImage object". Added service step image "ServiceStepImage object". Added service step image "ServiceStepImage object".', 12, 1),
(10, '2015-04-06 10:59:46', '1', 'Модульный ремонт', 2, 'Changed main_check.', 12, 1),
(11, '2015-04-06 11:30:54', '1', 'test', 1, '', 10, 1),
(12, '2015-04-06 17:26:08', '2', 'Простой ремонт с применением пайки iPhone', 1, '', 12, 1),
(13, '2015-04-06 17:26:50', '2', 'Простой ремонт с применением пайки iPhone', 2, 'No fields changed.', 12, 1),
(14, '2015-04-06 17:27:27', '3', 'Сложный ремонт с применением пайки iPhone', 1, '', 12, 1),
(15, '2015-04-06 17:28:10', '4', 'Чистка после попадания влаги, устранение коррозии iPhone ', 1, '', 12, 1),
(16, '2015-04-06 17:28:45', '5', 'Восстановление программного обеспечения (прошивка) iPhone', 1, '', 12, 1),
(17, '2015-04-06 17:34:26', '6', 'Замена аккумуляторной батареи iPhone', 1, '', 12, 1),
(18, '2015-04-06 19:57:45', '1', 'maintree', 1, '', 17, 1),
(19, '2015-04-06 19:58:51', '1', 'Главная', 1, '', 18, 1),
(20, '2015-04-06 19:59:52', '2', 'Статья ', 1, '', 18, 1),
(21, '2015-04-06 20:00:42', '3', 'Услуги ', 1, '', 18, 1),
(22, '2015-04-06 20:01:13', '4', 'О нас', 1, '', 18, 1),
(23, '2015-04-06 20:01:35', '5', 'Контакты', 1, '', 18, 1),
(24, '2015-04-06 20:04:12', '6', 'Модульный ремонт', 1, '', 18, 1),
(25, '2015-04-06 20:06:28', '7', 'Тест', 1, '', 18, 1),
(26, '2015-04-06 21:53:45', '8', 'Тест 2', 1, '', 18, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'core', 'article'),
(11, 'core', 'articleimage'),
(15, 'core', 'faq'),
(7, 'core', 'menu'),
(8, 'core', 'page'),
(9, 'core', 'pageimage'),
(16, 'core', 'review'),
(12, 'core', 'service'),
(13, 'core', 'servicestep'),
(14, 'core', 'servicestepimage'),
(6, 'sessions', 'session'),
(17, 'sitetree', 'tree'),
(18, 'sitetree', 'treeitem');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-04-06 09:22:18'),
(2, 'auth', '0001_initial', '2015-04-06 09:22:20'),
(3, 'admin', '0001_initial', '2015-04-06 09:22:20'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-04-06 09:22:21'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-04-06 09:22:21'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-04-06 09:22:21'),
(7, 'auth', '0004_alter_user_username_opts', '2015-04-06 09:22:21'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-04-06 09:22:21'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-04-06 09:22:21'),
(10, 'core', '0001_initial', '2015-04-06 09:22:21'),
(11, 'core', '0002_auto_20150404_1517', '2015-04-06 09:22:23'),
(12, 'core', '0003_menu', '2015-04-06 09:22:24'),
(13, 'core', '0004_service_servicestep_servicestepimage', '2015-04-06 09:22:25'),
(14, 'core', '0005_auto_20150406_0734', '2015-04-06 09:22:25'),
(15, 'core', '0006_auto_20150406_0735', '2015-04-06 09:22:27'),
(16, 'core', '0007_service_main_check', '2015-04-06 09:22:27'),
(17, 'sessions', '0001_initial', '2015-04-06 09:22:28'),
(18, 'core', '0008_auto_20150406_1700', '2015-04-06 19:56:36'),
(19, 'sitetree', '0001_initial', '2015-04-06 19:56:52');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3nd4o2alpykt8figwlcaaxfvnk5uedju', 'Yjg4ZGZmZDRkZTA5OGRlODQ3OWUxYmI4MzA4ZTliOWM5MGJmZTI1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzOThhM2NkMjg2NTkwMzdmYmY0MjNjYjA2NTNlMGU0NzAyMWJjZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-20 10:47:30');

-- --------------------------------------------------------

--
-- Структура таблицы `sitetree_tree`
--

CREATE TABLE IF NOT EXISTS `sitetree_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sitetree_tree`
--

INSERT INTO `sitetree_tree` (`id`, `title`, `alias`) VALUES
(1, 'Структура', 'maintree');

-- --------------------------------------------------------

--
-- Структура таблицы `sitetree_treeitem`
--

CREATE TABLE IF NOT EXISTS `sitetree_treeitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `hint` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `urlaspattern` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `alias` varchar(80) DEFAULT NULL,
  `description` longtext NOT NULL,
  `inmenu` tinyint(1) NOT NULL,
  `inbreadcrumbs` tinyint(1) NOT NULL,
  `insitetree` tinyint(1) NOT NULL,
  `access_loggedin` tinyint(1) NOT NULL,
  `access_guest` tinyint(1) NOT NULL,
  `access_restricted` tinyint(1) NOT NULL,
  `access_perm_type` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `tree_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sitetree_treeitem_tree_id_3a9ea9d515363010_uniq` (`tree_id`,`alias`),
  KEY `sitetree_treei_parent_id_4d1165c7d24e514_fk_sitetree_treeitem_id` (`parent_id`),
  KEY `sitetree_treeitem_572d4e42` (`url`),
  KEY `sitetree_treeitem_daef6449` (`urlaspattern`),
  KEY `sitetree_treeitem_662f707d` (`hidden`),
  KEY `sitetree_treeitem_724874d1` (`alias`),
  KEY `sitetree_treeitem_5ea60347` (`inmenu`),
  KEY `sitetree_treeitem_a623d47f` (`inbreadcrumbs`),
  KEY `sitetree_treeitem_0d286676` (`insitetree`),
  KEY `sitetree_treeitem_070ee996` (`access_loggedin`),
  KEY `sitetree_treeitem_a0d0c0e2` (`access_guest`),
  KEY `sitetree_treeitem_dd0f9f4f` (`access_restricted`),
  KEY `sitetree_treeitem_a73f1f77` (`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sitetree_treeitem`
--

INSERT INTO `sitetree_treeitem` (`id`, `title`, `hint`, `url`, `urlaspattern`, `hidden`, `alias`, `description`, `inmenu`, `inbreadcrumbs`, `insitetree`, `access_loggedin`, `access_guest`, `access_restricted`, `access_perm_type`, `sort_order`, `parent_id`, `tree_id`) VALUES
(1, 'Главная', '', '/', 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 1, NULL, 1),
(2, 'Статья ', '', '/articles', 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 2, NULL, 1),
(3, 'Услуги ', '', '/services', 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 3, NULL, 1),
(4, 'О нас', '', '/about', 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 4, NULL, 1),
(5, 'Контакты', '', '/contacts', 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 5, NULL, 1),
(6, 'Модульный ремонт', '', 'serviceView modulnyj-remont', 1, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 6, 3, 1),
(7, 'Тест', '', 'articleView test', 1, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 7, 2, 1),
(8, 'Тест 2', '', '#', 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, 1, 8, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sitetree_treeitem_access_permissions`
--

CREATE TABLE IF NOT EXISTS `sitetree_treeitem_access_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treeitem_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treeitem_id` (`treeitem_id`,`permission_id`),
  KEY `sitetree_tr_permission_id_3f014ac8a2196abe_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `core_articleimage`
--
ALTER TABLE `core_articleimage`
  ADD CONSTRAINT `core_articleimage_article_id_4e4e14e196c46a93_fk_core_article_id` FOREIGN KEY (`article_id`) REFERENCES `core_article` (`id`);

--
-- Ограничения внешнего ключа таблицы `core_menu`
--
ALTER TABLE `core_menu`
  ADD CONSTRAINT `core_menu_parent_id_19d559fe8a056a84_fk_core_menu_id` FOREIGN KEY (`parent_id`) REFERENCES `core_menu` (`id`);

--
-- Ограничения внешнего ключа таблицы `core_pageimage`
--
ALTER TABLE `core_pageimage`
  ADD CONSTRAINT `core_pageimage_page_id_3b72c405716fbf1f_fk_core_page_id` FOREIGN KEY (`page_id`) REFERENCES `core_page` (`id`);

--
-- Ограничения внешнего ключа таблицы `core_servicestep`
--
ALTER TABLE `core_servicestep`
  ADD CONSTRAINT `core_servicestep_service_id_3ca0e4c764e36885_fk_core_service_id` FOREIGN KEY (`service_id`) REFERENCES `core_service` (`id`);

--
-- Ограничения внешнего ключа таблицы `core_servicestepimage`
--
ALTER TABLE `core_servicestepimage`
  ADD CONSTRAINT `core_ser_service_step_id_1f92ae87d7c5101b_fk_core_servicestep_id` FOREIGN KEY (`service_step_id`) REFERENCES `core_servicestep` (`id`),
  ADD CONSTRAINT `core_servicestepi_service_id_62fc2e4389f9cf5f_fk_core_service_id` FOREIGN KEY (`service_id`) REFERENCES `core_service` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `sitetree_treeitem`
--
ALTER TABLE `sitetree_treeitem`
  ADD CONSTRAINT `sitetree_treeitem_tree_id_5c1aebcf6ab615ce_fk_sitetree_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `sitetree_tree` (`id`),
  ADD CONSTRAINT `sitetree_treei_parent_id_4d1165c7d24e514_fk_sitetree_treeitem_id` FOREIGN KEY (`parent_id`) REFERENCES `sitetree_treeitem` (`id`);

--
-- Ограничения внешнего ключа таблицы `sitetree_treeitem_access_permissions`
--
ALTER TABLE `sitetree_treeitem_access_permissions`
  ADD CONSTRAINT `sitetree_tr_permission_id_3f014ac8a2196abe_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `sitetree_tre_treeitem_id_e667279fcf52a20_fk_sitetree_treeitem_id` FOREIGN KEY (`treeitem_id`) REFERENCES `sitetree_treeitem` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
