/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50614
 Source Host           : localhost
 Source Database       : idoctor

 Target Server Type    : MySQL
 Target Server Version : 50614
 File Encoding         : utf-8

 Date: 04/07/2015 04:27:26 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `auth_permission`
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry'), ('2', 'Can change log entry', '1', 'change_logentry'), ('3', 'Can delete log entry', '1', 'delete_logentry'), ('4', 'Can add permission', '2', 'add_permission'), ('5', 'Can change permission', '2', 'change_permission'), ('6', 'Can delete permission', '2', 'delete_permission'), ('7', 'Can add group', '3', 'add_group'), ('8', 'Can change group', '3', 'change_group'), ('9', 'Can delete group', '3', 'delete_group'), ('10', 'Can add user', '4', 'add_user'), ('11', 'Can change user', '4', 'change_user'), ('12', 'Can delete user', '4', 'delete_user'), ('13', 'Can add content type', '5', 'add_contenttype'), ('14', 'Can change content type', '5', 'change_contenttype'), ('15', 'Can delete content type', '5', 'delete_contenttype'), ('16', 'Can add session', '6', 'add_session'), ('17', 'Can change session', '6', 'change_session'), ('18', 'Can delete session', '6', 'delete_session'), ('19', 'Can add page', '7', 'add_page'), ('20', 'Can change page', '7', 'change_page'), ('21', 'Can delete page', '7', 'delete_page'), ('22', 'Can add page image', '8', 'add_pageimage'), ('23', 'Can change page image', '8', 'change_pageimage'), ('24', 'Can delete page image', '8', 'delete_pageimage'), ('25', 'Can add article', '9', 'add_article'), ('26', 'Can change article', '9', 'change_article'), ('27', 'Can delete article', '9', 'delete_article'), ('28', 'Can add article image', '10', 'add_articleimage'), ('29', 'Can change article image', '10', 'change_articleimage'), ('30', 'Can delete article image', '10', 'delete_articleimage'), ('31', 'Can add faq', '11', 'add_faq'), ('32', 'Can change faq', '11', 'change_faq'), ('33', 'Can delete faq', '11', 'delete_faq'), ('34', 'Can add review', '12', 'add_review'), ('35', 'Can change review', '12', 'change_review'), ('36', 'Can delete review', '12', 'delete_review'), ('37', 'Can add menu', '13', 'add_menu'), ('38', 'Can change menu', '13', 'change_menu'), ('39', 'Can delete menu', '13', 'delete_menu'), ('40', 'Can add service', '14', 'add_service'), ('41', 'Can change service', '14', 'change_service'), ('42', 'Can delete service', '14', 'delete_service'), ('43', 'Can add service step', '15', 'add_servicestep'), ('44', 'Can change service step', '15', 'change_servicestep'), ('45', 'Can delete service step', '15', 'delete_servicestep'), ('46', 'Can add service step image', '16', 'add_servicestepimage'), ('47', 'Can change service step image', '16', 'change_servicestepimage'), ('48', 'Can delete service step image', '16', 'delete_servicestepimage'), ('49', 'Can add Site Tree', '17', 'add_tree'), ('50', 'Can change Site Tree', '17', 'change_tree'), ('51', 'Can delete Site Tree', '17', 'delete_tree'), ('52', 'Can add Site Tree Item', '18', 'add_treeitem'), ('53', 'Can change Site Tree Item', '18', 'change_treeitem'), ('54', 'Can delete Site Tree Item', '18', 'delete_treeitem');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `auth_user`
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$20000$3PBlm5ltqG87$jL0WtbUGVSuTlvDr0uJUQCne+7fmncBYf0QgzIa5XZA=', '2015-04-06 18:17:27.468772', '1', 'admin', '', '', 'greenteamer@bk.ru', '1', '1', '2015-04-04 08:15:55.255933');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `core_article`
-- ----------------------------
DROP TABLE IF EXISTS `core_article`;
CREATE TABLE `core_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_article`
-- ----------------------------
BEGIN;
INSERT INTO `core_article` VALUES ('1', 'В этом году Apple выпустит новую модель iMac с разрешением дисплея 8K', 'v-etom-godu-apple-vypustit-novuyu-model-imac-s-raz', 'iMac 8K — будущая новинка Apple, запланированная к выходу в конце 2015 года, об этом заявили представители компании LG Display, которая будет производить дисплейные панели для новых моноблоков. В официальном заявлении LG Display нет никаких намеков — об iMac 8K корейцы говорят напрямую, предвкушая появление столь грандиозного устройства на рынке.\r\n\r\nПервым делом хотим отметить — информацией об iMac 8K делится компания LG Display, а не Apple, поэтому на данный момент подтвержденными эти слухи считать нельзя. В Купертино действительно могут готовить нечто столь же грандиозное, но не факт, что новинка, а именно iMac с разрешением дисплея 8K, будет анонсирована в этом году.\r\n\r\nПосмотрим немного на техническую сторону вопроса. Экраны с разрешением 8K имеют разрешение 7680×4320 пикселей и это значительно больше, чем у тех же 4K-дисплеев, установленных в последних моноблоках Apple. Для сравнения, разрешение iMac с дисплеем Retina 5K составляет 5120×2880 пикселей.\r\n\r\nГлядя на такое серьезное превосходство невольно задумываешься о цене. Стоимость последних iMac с дисплеем Retina 5K сложно назвать маленькой — в базовой комплектации моноблок оценивается в 189 990 рублей. Насколько дороже его окажется iMac с дисплеем 8K? Ответ на этот вопрос сейчас не в состоянии дать даже самые авторитетные аналитики.', 'pages/controles-apple-tv-777x437.jpg'), ('2', 'Apple выпустила четыре видеролика об Apple Watch', 'apple-vypustila-chetyre-viderolika-ob-apple-watch', 'До старта продаж Apple Watch остается всего три недели — все это время компания Apple будет активно готовиться к долгожданному событию и стараться заинтересовать в покупке как можно больше людей. Желание рассказать о преимуществах Apple Watch побудило компанию выпустить четыре информативных видеоролика, показывающих возможности новинки — все их прямо сейчас можно посмотреть на официальном YouTube-канале Apple.', 'pages/maxresdefault.jpg'), ('3', 'Apple TV четвертого поколения не будет поддерживать 4K-видео', 'apple-tv-chetvertogo-pokoleniya-ne-budet-podderzhi', '«Время 4K еще не пришло» — цитирует BuzzFeed слова источника из компании Apple. И действительно, только несколько контент-провайдеров начали переходить на формат 4K, да и те, делают это лишь в тестовом режиме. Проблем с трансляцией 4K-контента пока еще очень много — их стоимость значительно выше обычных трансляций, а необходимая пропускная способность находится на уровне в четыре раза выше, чем у формата 1080p. Другими словами — к 4K-видео еще не готовы ни пользователи, ни провайдеры контента, а значит и выпускать решение с поддержкой высококачественного видео смысла нет.', 'pages/Apple-Watch-Edition.jpg'), ('4', 'Продвижение в строительстве нового кампуса Apple засняли с высоты птичьего полета', 'prodvizhenie-v-stroitelstve-novogo-kampusa-apple-z', 'Не имеющий аналогов в мире, новый кампус компании Apple Campus 2, продолжает активно строиться. Следить за ходом постройки грандиозного здания мы можем благодаря местным блогерам, которые время от времени отправляют снабженные камерами дроны, для того чтобы с высоты птичьего полета запечатлеть произошедшие изменения. Свежий ролик, показывающий прогресс строителей, недавно опубликовал пользователь с ником MyithZ.', 'pages/Apple-Campus-2-by-Foster-Partners-005.jpg'), ('5', 'Apple освежит внешний вид магазинов Apple Store «живыми» витринами', 'apple-osvezhit-vneshnij-vid-magazinov-apple-store-', 'С 10 апреля все желающие смогут оформить предварительный заказ на Apple Watch, а также прийти в Apple Store и подержать «умные часы» в руках. Для посетителей своих фирменных магазинов компания Apple готовит несколько оригинальных решений, которые будут способствовать повышению интереса потенциальных покупателей к новинке.', 'pages/4k-8k-uhdtv-uhd.jpg'), ('6', 'Infinit позволит быстро обмениваться файлами между OS X, iOS, Windows и Android', 'infinit-pozvolit-bystro-obmenivatsya-fajlami-mezhd', 'Infinit решил посоперничать с такими популярными сервисами как AirDrop и Pushbullet.\r\n\r\nВсе мы знаем, что такое AirDrop, хотя и у него не мало недостатков. AirDrop позволяет передавать файлы между OS X и iOS устройствами в считанные клики. Это удобно хотя непонятно зачем нужно для этого включать Bluetooth, почему иногда устройства категорически не хотят дружить друг с другом, да и хочется также передавать файлы на другие устройства с другими операционными системами', 'pages/blog_single1.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `core_articleimage`
-- ----------------------------
DROP TABLE IF EXISTS `core_articleimage`;
CREATE TABLE `core_articleimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_articleimage_article_id_4e4e14e196c46a93_fk_core_article_id` (`article_id`),
  CONSTRAINT `core_articleimage_article_id_4e4e14e196c46a93_fk_core_article_id` FOREIGN KEY (`article_id`) REFERENCES `core_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_articleimage`
-- ----------------------------
BEGIN;
INSERT INTO `core_articleimage` VALUES ('1', 'articles/iMac-Retina.jpg', '1'), ('2', 'articles/apple-corp.jpg', '1'), ('3', 'articles/Apple-Watch-Edition.jpg', '1'), ('4', 'articles/Screen-Shot-2015-04-05-at-1.15.58-PM.png', '2'), ('5', 'articles/controles-apple-tv-777x437.jpg', '3'), ('6', 'articles/Apple-Campus-2-by-Foster-Partners-005.jpg', '4'), ('7', 'articles/Apple-Watch-Edition_VgoEDHz.jpg', '5'), ('8', 'articles/infinit-1.png', '6');
COMMIT;

-- ----------------------------
--  Table structure for `core_faq`
-- ----------------------------
DROP TABLE IF EXISTS `core_faq`;
CREATE TABLE `core_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(240) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `core_menu`
-- ----------------------------
DROP TABLE IF EXISTS `core_menu`;
CREATE TABLE `core_menu` (
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
  KEY `core_menu_6be37982` (`parent_id`),
  CONSTRAINT `core_menu_parent_id_19d559fe8a056a84_fk_core_menu_id` FOREIGN KEY (`parent_id`) REFERENCES `core_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_menu`
-- ----------------------------
BEGIN;
INSERT INTO `core_menu` VALUES ('1', 'Главная', 'home', '1', '2', '2', '0', null), ('2', 'Статьи', 'articles', '1', '4', '4', '0', null), ('3', 'Услуги', 'services', '1', '6', '5', '0', null), ('4', 'О нас', 'about', '1', '2', '6', '0', null), ('5', 'Контакты', 'contacts', '1', '2', '7', '0', null), ('6', 'faq', 'faq', '2', '3', '5', '1', '3'), ('7', 'Замена корпуса', 'zamena-korpusa', '4', '5', '5', '1', '3'), ('8', 'Новый iPhone 6 в продаже', 'new-iphone6-v-prodaje', '2', '3', '4', '1', '2');
COMMIT;

-- ----------------------------
--  Table structure for `core_page`
-- ----------------------------
DROP TABLE IF EXISTS `core_page`;
CREATE TABLE `core_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_page`
-- ----------------------------
BEGIN;
INSERT INTO `core_page` VALUES ('1', 'О нас', 'Мы дорожим своим именем и предпочитаем всегда идти навстречу клиенту. Мы открыты для отзывов и общения во всех социальных сетях, в чём Вы можете убедиться, почитав отзывы на независимых ресурсах. Поэтому весь ремонт продукции Apple мы стараемся выполнить таким образом, чтобы Вы остались довольны результатом. Всегда рады услышать любое мнение о нас, включая конструктивную критику)', 'pages/design_details_bottom_xlarge_2x.jpg', 'about');
COMMIT;

-- ----------------------------
--  Table structure for `core_pageimage`
-- ----------------------------
DROP TABLE IF EXISTS `core_pageimage`;
CREATE TABLE `core_pageimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_pageimage_1a63c800` (`page_id`),
  CONSTRAINT `core_pageimage_page_id_3b72c405716fbf1f_fk_core_page_id` FOREIGN KEY (`page_id`) REFERENCES `core_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_pageimage`
-- ----------------------------
BEGIN;
INSERT INTO `core_pageimage` VALUES ('1', 'pages/iP6-1_medium.jpg', '1'), ('2', 'pages/iP6-2_medium.jpg', '1'), ('3', 'pages/touch62.jpg', '1');
COMMIT;

-- ----------------------------
--  Table structure for `core_review`
-- ----------------------------
DROP TABLE IF EXISTS `core_review`;
CREATE TABLE `core_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_review`
-- ----------------------------
BEGIN;
INSERT INTO `core_review` VALUES ('1', 'Марина Александровна', 'Очень рада что мой любимый телефон так быстро отремонтировали! Спасибо ребятам их iDoctor , очень довольна', 'reviews/gorodova.jpg'), ('2', 'Виктор Петрович', 'Очень рада что мой любимый телефон так быстро отремонтировали! Спасибо ребятам их iDoctor , очень довольна', 'reviews/maksimov.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `core_service`
-- ----------------------------
DROP TABLE IF EXISTS `core_service`;
CREATE TABLE `core_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `main_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_service`
-- ----------------------------
BEGIN;
INSERT INTO `core_service` VALUES ('1', 'Модульный ремонт iPhone (замена)', 'modulnyj-remont-iphone-zamena', 'Замена кнопок, разъемов, динамиков, шлейфов', 'service/modul.png', '1');
COMMIT;

-- ----------------------------
--  Table structure for `core_servicestep`
-- ----------------------------
DROP TABLE IF EXISTS `core_servicestep`;
CREATE TABLE `core_servicestep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(244) NOT NULL,
  `description` longtext NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_servicestep_service_id_3ca0e4c764e36885_fk_core_service_id` (`service_id`),
  CONSTRAINT `core_servicestep_service_id_3ca0e4c764e36885_fk_core_service_id` FOREIGN KEY (`service_id`) REFERENCES `core_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_servicestep`
-- ----------------------------
BEGIN;
INSERT INTO `core_servicestep` VALUES ('1', 'Разбор устройства', 'Aliquam et venenatis arcu, ac dictum felis. Nulla sapien dolor, tempor sodales mauris et, ultrices tristique odio. Vestibulum ac enim in urna dignissim pharetra. Sed pulvinar dolor ut ligula mattis blandit. Maecenas venenatis vehicula venenatis. Aliquam euismod orci elit, id placerat quam pulvinar vel. Mauris gravida arcu quis dapibus molestie.\r\n\r\nDuis nec orci eget libero consectetur feugiat et vitae diam. Sed porta egestas metus aliquam vehicula. Aliquam ornare condimentum arcu et volutpat. Ut ac diam vel arcu iaculis suscipit.', '1'), ('2', 'Learn Anything Online', 'Aliquam et venenatis arcu, ac dictum felis. Nulla sapien dolor, tempor sodales mauris et, ultrices tristique odio. Vestibulum ac enim in urna dignissim pharetra. Sed pulvinar dolor ut ligula mattis blandit. Maecenas venenatis vehicula venenatis. Aliquam euismod orci elit, id placerat quam pulvinar vel. Mauris gravida arcu quis dapibus molestie.\r\n\r\nDuis nec orci eget libero consectetur feugiat et vitae diam. Sed porta egestas metus aliquam vehicula. Aliquam ornare condimentum arcu et volutpat. Ut ac diam vel arcu iaculis suscipit.\r\n\r\nAnimating the lower and upper body, arms, and legs\r\nAdding weight\r\nAdjusting timing and gait\r\nStarting and stopping walks\r\nAdding personality\r\nAnimating the lower and upper body, arms, and legs\r\nAdding weight\r\nAdjusting timing and gait', '1'), ('3', 'Learn Anything Online', 'Aliquam et venenatis arcu, ac dictum felis. Nulla sapien dolor, tempor sodales mauris et, ultrices tristique odio. Vestibulum ac enim in urna dignissim pharetra. Sed pulvinar dolor ut ligula mattis blandit. Maecenas venenatis vehicula venenatis. Aliquam euismod orci elit, id placerat quam pulvinar vel. Mauris gravida arcu quis dapibus molestie.\r\n\r\nDuis nec orci eget libero consectetur feugiat et vitae diam. Sed porta egestas metus aliquam vehicula. Aliquam ornare condimentum arcu et volutpat. Ut ac diam vel arcu iaculis suscipit.', '1');
COMMIT;

-- ----------------------------
--  Table structure for `core_servicestepimage`
-- ----------------------------
DROP TABLE IF EXISTS `core_servicestepimage`;
CREATE TABLE `core_servicestepimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_step_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_servicestepi_service_id_62fc2e4389f9cf5f_fk_core_service_id` (`service_id`),
  KEY `core_servicestepimage_646862b6` (`service_step_id`),
  CONSTRAINT `core_ser_service_step_id_1f92ae87d7c5101b_fk_core_servicestep_id` FOREIGN KEY (`service_step_id`) REFERENCES `core_servicestep` (`id`),
  CONSTRAINT `core_servicestepi_service_id_62fc2e4389f9cf5f_fk_core_service_id` FOREIGN KEY (`service_id`) REFERENCES `core_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `core_servicestepimage`
-- ----------------------------
BEGIN;
INSERT INTO `core_servicestepimage` VALUES ('1', 'service/cource1.jpg', '1', '1'), ('2', 'service/cource2.jpg', '1', '2'), ('3', 'service/cource3.jpg', '1', '3');
COMMIT;

-- ----------------------------
--  Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_admin_log`
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES ('1', '2015-04-04 08:38:28.954102', '1', 'test', '1', '', '7', '1'), ('2', '2015-04-04 15:40:44.249921', '1', 'О нас', '2', 'Changed name, slug, description and image. Added page image \"PageImage object\". Added page image \"PageImage object\". Added page image \"PageImage object\".', '7', '1'), ('3', '2015-04-04 18:41:01.689334', '1', 'Главная', '1', '', '13', '1'), ('4', '2015-04-04 18:41:46.107158', '2', 'Статьи', '1', '', '13', '1'), ('5', '2015-04-04 18:42:06.007816', '3', 'Услуги', '1', '', '13', '1'), ('6', '2015-04-04 18:42:26.187081', '4', 'О нас', '1', '', '13', '1'), ('7', '2015-04-04 18:42:34.879515', '5', 'Контакты', '1', '', '13', '1'), ('8', '2015-04-04 18:42:50.746683', '6', 'faq', '1', '', '13', '1'), ('9', '2015-04-04 18:43:24.917012', '7', 'Ремонт смартфонов', '1', '', '13', '1'), ('10', '2015-04-04 18:43:42.458649', '8', 'Ремонт планшетов', '1', '', '13', '1'), ('11', '2015-04-04 19:33:04.971141', '9', 'Быстрый ремонт кнопки', '1', '', '13', '1'), ('12', '2015-04-06 06:29:57.609214', '1', 'Главная', '1', '', '13', '1'), ('13', '2015-04-06 06:31:50.780665', '2', 'Статьи', '1', '', '13', '1'), ('14', '2015-04-06 06:32:00.938102', '3', 'Услуги', '1', '', '13', '1'), ('15', '2015-04-06 06:32:09.728018', '4', 'О нас', '1', '', '13', '1'), ('16', '2015-04-06 06:32:29.106608', '5', 'Контакты', '1', '', '13', '1'), ('17', '2015-04-06 06:34:45.921626', '6', 'faq', '1', '', '13', '1'), ('18', '2015-04-06 06:35:30.665821', '7', 'Замена корпуса', '1', '', '13', '1'), ('19', '2015-04-06 06:38:02.802315', '8', 'Новый iPhone 6 в продаже', '1', '', '13', '1'), ('20', '2015-04-06 07:57:54.608698', '1', 'Модульный ремонт iPhone (замена)', '1', '', '14', '1'), ('21', '2015-04-06 07:58:51.531668', '1', 'Модульный ремонт iPhone (замена)', '2', 'Added service step image \"ServiceStepImage object\". Added service step image \"ServiceStepImage object\". Added service step image \"ServiceStepImage object\".', '14', '1'), ('22', '2015-04-06 18:17:48.726857', '1', '/', '1', '', '17', '1'), ('23', '2015-04-06 18:18:00.504707', '2', 'Articles', '1', '', '17', '1'), ('24', '2015-04-06 18:18:17.528430', '3', 'services', '1', '', '17', '1'), ('25', '2015-04-06 18:18:26.065916', '2', 'articles', '2', 'Changed alias.', '17', '1'), ('26', '2015-04-06 18:18:37.468974', '4', '/about', '1', '', '17', '1'), ('27', '2015-04-06 18:18:52.184498', '5', '/contacts', '1', '', '17', '1'), ('28', '2015-04-06 18:18:57.382508', '2', '/articles', '2', 'Changed alias.', '17', '1'), ('29', '2015-04-06 18:19:01.726317', '3', '/services', '2', 'Changed alias.', '17', '1'), ('30', '2015-04-06 18:19:46.234318', '6', '/article/modulni-remont', '1', '', '17', '1'), ('31', '2015-04-06 18:20:46.713041', '1', '/', '3', '', '17', '1'), ('32', '2015-04-06 18:20:50.705152', '5', '/contacts', '3', '', '17', '1'), ('33', '2015-04-06 18:20:54.248750', '6', '/article/modulni-remont', '3', '', '17', '1'), ('34', '2015-04-06 18:20:58.374349', '4', '/about', '3', '', '17', '1'), ('35', '2015-04-06 18:21:03.485250', '2', '/articles', '3', '', '17', '1'), ('36', '2015-04-06 18:21:07.421468', '3', '/services', '3', '', '17', '1'), ('37', '2015-04-06 18:21:21.128320', '7', 'structure', '1', '', '17', '1'), ('38', '2015-04-06 18:21:38.337625', '1', 'Главная', '1', '', '18', '1'), ('39', '2015-04-06 18:21:50.815690', '2', 'Статьи', '1', '', '18', '1'), ('40', '2015-04-06 18:22:01.615384', '3', 'Услуги', '1', '', '18', '1'), ('41', '2015-04-06 18:22:11.776963', '4', 'О нас', '1', '', '18', '1'), ('42', '2015-04-06 18:22:21.415080', '5', 'Контакты', '1', '', '18', '1'), ('43', '2015-04-06 18:23:05.957724', '6', 'Модульный ремонт (замена)', '1', '', '18', '1'), ('44', '2015-04-06 18:23:11.984446', '6', 'Модульный ремонт (замена)', '2', 'Changed parent.', '18', '1'), ('45', '2015-04-06 18:23:17.388062', '7', 'structure', '2', 'No fields changed.', '17', '1'), ('46', '2015-04-06 18:30:56.259310', '7', 'Ремонт с применением пайки', '1', '', '18', '1'), ('47', '2015-04-06 18:31:04.400125', '6', 'Модульный ремонт (замена)', '2', 'Changed parent and url.', '18', '1'), ('48', '2015-04-06 18:31:42.635604', '8', 'Выход нового iPhone 7', '1', '', '18', '1'), ('49', '2015-04-06 18:31:48.284909', '8', 'Выход нового iPhone 7', '2', 'Changed parent.', '18', '1'), ('50', '2015-04-06 18:34:50.261496', '7', 'sitetree', '2', 'Changed alias.', '17', '1'), ('51', '2015-04-06 18:36:38.105561', '7', 'maintree', '2', 'Changed alias.', '17', '1'), ('52', '2015-04-06 18:48:48.410372', '2', 'Статьи', '2', 'Changed url and urlaspattern.', '18', '1'), ('53', '2015-04-06 18:50:39.158360', '6', 'Модульный ремонт (замена)', '2', 'Changed parent, url and urlaspattern.', '18', '1'), ('54', '2015-04-06 19:43:34.638715', '1', 'Марина Александровна', '1', '', '12', '1'), ('55', '2015-04-06 19:43:46.203358', '2', 'Виктор Петрович', '1', '', '12', '1'), ('56', '2015-04-06 20:17:28.702310', '3', 'Услуги', '2', 'Changed url.', '18', '1'), ('57', '2015-04-06 20:39:43.307495', '1', 'В этом году Apple выпустит новую модель iMac с разрешением дисплея 8K', '1', '', '9', '1'), ('58', '2015-04-06 20:42:29.521448', '2', 'Apple выпустила четыре видеролика об Apple Watch', '1', '', '9', '1'), ('59', '2015-04-06 20:43:43.744803', '3', 'Apple TV четвертого поколения не будет поддерживать 4K-видео', '1', '', '9', '1'), ('60', '2015-04-06 20:45:03.121070', '4', 'Продвижение в строительстве нового кампуса Apple засняли с высоты птичьего полета', '1', '', '9', '1'), ('61', '2015-04-06 20:46:11.324586', '5', 'Apple освежит внешний вид магазинов Apple Store «живыми» витринами', '1', '', '9', '1'), ('62', '2015-04-06 20:48:00.977569', '6', 'Infinit позволит быстро обмениваться файлами между OS X, iOS, Windows и Android', '1', '', '9', '1'), ('63', '2015-04-06 21:03:01.818999', '6', 'Infinit позволит быстро обмениваться файлами между OS X, iOS, Windows и Android', '2', 'Changed image.', '9', '1'), ('64', '2015-04-06 21:03:11.349974', '5', 'Apple освежит внешний вид магазинов Apple Store «живыми» витринами', '2', 'Changed image.', '9', '1'), ('65', '2015-04-06 21:03:19.839842', '4', 'Продвижение в строительстве нового кампуса Apple засняли с высоты птичьего полета', '2', 'Changed image.', '9', '1'), ('66', '2015-04-06 21:03:28.041023', '3', 'Apple TV четвертого поколения не будет поддерживать 4K-видео', '2', 'Changed image.', '9', '1'), ('67', '2015-04-06 21:03:48.717060', '1', 'В этом году Apple выпустит новую модель iMac с разрешением дисплея 8K', '2', 'Changed image.', '9', '1'), ('68', '2015-04-06 21:53:13.021525', '1', '{{ mytitle }}', '2', 'Changed title.', '18', '1'), ('69', '2015-04-06 21:53:23.912531', '1', 'Главная', '2', 'Changed title.', '18', '1'), ('70', '2015-04-06 22:18:40.229238', '6', 'Infinit позволит быстро обмениваться файлами между OS X, iOS, Windows и Android', '2', 'Changed image.', '9', '1');
COMMIT;

-- ----------------------------
--  Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_content_type`
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry'), ('3', 'auth', 'group'), ('2', 'auth', 'permission'), ('4', 'auth', 'user'), ('5', 'contenttypes', 'contenttype'), ('9', 'core', 'article'), ('10', 'core', 'articleimage'), ('11', 'core', 'faq'), ('13', 'core', 'menu'), ('7', 'core', 'page'), ('8', 'core', 'pageimage'), ('12', 'core', 'review'), ('14', 'core', 'service'), ('15', 'core', 'servicestep'), ('16', 'core', 'servicestepimage'), ('6', 'sessions', 'session'), ('17', 'sitetree', 'tree'), ('18', 'sitetree', 'treeitem');
COMMIT;

-- ----------------------------
--  Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_migrations`
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2015-04-04 08:14:40.434071'), ('2', 'auth', '0001_initial', '2015-04-04 08:14:40.890716'), ('3', 'admin', '0001_initial', '2015-04-04 08:14:40.998111'), ('4', 'contenttypes', '0002_remove_content_type_name', '2015-04-04 08:14:41.112069'), ('5', 'auth', '0002_alter_permission_name_max_length', '2015-04-04 08:14:41.156330'), ('6', 'auth', '0003_alter_user_email_max_length', '2015-04-04 08:14:41.195760'), ('7', 'auth', '0004_alter_user_username_opts', '2015-04-04 08:14:41.212256'), ('8', 'auth', '0005_alter_user_last_login_null', '2015-04-04 08:14:41.255816'), ('9', 'auth', '0006_require_contenttypes_0002', '2015-04-04 08:14:41.257764'), ('10', 'sessions', '0001_initial', '2015-04-04 08:14:41.339679'), ('11', 'core', '0001_initial', '2015-04-04 08:36:02.495101'), ('12', 'core', '0002_auto_20150404_1517', '2015-04-04 15:17:57.557446'), ('14', 'core', '0003_menu', '2015-04-06 06:29:14.174271'), ('15', 'core', '0004_service_servicestep_servicestepimage', '2015-04-06 07:26:32.209568'), ('16', 'core', '0005_auto_20150406_0734', '2015-04-06 07:34:05.899211'), ('17', 'core', '0006_auto_20150406_0735', '2015-04-06 07:35:44.850260'), ('18', 'core', '0007_service_main_check', '2015-04-06 07:48:17.336064'), ('19', 'sitetree', '0001_initial', '2015-04-06 18:15:04.790109');
COMMIT;

-- ----------------------------
--  Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_session`
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('3w4ydab73k2s6ppjhfxji3gsl39s4j2v', 'MTMwYThkNDBiMTc5NDg1YTg2NzUyM2NhMWM5MzcwNmJlMjhhZjUxNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjZjcxMmJkNzMyMWFmZjY0YjY3MGNhMzkyMjlhNzNkNzhiOTZmNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-20 06:29:36.752987'), ('a17riqu7oa9enu5756ttyn9lvduizf64', 'MTMwYThkNDBiMTc5NDg1YTg2NzUyM2NhMWM5MzcwNmJlMjhhZjUxNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjZjcxMmJkNzMyMWFmZjY0YjY3MGNhMzkyMjlhNzNkNzhiOTZmNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-20 18:17:27.470667'), ('hjd2h94qegz4vozzqcavqocm371rxv1o', 'MTMwYThkNDBiMTc5NDg1YTg2NzUyM2NhMWM5MzcwNmJlMjhhZjUxNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjZjcxMmJkNzMyMWFmZjY0YjY3MGNhMzkyMjlhNzNkNzhiOTZmNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-18 11:32:16.962600'), ('zyqc67ybifwh3lhoe2fcjtnf7aqt7hek', 'MTMwYThkNDBiMTc5NDg1YTg2NzUyM2NhMWM5MzcwNmJlMjhhZjUxNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjZjcxMmJkNzMyMWFmZjY0YjY3MGNhMzkyMjlhNzNkNzhiOTZmNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-20 13:18:12.853598');
COMMIT;

-- ----------------------------
--  Table structure for `sitetree_tree`
-- ----------------------------
DROP TABLE IF EXISTS `sitetree_tree`;
CREATE TABLE `sitetree_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sitetree_tree`
-- ----------------------------
BEGIN;
INSERT INTO `sitetree_tree` VALUES ('7', 'Структура', 'maintree');
COMMIT;

-- ----------------------------
--  Table structure for `sitetree_treeitem`
-- ----------------------------
DROP TABLE IF EXISTS `sitetree_treeitem`;
CREATE TABLE `sitetree_treeitem` (
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
  KEY `sitetree_treeitem_a73f1f77` (`sort_order`),
  CONSTRAINT `sitetree_treeitem_tree_id_5c1aebcf6ab615ce_fk_sitetree_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `sitetree_tree` (`id`),
  CONSTRAINT `sitetree_treei_parent_id_4d1165c7d24e514_fk_sitetree_treeitem_id` FOREIGN KEY (`parent_id`) REFERENCES `sitetree_treeitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sitetree_treeitem`
-- ----------------------------
BEGIN;
INSERT INTO `sitetree_treeitem` VALUES ('1', 'Главная', '', '/', '0', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '1', null, '7'), ('2', 'Статьи', '', 'articlesView', '1', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '2', null, '7'), ('3', 'Услуги', '', '#', '0', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '3', null, '7'), ('4', 'О нас', '', '/about', '0', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '4', null, '7'), ('5', 'Контакты', '', '/contacts', '0', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '5', null, '7'), ('6', 'Модульный ремонт (замена)', '', 'serviceView modulnyj-remont-iphone-zamena', '1', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '6', '3', '7'), ('7', 'Ремонт с применением пайки', '', '/service/paika', '0', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '7', '3', '7'), ('8', 'Выход нового iPhone 7', '', '/article/new-iphone', '0', '0', null, '', '1', '1', '1', '0', '0', '0', '1', '8', '2', '7');
COMMIT;

-- ----------------------------
--  Table structure for `sitetree_treeitem_access_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `sitetree_treeitem_access_permissions`;
CREATE TABLE `sitetree_treeitem_access_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treeitem_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treeitem_id` (`treeitem_id`,`permission_id`),
  KEY `sitetree_tr_permission_id_3f014ac8a2196abe_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `sitetree_tr_permission_id_3f014ac8a2196abe_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `sitetree_tre_treeitem_id_e667279fcf52a20_fk_sitetree_treeitem_id` FOREIGN KEY (`treeitem_id`) REFERENCES `sitetree_treeitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
