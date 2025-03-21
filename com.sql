/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : com

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2025-02-18 22:15:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 社团', '6', 'add_community');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 社团', '6', 'change_community');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 社团', '6', 'delete_community');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 社团', '6', 'view_community');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 用户信息', '7', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 用户信息', '7', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 用户信息', '7', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 用户信息', '7', 'view_userinfo');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 社团分类', '8', 'add_community_type');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 社团分类', '8', 'change_community_type');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 社团分类', '8', 'delete_community_type');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 社团分类', '8', 'view_community_type');
INSERT INTO `auth_permission` VALUES ('33', 'Can add comment', '9', 'add_comment');
INSERT INTO `auth_permission` VALUES ('34', 'Can change comment', '9', 'change_comment');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete comment', '9', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can view comment', '9', 'view_comment');
INSERT INTO `auth_permission` VALUES ('37', 'Can add com_ shelf', '10', 'add_com_shelf');
INSERT INTO `auth_permission` VALUES ('38', 'Can change com_ shelf', '10', 'change_com_shelf');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete com_ shelf', '10', 'delete_com_shelf');
INSERT INTO `auth_permission` VALUES ('40', 'Can view com_ shelf', '10', 'view_com_shelf');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 申请记录', '11', 'add_apply');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 申请记录', '11', 'change_apply');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 申请记录', '11', 'delete_apply');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 申请记录', '11', 'view_apply');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 申请记录', '12', 'add_active');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 申请记录', '12', 'change_active');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 申请记录', '12', 'delete_active');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 申请记录', '12', 'view_active');

-- ----------------------------
-- Table structure for com_active
-- ----------------------------
DROP TABLE IF EXISTS `com_active`;
CREATE TABLE `com_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `desc` longtext,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `com_active_community_id_3d94e564` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_active
-- ----------------------------
INSERT INTO `com_active` VALUES ('1', '1', '2025-02-24 20:30:22.062431', '2025-02-24 20:30:22.062431', '0', '联欢晚会', '星期六，欢迎新生', '1');
INSERT INTO `com_active` VALUES ('2', '1', '2025-02-24 20:30:22.078118', '2025-02-24 20:30:22.078118', '0', '化妆晚会', '星期五，欢迎新生', '2');
INSERT INTO `com_active` VALUES ('3', '1', '2025-02-24 20:30:22.097631', '2025-02-24 20:30:22.097631', '0', '滑板晚会', '星期一，欢迎新生', '3');
INSERT INTO `com_active` VALUES ('4', '1', '2025-02-24 20:30:22.110889', '2025-02-24 20:30:22.110889', '0', '联欢晚会', '星期六，欢迎新生', '1');
INSERT INTO `com_active` VALUES ('5', '1', '2025-02-24 20:30:22.126526', '2025-02-24 20:30:22.126526', '0', '化妆晚会', '星期五，欢迎新生', '2');
INSERT INTO `com_active` VALUES ('6', '1', '2025-02-24 20:30:22.140045', '2025-02-24 20:30:22.140045', '0', '滑板晚会', '星期一，欢迎新生', '3');
INSERT INTO `com_active` VALUES ('7', '1', '2025-02-24 20:30:22.156002', '2025-02-24 20:30:22.156002', '0', '联欢晚会', '星期六，欢迎新生', '1');
INSERT INTO `com_active` VALUES ('8', '1', '2025-02-24 20:30:22.189200', '2025-02-24 20:30:22.189200', '0', '化妆晚会', '星期五，欢迎新生', '2');
INSERT INTO `com_active` VALUES ('9', '1', '2025-02-24 20:30:22.206463', '2025-02-24 20:30:22.206463', '0', '滑板晚会', '星期一，欢迎新生', '3');

-- ----------------------------
-- Table structure for com_apply
-- ----------------------------
DROP TABLE IF EXISTS `com_apply`;
CREATE TABLE `com_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `userinfo_id` int(11) DEFAULT NULL,
  `apply_type` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `com_apply_community_id_846e725a` (`community_id`),
  KEY `com_apply_userinfo_id_076b2076` (`userinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_apply
-- ----------------------------
INSERT INTO `com_apply` VALUES ('1', '1', '2025-02-24 18:52:19.753934', '2025-02-09 22:00:23.418114', '0', '1', '1', '2');
INSERT INTO `com_apply` VALUES ('2', '1', '2025-02-26 15:54:12.483430', '2025-02-26 16:11:07.086502', '0', '2', '1', '3');
INSERT INTO `com_apply` VALUES ('3', '1', '2025-02-27 17:25:45.458105', '2025-02-27 17:26:17.035157', '0', '1', '3', '2');
INSERT INTO `com_apply` VALUES ('4', '1', '2025-02-09 22:00:06.888442', '2025-02-09 22:00:06.888442', '0', '4', '1', '1');
INSERT INTO `com_apply` VALUES ('5', '1', '2025-02-18 20:41:13.441109', '2025-02-18 20:41:13.441109', '0', '3', '4', '1');

-- ----------------------------
-- Table structure for com_comment
-- ----------------------------
DROP TABLE IF EXISTS `com_comment`;
CREATE TABLE `com_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `comment` varchar(225) DEFAULT NULL,
  `depth` int(10) unsigned NOT NULL,
  `root` int(10) unsigned DEFAULT NULL,
  `community_id` int(11) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `userinfo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `com_comment_community_id_7d732d3a` (`community_id`),
  KEY `com_comment_reply_id_dffdec26` (`reply_id`),
  KEY `com_comment_userinfo_id_37e1f0a0` (`userinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_comment
-- ----------------------------
INSERT INTO `com_comment` VALUES ('1', '1', '2025-02-24 15:14:44.462958', '2025-02-24 15:14:44.462958', '0', '这个社团还可以', '1', null, '1', null, '1');
INSERT INTO `com_comment` VALUES ('2', '0', '2025-02-24 15:14:44.736047', '2025-02-24 20:44:15.741442', '0', '这个社团还可以', '1', null, '1', null, '1');
INSERT INTO `com_comment` VALUES ('3', '1', '2025-02-24 20:44:49.941217', '2025-02-27 18:08:25.061753', '0', '喜欢喜欢', '1', null, '1', null, null);
INSERT INTO `com_comment` VALUES ('4', '1', '2025-02-26 15:53:57.570813', '2025-02-27 18:08:07.132745', '0', '学长学姐都好好哦~', '1', null, '1', null, '1');
INSERT INTO `com_comment` VALUES ('5', '1', '2025-02-27 15:18:15.594047', '2025-02-27 18:07:31.481284', '0', '哈哈哈活动都好好玩', '1', null, '3', null, '1');
INSERT INTO `com_comment` VALUES ('6', '1', '2025-02-18 20:40:53.283366', '2025-02-18 20:40:53.283366', '0', 'ef杀杀人噶啊发展对发单子', '1', null, '2', null, '4');
INSERT INTO `com_comment` VALUES ('7', '1', '2025-02-18 20:41:01.832099', '2025-02-18 20:41:01.832099', '0', '速度发生的萨达大', '1', null, '2', null, '4');

-- ----------------------------
-- Table structure for com_community
-- ----------------------------
DROP TABLE IF EXISTS `com_community`;
CREATE TABLE `com_community` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `com_img` varchar(100) NOT NULL,
  `desc` longtext,
  `hot` double NOT NULL,
  `community_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `com_book_community_type_id_36333e19` (`community_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_community
-- ----------------------------
INSERT INTO `com_community` VALUES ('1', '1', '2025-02-23 20:33:48.552006', '2025-02-18 20:41:41.881283', '0', '羽毛球', 'com/d9f790d0_E803656_ca553247_w0lKYoE.png', '我们不错', '82.53938', '5');
INSERT INTO `com_community` VALUES ('2', '1', '2025-02-23 20:33:48.564974', '2025-02-18 21:46:45.805618', '0', '大学生联欢社', 'com/com.jpg', '我们爱好', '18.08641', '6');
INSERT INTO `com_community` VALUES ('3', '1', '2025-02-23 20:33:48.577894', '2025-02-18 21:42:47.766375', '0', '机器人', 'com/com.jpg', '我们都行', '15.82528', '7');
INSERT INTO `com_community` VALUES ('4', '1', '2025-02-23 20:33:48.587973', '2025-02-18 21:44:44.397654', '0', '足球', 'com/d9f790d0_E803656_ca553247.png', '我们可好11111', '46.10466', '5');

-- ----------------------------
-- Table structure for com_community_type
-- ----------------------------
DROP TABLE IF EXISTS `com_community_type`;
CREATE TABLE `com_community_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_community_type
-- ----------------------------
INSERT INTO `com_community_type` VALUES ('5', '1', '2025-02-23 20:26:25.579570', '2025-02-23 20:26:25.579570', '0', '校级');
INSERT INTO `com_community_type` VALUES ('6', '1', '2025-02-23 20:26:25.596523', '2025-02-23 20:26:25.596523', '0', '院级');
INSERT INTO `com_community_type` VALUES ('7', '1', '2025-02-23 20:26:25.609490', '2025-02-23 20:26:25.609490', '0', '专业级');
INSERT INTO `com_community_type` VALUES ('8', '1', '2025-02-23 20:26:25.673280', '2025-02-18 20:52:44.153394', '0', '业余级');
INSERT INTO `com_community_type` VALUES ('9', '1', '2025-02-23 20:26:25.688241', '2025-02-27 18:05:10.324606', '0', '其它');
INSERT INTO `com_community_type` VALUES ('10', '0', '2025-02-24 21:15:31.373748', '2025-02-24 21:16:07.910034', '0', '世纪');
INSERT INTO `com_community_type` VALUES ('11', '0', '2025-02-18 20:52:37.511157', '2025-02-18 20:52:39.272449', '0', 'jj');

-- ----------------------------
-- Table structure for com_com_shelf
-- ----------------------------
DROP TABLE IF EXISTS `com_com_shelf`;
CREATE TABLE `com_com_shelf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_start` tinyint(1) NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `userinfo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `com_com_shelf_community_id_6528dd8e` (`community_id`),
  KEY `com_com_shelf_userinfo_id_82b81a63` (`userinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_com_shelf
-- ----------------------------
INSERT INTO `com_com_shelf` VALUES ('1', '1', '2025-02-24 15:26:24.788679', '2025-02-26 15:54:04.151111', '0', '1', '1', '1');
INSERT INTO `com_com_shelf` VALUES ('2', '1', '2025-02-24 19:15:46.550891', '2025-02-09 22:00:04.362951', '0', '0', '4', '1');
INSERT INTO `com_com_shelf` VALUES ('3', '1', '2025-02-26 15:54:10.687743', '2025-02-26 15:54:10.842936', '0', '1', '2', '1');
INSERT INTO `com_com_shelf` VALUES ('4', '1', '2025-02-27 15:18:20.683722', '2025-02-27 15:18:44.763863', '0', '0', '3', '1');
INSERT INTO `com_com_shelf` VALUES ('5', '1', '2025-02-27 17:25:43.219907', '2025-02-27 17:25:43.311469', '0', '1', '1', '3');
INSERT INTO `com_com_shelf` VALUES ('6', '1', '2025-02-18 20:41:08.278915', '2025-02-18 20:41:08.281909', '0', '1', '3', '4');

-- ----------------------------
-- Table structure for com_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `com_userinfo`;
CREATE TABLE `com_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` smallint(6) NOT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `addr` longtext,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `com_userinfo_community_id_0a372571` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_userinfo
-- ----------------------------
INSERT INTO `com_userinfo` VALUES ('1', '55e6faac56ac874595b13e61281f02f3', null, '0', '测试1号', '', '', '', '0', '0', '2025-02-23 16:12:05.945945', '1', '19803630852', 'avatar/d_QZ5NSwN.gif', 'xxxxx学院xxxxx专业班级', null);
INSERT INTO `com_userinfo` VALUES ('2', '55e6faac56ac874595b13e61281f02f3', null, '1', 'admin', '', '', '', '0', '1', '2025-02-23 20:19:39.107405', '2', null, 'avatar/avatar.jpg', null, null);
INSERT INTO `com_userinfo` VALUES ('3', '55e6faac56ac874595b13e61281f02f3', null, '0', '张三', '', '', '', '0', '1', '2025-02-27 15:33:31.708252', '1', null, 'avatar/avatar.jpg', null, null);
INSERT INTO `com_userinfo` VALUES ('4', '36ef52f78e0d80846462d415d9384f4e', null, '1', 'aaa', '', '', '', '0', '1', '2025-02-18 20:40:22.010097', '1', null, 'avatar/avatar.jpg', null, null);

-- ----------------------------
-- Table structure for com_userinfo_groups
-- ----------------------------
DROP TABLE IF EXISTS `com_userinfo_groups`;
CREATE TABLE `com_userinfo_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `com_userinfo_groups_userinfo_id_group_id_0a378142_uniq` (`userinfo_id`,`group_id`),
  KEY `com_userinfo_groups_group_id_431a88e9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `com_userinfo_groups_group_id_431a88e9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `com_userinfo_groups_userinfo_id_9fd1625f_fk_com_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `com_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_userinfo_groups
-- ----------------------------

-- ----------------------------
-- Table structure for com_userinfo_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `com_userinfo_user_permissions`;
CREATE TABLE `com_userinfo_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `com_userinfo_user_permis_userinfo_id_permission_i_3dc39d0d_uniq` (`userinfo_id`,`permission_id`),
  KEY `com_userinfo_user_pe_permission_id_25ba3052_fk_auth_perm` (`permission_id`),
  CONSTRAINT `com_userinfo_user_pe_permission_id_25ba3052_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `com_userinfo_user_pe_userinfo_id_1916b919_fk_com_useri` FOREIGN KEY (`userinfo_id`) REFERENCES `com_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of com_userinfo_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_com_userinfo_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_com_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `com_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('12', 'com', 'active');
INSERT INTO `django_content_type` VALUES ('11', 'com', 'apply');
INSERT INTO `django_content_type` VALUES ('9', 'com', 'comment');
INSERT INTO `django_content_type` VALUES ('6', 'com', 'community');
INSERT INTO `django_content_type` VALUES ('8', 'com', 'community_type');
INSERT INTO `django_content_type` VALUES ('10', 'com', 'com_shelf');
INSERT INTO `django_content_type` VALUES ('7', 'com', 'userinfo');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2025-02-23 16:04:44.407241');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2025-02-23 16:04:44.617343');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2025-02-23 16:04:44.877834');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2025-02-23 16:04:45.544243');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2025-02-23 16:04:45.579149');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2025-02-23 16:04:45.635043');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2025-02-23 16:04:45.660900');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2025-02-23 16:04:45.690239');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2025-02-23 16:04:45.726346');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2025-02-23 16:04:45.758327');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2025-02-23 16:04:45.787167');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2025-02-23 16:04:45.835770');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2025-02-23 16:04:45.889634');
INSERT INTO `django_migrations` VALUES ('14', 'com', '0001_initial', '2025-02-23 16:04:46.498359');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2025-02-23 16:04:47.141072');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2025-02-23 16:04:47.434769');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2025-02-23 16:04:47.473630');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2025-02-23 16:04:47.583932');
INSERT INTO `django_migrations` VALUES ('19', 'com', '0002_community_type', '2025-02-23 19:39:16.882084');
INSERT INTO `django_migrations` VALUES ('20', 'com', '0003_community_community_type', '2025-02-23 19:50:05.203299');
INSERT INTO `django_migrations` VALUES ('21', 'com', '0004_auto_20250323_2048', '2025-02-23 20:48:29.042737');
INSERT INTO `django_migrations` VALUES ('22', 'com', '0005_comment', '2025-02-24 15:13:57.424144');
INSERT INTO `django_migrations` VALUES ('23', 'com', '0006_com_shelf', '2025-02-24 15:17:17.777617');
INSERT INTO `django_migrations` VALUES ('24', 'com', '0007_apply', '2025-02-24 18:41:29.305928');
INSERT INTO `django_migrations` VALUES ('25', 'com', '0008_apply_apply_type', '2025-02-24 18:49:46.178241');
INSERT INTO `django_migrations` VALUES ('26', 'com', '0009_auto_20250324_2027', '2025-02-24 20:27:38.601723');
INSERT INTO `django_migrations` VALUES ('27', 'com', '0010_auto_20250326_1610', '2025-02-26 16:10:53.789179');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1820acno5hv9fufxdgippckt0s73dbeg', 'OTVkN2E5ZjZmMmQyMTIyMTc5Y2QyNDU2ODFlYjcwMDdkOTEwMjM3ZDp7InVzZXJfZGljIjp7ImlkIjoxLCJ1c2VybmFtZSI6Ilx1NmQ0Ylx1OGJkNTFcdTUzZjciLCJ1c2VyX3R5cGUiOjEsImF2YXRhciI6Ii9tZWRpYS9hdmF0YXIvZF9RWjVOU3dOLmdpZiIsImFkZHIiOiJ4eHh4eFx1NWI2Nlx1OTY2Mnh4eHh4XHU0ZTEzXHU0ZTFhXHU3M2VkXHU3ZWE3IiwidGVsZXBob25lIjoiMTk4MDM2MzA4NTIifX0=', '2025-02-23 23:53:27.480384');
INSERT INTO `django_session` VALUES ('7pag3rfaspivvee4l5121k7faytclxt3', 'NTVmM2I3ZjFmNTIwM2U1ZTQwMDkxMmE0MGNiNWNhYzQwM2MyYTRjNDp7InVzZXJfZGljIjp7ImlkIjoxLCJ1c2VybmFtZSI6Ilx1NmQ0Ylx1OGJkNTFcdTUzZjciLCJ1c2VyX3R5cGUiOjEsImF2YXRhciI6Ii9tZWRpYS9hdmF0YXIvYXZhdGFyLmpwZyIsInRlbGVwaG9uZSI6bnVsbH19', '2025-02-06 16:12:14.050511');
INSERT INTO `django_session` VALUES ('93i281xq2egry7n50k2qe0exu2st1etl', 'OTVkN2E5ZjZmMmQyMTIyMTc5Y2QyNDU2ODFlYjcwMDdkOTEwMjM3ZDp7InVzZXJfZGljIjp7ImlkIjoxLCJ1c2VybmFtZSI6Ilx1NmQ0Ylx1OGJkNTFcdTUzZjciLCJ1c2VyX3R5cGUiOjEsImF2YXRhciI6Ii9tZWRpYS9hdmF0YXIvZF9RWjVOU3dOLmdpZiIsImFkZHIiOiJ4eHh4eFx1NWI2Nlx1OTY2Mnh4eHh4XHU0ZTEzXHU0ZTFhXHU3M2VkXHU3ZWE3IiwidGVsZXBob25lIjoiMTk4MDM2MzA4NTIifX0=', '2025-02-23 21:59:16.987297');
INSERT INTO `django_session` VALUES ('atorgvthn7viydt5w149brrfjv6onrnr', 'OTVkN2E5ZjZmMmQyMTIyMTc5Y2QyNDU2ODFlYjcwMDdkOTEwMjM3ZDp7InVzZXJfZGljIjp7ImlkIjoxLCJ1c2VybmFtZSI6Ilx1NmQ0Ylx1OGJkNTFcdTUzZjciLCJ1c2VyX3R5cGUiOjEsImF2YXRhciI6Ii9tZWRpYS9hdmF0YXIvZF9RWjVOU3dOLmdpZiIsImFkZHIiOiJ4eHh4eFx1NWI2Nlx1OTY2Mnh4eHh4XHU0ZTEzXHU0ZTFhXHU3M2VkXHU3ZWE3IiwidGVsZXBob25lIjoiMTk4MDM2MzA4NTIifX0=', '2025-02-23 18:34:39.104977');
INSERT INTO `django_session` VALUES ('ed4t9gh0zplscmgin16xs6b02040i6ua', 'OTUyOGJjN2NlZTJhMGRiNmU1MGMxNjJjOTI4MWI2ZGQwMGMxZWMzNDp7InVzZXJfZGljIjp7ImlkIjozLCJ1c2VybmFtZSI6Ilx1NWYyMFx1NGUwOSIsInVzZXJfdHlwZSI6MSwiYXZhdGFyIjoiL21lZGlhL2F2YXRhci9hdmF0YXIuanBnIiwiYWRkciI6bnVsbCwidGVsZXBob25lIjpudWxsfX0=', '2025-02-10 17:50:29.799191');
INSERT INTO `django_session` VALUES ('m6j2l2blnyo2k660he9ru7xrlau7n0r3', 'YzAwNmYzMWZmMDk1Y2NiMTkxNjg5ODA2ZWU2YzllYmUxODNkNzllZTp7InVzZXJfZGljIjp7ImlkIjoyLCJ1c2VybmFtZSI6ImFkbWluIiwidXNlcl90eXBlIjoyLCJhdmF0YXIiOiIvbWVkaWEvYXZhdGFyL2F2YXRhci5qcGciLCJhZGRyIjpudWxsLCJ0ZWxlcGhvbmUiOm51bGx9fQ==', '2025-02-23 18:17:45.066138');
INSERT INTO `django_session` VALUES ('qa8jspbvpd7ek32r790iv8xe6xs9kwgh', 'MzdjZDBlNDljYjFhYmU0ZmQzNmMyZWUyODY3NzQzNjE3MWU4Zjg1Yzp7InVzZXJfZGljIjp7ImlkIjoxLCJ1c2VybmFtZSI6Ilx1NmQ0Ylx1OGJkNTFcdTUzZjciLCJ1c2VyX3R5cGUiOjEsImF2YXRhciI6Ii9tZWRpYS9hdmF0YXIvYXZhdGFyLmpwZyIsImFkZHIiOm51bGwsInRlbGVwaG9uZSI6bnVsbH19', '2025-02-06 20:15:52.896814');
INSERT INTO `django_session` VALUES ('tpfzzep88fbrm2v808le2t250np3ba59', 'YzAwNmYzMWZmMDk1Y2NiMTkxNjg5ODA2ZWU2YzllYmUxODNkNzllZTp7InVzZXJfZGljIjp7ImlkIjoyLCJ1c2VybmFtZSI6ImFkbWluIiwidXNlcl90eXBlIjoyLCJhdmF0YXIiOiIvbWVkaWEvYXZhdGFyL2F2YXRhci5qcGciLCJhZGRyIjpudWxsLCJ0ZWxlcGhvbmUiOm51bGx9fQ==', '2025-02-09 23:40:39.452573');
INSERT INTO `django_session` VALUES ('uaod4l2720j0cwocov47otfow694s7kl', 'Y2U0YjBjNzk3ZGYxNGM1NDRlZWJmNzQwOWQ4ZjRiOGU2OTg3ZGYyNTp7InVzZXJfZGljIjp7ImlkIjo0LCJ1c2VybmFtZSI6ImFhYSIsInVzZXJfdHlwZSI6MSwiYXZhdGFyIjoiL21lZGlhL2F2YXRhci9hdmF0YXIuanBnIiwiYWRkciI6bnVsbCwidGVsZXBob25lIjpudWxsfX0=', '2025-10-02 21:42:04.776623');
INSERT INTO `django_session` VALUES ('xcngzzp7iftshpfnfzvms34luc5tjxnp', 'NGRiOTkyMWIxOGRmZWM0OGVlNmMwNTNjYmU0ZDA5NTY4OWUwNGJjODp7fQ==', '2025-02-09 16:16:00.899918');
