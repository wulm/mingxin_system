/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50518
Source Host           : localhost:3306
Source Database       : mxdb

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2017-12-24 10:38:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mx_activities_data`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_data`;
CREATE TABLE `mx_activities_data` (
  `activities_id` int(11) NOT NULL AUTO_INCREMENT,
  `release_userID` int(11) NOT NULL DEFAULT '-1011',
  `activities_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''activitiesName''',
  `activities_typeID` int(11) NOT NULL DEFAULT '-1011',
  `activities_describe` text CHARACTER SET utf8 NOT NULL,
  `state` int(11) NOT NULL DEFAULT '-1011',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `upperLimit` int(11) NOT NULL DEFAULT '100',
  `lowerLimit` int(11) NOT NULL DEFAULT '0',
  `cover_image_url` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '''''',
  PRIMARY KEY (`activities_id`),
  KEY `release_userID` (`release_userID`),
  CONSTRAINT `FK_MX_activities_data_MX_users_data` FOREIGN KEY (`release_userID`) REFERENCES `mx_users_data` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_data
-- ----------------------------
INSERT INTO `mx_activities_data` VALUES ('10000', '2', '60年一中庆典活动', '1', '这是60年一中庆典活动的简介内容', '0', '2017-01-01 00:00:00', '2017-01-01 00:00:00', null, '50', '20', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/9.jpg');
INSERT INTO `mx_activities_data` VALUES ('10001', '2', '活出我精彩主题户外拓展', '2', '这是活出我精彩主题户外拓展介绍内容', '0', '2017-01-01 00:00:00', '2017-01-01 00:00:00', null, '50', '20', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/8.jpg');
INSERT INTO `mx_activities_data` VALUES ('10002', '2', 'sdfasdf', '3', 'fsdgsdvsdf', '0', '2017-10-12 10:06:51', '2017-10-12 10:06:51', null, '33', '3', '/MX_System/SystemPages/common/uploadImg/activityCoverImage/1bb3f22a1bc348568cd03d8b6a9ebd42.jpg');

-- ----------------------------
-- Table structure for `mx_activities_myspace_comment`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_myspace_comment`;
CREATE TABLE `mx_activities_myspace_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `myspace_id` int(11) NOT NULL DEFAULT '-1011',
  `submit_userID` int(11) NOT NULL DEFAULT '-1011',
  `state` int(11) NOT NULL DEFAULT '0',
  `Comment_txt` longtext CHARACTER SET utf8 NOT NULL,
  `praise_user_ids` text CHARACTER SET utf8 NOT NULL,
  `praise_clickNum` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '-1011',
  PRIMARY KEY (`comment_id`),
  KEY `submit_userID` (`submit_userID`),
  CONSTRAINT `FK_MX_activities_mySpace_comment_MX_users_data` FOREIGN KEY (`submit_userID`) REFERENCES `mx_users_data` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100075 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_myspace_comment
-- ----------------------------
INSERT INTO `mx_activities_myspace_comment` VALUES ('4', '1', '2', '0', '啥玩意', '2,3,', '2', '2017-07-05 22:36:06', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('5', '1', '4', '0', '这就几个', '2,3,', '2', '2017-07-05 22:38:41', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('6', '1', '2', '0', '后来你惹我', '2,3,', '2', '2017-07-05 22:39:29', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('7', '1', '4', '0', '你现在', '2,3,', '2', '2017-07-05 22:41:50', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('8', '1', '2', '0', '是的噶地方打个', '2,3,', '2', '2017-07-05 23:02:55', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('9', '1', '4', '0', '水电费', '2,3,', '2', '2017-07-05 23:05:10', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('10', '1', '2', '0', '测试回来了', '2,3,', '2', '2017-07-06 11:21:18', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('11', '1', '4', '0', '测试测试', '2,3,', '2', '2017-07-07 09:56:09', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100002', '1', '2', '0', '测试发表讨论', '3,2,', '2', '2017-07-10 22:14:41', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100003', '1', '2', '0', '测试发表讨论2', '3,2,', '2', '2017-07-10 22:15:35', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100004', '1', '2', '0', '测试3', '3,2,', '2', '2017-07-10 22:36:09', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100005', '1', '2', '0', '测试测试测试', '3,2,', '2', '2017-07-11 19:53:48', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100006', '1', '2', '0', '测试33', '3,2,', '2', '2017-07-12 22:16:41', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100007', '1', '3', '0', '测试发言', '3,2,', '2', '2017-08-06 00:48:08', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100008', '1', '3', '0', '测试发言发言', '3,2,', '2', '2017-08-06 11:14:33', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100009', '1', '2', '0', '神马都是浮云', '2,3,', '2', '2017-08-06 13:32:11', null, '-1');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100013', '1', '2', '0', '测试底部评论内容4', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100009');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100014', '1', '3', '0', '==测试底部评论内容1', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100008');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100015', '1', '3', '0', '==测试底部评论内容2', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100008');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100016', '1', '3', '0', '==测试底部评论内容3', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100008');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100017', '1', '4', '0', '==测试底部评论内容3', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100007');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100018', '1', '4', '0', '==测试底部评论内容----', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100007');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100019', '1', '4', '0', '==测试底部评论内容56', '', '0', '2017-08-23 00:00:00', '                                                                                                    ', '100007');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100023', '1', '2', '0', '在测试', '', '0', '2017-08-30 15:53:04', null, '100005');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100028', '1', '2', '0', '咋还给你了没有', '', '0', '2017-08-30 16:30:09', null, '100006');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100029', '1', '2', '0', '什么东西我不知道', '', '0', '2017-08-30 16:30:28', null, '9');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100031', '1', '2', '0', '真啃你渔民', '', '0', '2017-08-30 16:35:31', null, '5');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100032', '1', '2', '0', 'hello', '', '0', '2017-08-30 16:35:44', null, '6');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100033', '1', '2', '0', '东头哦空', '', '0', '2017-08-30 16:36:03', null, '7');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100034', '1', '2', '0', '一份供有空', '', '0', '2017-08-30 16:36:14', null, '8');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100036', '1', '2', '0', 'dinkYY你拉', '', '0', '2017-08-30 16:37:04', null, '11');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100040', '1', '2', '0', '心中你屋', '', '0', '2017-08-30 16:38:45', null, '100001');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100052', '1', '2', '0', '你姐呢', '', '0', '2017-09-03 21:25:26', null, '11');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100068', '1', '2', '0', '了吗44路', '', '0', '2017-11-02 10:30:59', null, '8');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100072', '1', '2', '0', '测试一下', '', '0', '2017-11-02 10:45:49', null, '100005');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100073', '1', '2', '0', '好了墨子', '', '0', '2017-11-02 10:46:20', null, '10');
INSERT INTO `mx_activities_myspace_comment` VALUES ('100074', '1', '2', '0', '我系咯的。', '', '0', '2017-11-02 10:46:33', null, '9');

-- ----------------------------
-- Table structure for `mx_activities_myspace_data`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_myspace_data`;
CREATE TABLE `mx_activities_myspace_data` (
  `myspace_id` int(11) NOT NULL AUTO_INCREMENT,
  `activities_id` int(11) NOT NULL DEFAULT '-1011',
  `describe` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''describe''',
  `create_date` datetime NOT NULL,
  `Update_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `upperLimit` int(11) NOT NULL DEFAULT '100',
  `lowerLimit` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1',
  `cover_image_url` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '/',
  `myspace_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '默认活动空间',
  PRIMARY KEY (`myspace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5010 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_myspace_data
-- ----------------------------
INSERT INTO `mx_activities_myspace_data` VALUES ('1', '10000', '60年一中庆典活动空间介绍', '2017-01-01 00:00:00', '2017-01-01 00:00:00', null, '80', '0', '0', 'http://wx.qlogo.cn/mmopen/gITwFOywPbkCx8BxwYc41oAGjuBeFianAbtHl8URmaCMTe9lib6EicNuHSibGJzSfT6Y88Nos1poHITnB7vUs7foHphNpibcgFEja/0', '60年一中庆典活动空间');
INSERT INTO `mx_activities_myspace_data` VALUES ('2', '10001', '活出我精彩主题户外拓展空间介绍', '2017-01-01 00:00:00', '2017-01-01 00:00:00', null, '80', '0', '0', 'http://wx.qlogo.cn/mmopen/1Z78kQUUVI1UCblq4Lcw77LumKLMgHC6hnKC725mt9tXpQWmxXDn0ChNha8YfeicBETGFEd7q8bYzJRCkIeQORw6IuA5SemZg/0', '活出我精彩主题户外拓展活动空间');
INSERT INTO `mx_activities_myspace_data` VALUES ('5009', '10002', 'svdgsdfsd', '2017-10-12 10:06:51', '2017-10-19 09:48:35', null, '33', '3', '0', '/MX_System/SystemPages/common/uploadImg/activityCoverImage/d8652f0fc8b74af7972a2b78f791a321.jpg', 'gsdfsdf');

-- ----------------------------
-- Table structure for `mx_activities_myspace_invitecode`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_myspace_invitecode`;
CREATE TABLE `mx_activities_myspace_invitecode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activities_id` int(11) NOT NULL DEFAULT '-123',
  `myspace_id` int(11) NOT NULL DEFAULT '-123',
  `Initiator_user_id` int(11) NOT NULL DEFAULT '-123',
  `invite_code` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '''''',
  `state` int(11) NOT NULL DEFAULT '0',
  `accepted_user_id` int(11) NOT NULL DEFAULT '-123',
  `create_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_id` (`activities_id`),
  CONSTRAINT `FK9CEB2959D0BA1871` FOREIGN KEY (`activities_id`) REFERENCES `mx_activities_data` (`activities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=773656 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_myspace_invitecode
-- ----------------------------
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773645', '10000', '1', '2', '4e9t9o', '-1', '-1', '2017-07-30 22:46:46', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773646', '10000', '1', '2', '520t81', '0', '-1', '2017-07-31 17:08:12', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773647', '10000', '1', '2', 'w82uu3', '0', '-1', '2017-08-03 09:41:48', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773648', '10000', '1', '2', '21iakl', '0', '-1', '2017-08-03 11:09:25', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773649', '10000', '1', '2', 'a912j2', '-1', '-1', '2017-08-04 20:35:49', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773650', '10000', '1', '2', '747023', '-1', '-1', '2017-08-05 22:37:11', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773651', '10000', '1', '2', '55xdr9', '0', '-1', '2017-08-06 10:51:47', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773652', '10000', '1', '2', '3neoql', '0', '-1', '2017-08-07 21:42:12', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773653', '10000', '1', '2', '3y4b95', '0', '-1', '2017-08-16 09:43:38', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773654', '10000', '1', '2', '90m0y7', '0', '-1', '2017-09-03 15:00:48', null, null);
INSERT INTO `mx_activities_myspace_invitecode` VALUES ('773655', '10000', '1', '2', '51gsf2', '0', '-1', '2017-11-07 22:51:35', null, null);

-- ----------------------------
-- Table structure for `mx_activities_myspace_material`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_myspace_material`;
CREATE TABLE `mx_activities_myspace_material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `submit_user_id` int(11) NOT NULL DEFAULT '-1011',
  `myspace_id` int(11) NOT NULL DEFAULT '-1011',
  `material_type` int(11) NOT NULL DEFAULT '-1',
  `load_url` text CHARACTER SET utf8 NOT NULL,
  `describe` text CHARACTER SET utf8 NOT NULL,
  `create_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `preview_img_url` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3042 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_myspace_material
-- ----------------------------
INSERT INTO `mx_activities_myspace_material` VALUES ('3006', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/7.jpg', '图片简介1', '2017-07-08 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3007', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/8.jpg', '图片简介1', '2017-07-09 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3008', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/9.jpg', '图片简介1', '2017-07-10 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3009', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/10.jpg', '图片简介1', '2017-07-11 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3010', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/11.jpg', '图片简介1', '2017-07-12 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3011', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/12.jpg', '图片简介1', '2017-07-13 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3012', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/13.jpg', '图片简介1', '2017-07-14 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3013', '4', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/100/o8iGuv66gILabgoSL3Ibz8euYiZk/14.jpg', '图片简介1', '2017-07-15 00:00:00', null, '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3033', '3', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/1/3/ef1eb02c1b1541c3ac5408f5a71a4486.jpg', '图片描述', '2017-08-04 21:22:07', '                                                                                                    ', '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3034', '3', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/1/3/2af4aac92f7f491f84400783a06c09c1.jpg', '图片描述', '2017-08-06 13:14:54', '                                                                                                    ', '/');
INSERT INTO `mx_activities_myspace_material` VALUES ('3040', '2', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/1/2/img/i_79938df4d0e047d89c5df6f293336c1a.jpg', '图片描述', '2017-11-07 20:50:37', '                                                                                                    ', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/1/2/preview/i_79938df4d0e047d89c5df6f293336c1a.jpg');
INSERT INTO `mx_activities_myspace_material` VALUES ('3041', '2', '1', '1', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/1/2/img/i_e8edb4674eab4aea9835fef974b1a40e.jpg', '图片描述', '2017-11-07 20:51:13', '                                                                                                    ', '/MX_System/WeixinPages/common/uploadImg/myspaceImg/1/2/preview/i_e8edb4674eab4aea9835fef974b1a40e.jpg');

-- ----------------------------
-- Table structure for `mx_activities_myspace_users`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_myspace_users`;
CREATE TABLE `mx_activities_myspace_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myspace_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '-1011',
  `relate_user_id` int(11) NOT NULL DEFAULT '-11',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `state` int(11) NOT NULL DEFAULT '-1000',
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remain_upload_num` int(11) NOT NULL DEFAULT '10',
  `img_update_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:00',
  `comment_update_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `FK_MX_activities_mySpace_users_MX_users_data` FOREIGN KEY (`user_id`) REFERENCES `mx_users_data` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7780 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_myspace_users
-- ----------------------------
INSERT INTO `mx_activities_myspace_users` VALUES ('7750', '1', '2', '-1', '2017-01-01 00:00:00', '2017-01-01 00:00:00', '-1', null, '10', '2017-07-08 00:00:00', '2017-07-08 00:00:00');
INSERT INTO `mx_activities_myspace_users` VALUES ('7751', '1', '4', '-1', '2017-07-10 00:00:00', '2017-07-10 00:00:00', '0', null, '10', '2017-07-10 00:00:00', '2017-07-10 00:00:00');
INSERT INTO `mx_activities_myspace_users` VALUES ('7778', '1', '3', '-111', '2017-11-07 22:52:23', '2017-11-07 22:52:23', '0', null, '0', '2017-11-07 22:52:23', '2017-11-07 22:52:23');
INSERT INTO `mx_activities_myspace_users` VALUES ('7779', '1', '1002', '-1', '2017-11-13 00:00:00', '2017-11-13 00:00:00', '0', null, '10', '2017-11-13 00:00:00', '2017-11-13 00:00:00');

-- ----------------------------
-- Table structure for `mx_activities_publicity_comment`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_publicity_comment`;
CREATE TABLE `mx_activities_publicity_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `publicity_dataID` int(11) NOT NULL DEFAULT '-1011',
  `comment_txt` longtext CHARACTER SET utf8 NOT NULL,
  `praise_clickNum` int(11) NOT NULL DEFAULT '0',
  `comment_userID` int(11) NOT NULL DEFAULT '-1011',
  `create_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_publicity_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_activities_publicity_content`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_publicity_content`;
CREATE TABLE `mx_activities_publicity_content` (
  `publicityArticle_id` int(11) NOT NULL AUTO_INCREMENT,
  `publicity_dataID` int(11) NOT NULL DEFAULT '-1011',
  `article_content` longtext CHARACTER SET utf8 NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `article_title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''article_title''',
  PRIMARY KEY (`publicityArticle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_publicity_content
-- ----------------------------
INSERT INTO `mx_activities_publicity_content` VALUES ('100', '3', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('101', '4', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('102', '5', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('103', '6', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('104', '7', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('105', '8', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('106', '9', '<p style=\"text-align: center;\">亲子活动</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497163256658&di=2582e7e1a4f60a75a67c9b507902afea&imgtype=0&src=http%3A%2F%2Fsem.g3img.com%2Fg3img%2Fboaopx169%2F20160304172628_96369.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><br/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('107', '10', '<p style=\"text-align: center;\">亲子活动</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497163256658&di=2582e7e1a4f60a75a67c9b507902afea&imgtype=0&src=http%3A%2F%2Fsem.g3img.com%2Fg3img%2Fboaopx169%2F20160304172628_96369.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><br/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('108', '11', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('109', '12', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('110', '13', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('111', '14', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('112', '15', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('113', '16', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('114', '17', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('115', '18', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('116', '19', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 2px; border-bottom-style: solid; padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px;\">校友情</span><span style=\"font-size: 20px;\"><br/></span></h1><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">在那一段青葱的岁月里，懵懂的你是否还记得如今已白发鬓鬓的师长，以及现在天南海北贫富不齐的学友。</span></p><p style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 20px;\">岁月的脚步总是那么匆匆，在城市钢筋水泥与车水马龙之间，不要忘了曾经和你一起玩泥巴的小伙伴、还有家乡一直牵挂你的那些兄弟姊妹。你在想着谁？谁在想着你？永远只有你我内心那一个精灵明了。</span></p><p style=\"text-align:center\"><img src=\"http://img17.3lian.com/201612/20/acff4c08bc80bfb4cbde258706ba385d.jpg\" title=\"12.jpg\" alt=\"12.jpg\" width=\"367\" height=\"211\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">时光荏苒，离开母校的日子，我常常一个人在深夜里点上一支烟，燃烧那内心深处的思绪，远方的你此时是否正甜甜的进入梦乡，梦里是否偶尔也会回归校园，还是那颗驿动的心，早已被异地他乡的繁华璀璨所湮灭；<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">母校或许是我们心中永远的甜蜜的不愿解开的情结，校友至少是前世五百年的回眸才能修来的一份缘分，让我们在今生这个浮躁现实冷漠的喧嚣年代，将真情挚爱感激和相互肯定的目光，永远地珍藏在你我心灵深处最柔软的那个角落；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">不管你走到哪里，亲爱的校友，请答应每个人都一定好好的，记住在你身后，永远都会有你有我有他，无数校友关注的目光，会一直都在默默地陪你远航......</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 20px;\">海风轻拂你的长发</span></p><p style=\"text-indent: 2em; text-align: right;\"><span style=\"font-size: 20px;\">二0一三年十二月八日凌晨两点十八分</span></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('117', '20', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('118', '21', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('119', '22', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('120', '23', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('121', '24', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('122', '25', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('123', '26', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('124', '27', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('125', '28', '<p style=\"text-align: center;\">毕业照</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162589170&di=711b541e33630eb3711ad4473d7330a7&imgtype=0&src=http%3A%2F%2Fnews.qingdaonews.com%2Fimages%2Fattachement%2Fjpg%2Fsite1%2F20170508%2F94e9795e11831a79f94736.jpg\" width=\"387\" height=\"249\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('126', '29', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('127', '30', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('128', '31', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('129', '32', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('130', '33', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('131', '34', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('132', '35', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('133', '36', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('134', '37', '<p style=\"text-align: center;\">素质拓展</p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497758012&di=f170f9c190eaed7e3c6076fbfb861ca6&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.hzwgyzx.cn%2Farticle%2F%5BInstallDir_ChannelDir%5D%7B%24UploadDir%7D%2F200808%2F20080825232459313.jpg\" width=\"300\"/></p><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497162868877&di=91e7482c5cb8d47688e1ef9bd2289be5&imgtype=0&src=http%3A%2F%2Fnews.ustc.edu.cn%2Fxywh%2F201205%2FW020120517614445657891.jpg\" width=\"300\"/></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('135', '38', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('136', '39', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('137', '40', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('138', '41', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('139', '42', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('140', '43', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('141', '44', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('142', '45', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');
INSERT INTO `mx_activities_publicity_content` VALUES ('143', '46', '<p style=\"text-align: center;\">亲子活动<br/></p><p style=\"text-align: center;\"><img src=\"http://fhwcg.xxycjy.cn/uploadfile/2013-4/20130413222931680.jpg\" width=\"250\"/></p><p style=\"text-align: center;\"><img src=\"http://img.ibabyzone.cn/upload/commend/130826/laoyu.jpg?0826a\" width=\"250\"/></p><p style=\"text-align: center;\"></p>', null, 'article_title');

-- ----------------------------
-- Table structure for `mx_activities_publicity_data`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_publicity_data`;
CREATE TABLE `mx_activities_publicity_data` (
  `publicity_dataID` int(11) NOT NULL AUTO_INCREMENT,
  `activities_id` int(11) NOT NULL DEFAULT '-1000',
  `authorID` int(11) NOT NULL DEFAULT '-1011',
  `comment_num` int(11) NOT NULL DEFAULT '0',
  `praise_clickNum` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '-1011',
  `create_date` date DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `actvities_typeID` int(11) NOT NULL DEFAULT '-1011',
  `author_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''authorName''',
  `cover_imageUrl` text CHARACTER SET utf8 NOT NULL,
  `article_title` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''title''',
  `article_abstract` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''abstract text''',
  PRIMARY KEY (`publicity_dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_publicity_data
-- ----------------------------
INSERT INTO `mx_activities_publicity_data` VALUES ('3', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会1', '校友是一种资源');
INSERT INTO `mx_activities_publicity_data` VALUES ('4', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497104391312&di=a220ec41e3ae647ce6600c015f14332b&imgtype=0&src=http%3A%2F%2Fnews.ecust.edu.cn%2FUploadFile%2FDES%2F2013%2F20130725112152367.jpg', '校友会2', '校友会2');
INSERT INTO `mx_activities_publicity_data` VALUES ('5', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497104422687&di=0176c64327c36906c0151f61f6184801&imgtype=0&src=http%3A%2F%2Fimg4q.duitang.com%2Fuploads%2Fitem%2F201505%2F24%2F20150524233820_aFuEk.jpeg', '毕业季1', '测试毕业季1');
INSERT INTO `mx_activities_publicity_data` VALUES ('6', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497104445211&di=1e8e4c99685b557a5f06bf6b04830b3d&imgtype=0&src=http%3A%2F%2Fwww.mengtu.cc%2Fuploads%2Fallimg%2F150531%2F1-150531233214-50.jpg', '毕业季2', '测试毕业季2');
INSERT INTO `mx_activities_publicity_data` VALUES ('7', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497104474039&di=ae67e127128342cd4283b3bed51d79f2&imgtype=0&src=http%3A%2F%2Fi2.sinaimg.cn%2Fdy%2Fo%2F2011-07-30%2F1311963798_MLIabS.jpg', '素质拓展1', '测试素质拓展1');
INSERT INTO `mx_activities_publicity_data` VALUES ('8', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497104505893&di=05c4b3ee6c742f4735ebce2890c94864&imgtype=0&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20140505%2F20140505135033-1912509532.jpg', '素质拓展2', '测试素质拓展2');
INSERT INTO `mx_activities_publicity_data` VALUES ('9', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4113285101,526720654&fm=26&gp=0.jpg', '亲子活动1', '测试亲子活动1');
INSERT INTO `mx_activities_publicity_data` VALUES ('10', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497104266269&di=b417f34db6a1651b901faa770aecad1e&imgtype=0&src=http%3A%2F%2Fpic.qbaobei.com%2Fthumb%2FUploads%2FPicture%2F2016-04-15%2F5710a479d6577_258-172_0_crop.jpg', '亲子活动2', '测试亲子活动2');
INSERT INTO `mx_activities_publicity_data` VALUES ('11', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会3', '校友会3');
INSERT INTO `mx_activities_publicity_data` VALUES ('12', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会4', '校友会4');
INSERT INTO `mx_activities_publicity_data` VALUES ('13', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会5', '校友会5');
INSERT INTO `mx_activities_publicity_data` VALUES ('14', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会6', '校友会6');
INSERT INTO `mx_activities_publicity_data` VALUES ('15', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会7', '校友会7');
INSERT INTO `mx_activities_publicity_data` VALUES ('16', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会8', '校友会8');
INSERT INTO `mx_activities_publicity_data` VALUES ('17', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会9', '校友会9');
INSERT INTO `mx_activities_publicity_data` VALUES ('18', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会10', '校友会10');
INSERT INTO `mx_activities_publicity_data` VALUES ('19', '-1000', '2', '0', '0', '1', '2017-01-01', null, '1', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '校友会11', '校友会11');
INSERT INTO `mx_activities_publicity_data` VALUES ('20', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季3', '毕业季3');
INSERT INTO `mx_activities_publicity_data` VALUES ('21', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季4', '毕业季4');
INSERT INTO `mx_activities_publicity_data` VALUES ('22', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季5', '毕业季5');
INSERT INTO `mx_activities_publicity_data` VALUES ('23', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季6', '毕业季6');
INSERT INTO `mx_activities_publicity_data` VALUES ('24', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季7', '毕业季7');
INSERT INTO `mx_activities_publicity_data` VALUES ('25', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季87', '毕业季8');
INSERT INTO `mx_activities_publicity_data` VALUES ('26', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季9', '毕业季9');
INSERT INTO `mx_activities_publicity_data` VALUES ('27', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季10', '毕业季10');
INSERT INTO `mx_activities_publicity_data` VALUES ('28', '-1000', '2', '0', '0', '1', '2017-01-01', null, '2', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '毕业季11', '毕业季11');
INSERT INTO `mx_activities_publicity_data` VALUES ('29', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展3', '素质拓展3');
INSERT INTO `mx_activities_publicity_data` VALUES ('30', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展4', '素质拓展4');
INSERT INTO `mx_activities_publicity_data` VALUES ('31', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展5', '素质拓展5');
INSERT INTO `mx_activities_publicity_data` VALUES ('32', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展6', '素质拓展6');
INSERT INTO `mx_activities_publicity_data` VALUES ('33', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展7', '素质拓展7');
INSERT INTO `mx_activities_publicity_data` VALUES ('34', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展8', '素质拓展8');
INSERT INTO `mx_activities_publicity_data` VALUES ('35', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展9', '素质拓展9');
INSERT INTO `mx_activities_publicity_data` VALUES ('36', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展10', '素质拓展10');
INSERT INTO `mx_activities_publicity_data` VALUES ('37', '-1000', '2', '0', '0', '1', '2017-01-01', null, '3', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '素质拓展11', '素质拓展11');
INSERT INTO `mx_activities_publicity_data` VALUES ('38', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动3', '亲子活动3');
INSERT INTO `mx_activities_publicity_data` VALUES ('39', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动4', '亲子活动4');
INSERT INTO `mx_activities_publicity_data` VALUES ('40', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动5', '亲子活动5');
INSERT INTO `mx_activities_publicity_data` VALUES ('41', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动6', '亲子活动6');
INSERT INTO `mx_activities_publicity_data` VALUES ('42', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动7', '亲子活动7');
INSERT INTO `mx_activities_publicity_data` VALUES ('43', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动8', '亲子活动8');
INSERT INTO `mx_activities_publicity_data` VALUES ('44', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动9', '亲子活动9');
INSERT INTO `mx_activities_publicity_data` VALUES ('45', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动10', '亲子活动10');
INSERT INTO `mx_activities_publicity_data` VALUES ('46', '-1000', '2', '0', '0', '1', '2017-01-01', null, '4', 'wulm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1497699550&di=736124e94d75824de48fe2d8a1da5adc&imgtype=jpg&er=1&src=http%3A%2F%2Fa0.att.hudong.com%2F80%2F82%2F01300001356246131656821414152.jpg', '亲子活动11', '亲子活动11');

-- ----------------------------
-- Table structure for `mx_activities_publicity_material`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_publicity_material`;
CREATE TABLE `mx_activities_publicity_material` (
  `publicity_materialID` int(11) NOT NULL AUTO_INCREMENT,
  `publicity_dataID` int(11) NOT NULL DEFAULT '-1011',
  `material_type` int(11) NOT NULL DEFAULT '-1',
  `Load_url` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''loadUrl''',
  `describe` text CHARACTER SET utf8 NOT NULL,
  `create_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`publicity_materialID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_publicity_material
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_activities_type`
-- ----------------------------
DROP TABLE IF EXISTS `mx_activities_type`;
CREATE TABLE `mx_activities_type` (
  `activities_typeID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT 'N''typeName''',
  `parent_id` int(11) NOT NULL DEFAULT '-1011',
  `describe` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''describe''',
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`activities_typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_activities_type
-- ----------------------------
INSERT INTO `mx_activities_type` VALUES ('1', '校友会', '-1', '校友活动、同学聚会等活动', '2017-01-01', '2017-01-01', null);
INSERT INTO `mx_activities_type` VALUES ('2', '毕业季', '-1', '小、初、高毕业活动及晚会', '2017-01-01', '2017-01-01', null);
INSERT INTO `mx_activities_type` VALUES ('3', '素质拓展', '-1', '户外拓展活动、企事业单位素质培训', '2017-01-01', '2017-01-01', null);
INSERT INTO `mx_activities_type` VALUES ('4', '亲子活动', '-1', '亲子旅游、亲子活动', '2017-01-01', '2017-01-01', null);

-- ----------------------------
-- Table structure for `mx_news_comment`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_comment`;
CREATE TABLE `mx_news_comment` (
  `Comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '-1011',
  `comment_txt` longtext CHARACTER SET utf8 NOT NULL,
  `praise_clickNum` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '-1',
  `operator` int(11) NOT NULL,
  `operator_name` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `comment_backNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`Comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_news_comment_back`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_comment_back`;
CREATE TABLE `mx_news_comment_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Comment_id` int(11) NOT NULL,
  `operator` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `comment_back` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_comment_back
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_news_comment_praise`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_comment_praise`;
CREATE TABLE `mx_news_comment_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Comment_id` int(11) NOT NULL,
  `operator` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_comment_praise
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_news_content`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_content`;
CREATE TABLE `mx_news_content` (
  `newsContent_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `news_headline` varchar(200) CHARACTER SET utf8 NOT NULL,
  `news_leadText` text CHARACTER SET utf8 NOT NULL,
  `news_mainContent` longtext CHARACTER SET utf8 NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`newsContent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_content
-- ----------------------------
INSERT INTO `mx_news_content` VALUES ('1', '25', '11', '11', '<p>11</p>', 'no set                                                                                              ');
INSERT INTO `mx_news_content` VALUES ('2', '26', '1122', '1122', '<p>1122</p>', 'no set                                                                                              ');
INSERT INTO `mx_news_content` VALUES ('3', '27', '333', '333', '<p>333</p>', 'no set                                                                                              ');

-- ----------------------------
-- Table structure for `mx_news_data`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_data`;
CREATE TABLE `mx_news_data` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_writerID` int(11) NOT NULL DEFAULT '-1011',
  `writer_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''writerName''',
  `news_headline` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''newsHeadLine''',
  `news_leadText` text CHARACTER SET utf8 NOT NULL,
  `comment_num` int(11) NOT NULL DEFAULT '0',
  `praise_clickNum` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `news_typeID` int(11) NOT NULL DEFAULT '-1011',
  `regionID` int(11) NOT NULL DEFAULT '-1011',
  `schoolID` int(11) NOT NULL DEFAULT '-1011',
  `state` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_data
-- ----------------------------
INSERT INTO `mx_news_data` VALUES ('14', '4', '1', '1', '1', '-1', '-1', '2017-06-17 20:01:49', '2017-06-17 20:01:49', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('15', '4', '2', '2', '2', '-1', '-1', '2017-06-17 20:11:02', '2017-06-17 20:11:02', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('16', '4', '3', '3', '3', '-1', '-1', '2017-06-17 20:13:04', '2017-06-17 20:13:04', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('17', '4', '11', '11', '11', '-1', '-1', '2017-06-18 09:14:35', '2017-06-18 09:14:35', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('18', '4', '11', '11', '11', '-1', '-1', '2017-06-18 09:50:24', '2017-06-18 09:50:24', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('19', '4', '11', '11', '11', '-1', '-1', '2017-06-18 09:52:31', '2017-06-18 09:52:31', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('20', '4', '11', '11', '11', '-1', '-1', '2017-06-18 09:54:47', '2017-06-18 09:54:47', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('21', '4', '11', '11', '11', '-1', '-1', '2017-06-18 10:16:14', '2017-06-18 10:16:14', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('22', '4', '11', '11', '11', '-1', '-1', '2017-06-18 10:37:17', '2017-06-18 10:37:17', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('23', '4', '11', '11', '11', '-1', '-1', '2017-06-18 10:39:58', '2017-06-18 10:39:58', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('24', '4', '11', '11', '11', '-1', '-1', '2017-06-18 10:42:44', '2017-06-18 10:42:44', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('25', '4', '11', '11', '11', '-1', '-1', '2017-06-18 10:46:37', '2017-06-18 10:46:37', 'no set                                                                                              ', '-1', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('26', '4', '1122', '1122', '1122', '-1', '-1', '2017-06-18 14:11:11', '2017-06-18 14:11:11', 'no set                                                                                              ', '4', '-1', '-1', '0');
INSERT INTO `mx_news_data` VALUES ('27', '5', '333', '333', '333', '-1', '-1', '2017-06-19 23:18:31', '2017-06-19 23:18:31', 'no set                                                                                              ', '4', '-1', '1', '0');

-- ----------------------------
-- Table structure for `mx_news_material`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_material`;
CREATE TABLE `mx_news_material` (
  `news_materialID` int(11) NOT NULL AUTO_INCREMENT,
  `material_type` int(11) NOT NULL DEFAULT '-1',
  `load_url` text CHARACTER SET utf8 NOT NULL,
  `describe` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''describe''',
  `submit_userID` int(11) NOT NULL DEFAULT '-1011',
  `create_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`news_materialID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_material
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_news_praise`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_praise`;
CREATE TABLE `mx_news_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `operator` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_praise
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_news_type`
-- ----------------------------
DROP TABLE IF EXISTS `mx_news_type`;
CREATE TABLE `mx_news_type` (
  `news_typeID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT 'N''typeName''',
  `parent_id` int(11) NOT NULL DEFAULT '-1011',
  `describe` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''typeDescribe''',
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`news_typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_news_type
-- ----------------------------
INSERT INTO `mx_news_type` VALUES ('4', '学校', '-1', '学校时报', '1900-01-01', '1900-01-01', 'no set                                                                                              ');
INSERT INTO `mx_news_type` VALUES ('5', '乡村', '-1', '乡村时报', '1900-01-01', '1900-01-01', 'no set                                                                                              ');

-- ----------------------------
-- Table structure for `mx_region`
-- ----------------------------
DROP TABLE IF EXISTS `mx_region`;
CREATE TABLE `mx_region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''region name''',
  `region_parentID` int(11) NOT NULL DEFAULT '-1011',
  `region_zipCode` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'N''zipcode''',
  `region_describe` text CHARACTER SET utf8 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_region
-- ----------------------------
INSERT INTO `mx_region` VALUES ('1', '罗华村', '-1011', 'zipcode', 'regionDescribe', '1905-07-09', '1905-07-09', null);
INSERT INTO `mx_region` VALUES ('2', '前山村', '-1011', 'zipcode', 'regionDescribe', '1905-07-09', '1905-07-09', null);

-- ----------------------------
-- Table structure for `mx_schools`
-- ----------------------------
DROP TABLE IF EXISTS `mx_schools`;
CREATE TABLE `mx_schools` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''school name''',
  `school_regionID` int(11) NOT NULL DEFAULT '-1011',
  `school_address` text CHARACTER SET utf8 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_schools
-- ----------------------------
INSERT INTO `mx_schools` VALUES ('1', '一中', '-1011', 'shool addr', '1905-07-09', '1905-07-09', null);
INSERT INTO `mx_schools` VALUES ('2', '二中', '-1011', 'shool addr', '1905-07-09', '1905-07-09', null);

-- ----------------------------
-- Table structure for `mx_signup_data`
-- ----------------------------
DROP TABLE IF EXISTS `mx_signup_data`;
CREATE TABLE `mx_signup_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `activities_id` int(11) NOT NULL DEFAULT '-1011',
  `user_id` int(11) NOT NULL DEFAULT '-1011',
  `real_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '未填写',
  `phone_num` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `other_demand` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_signup_data
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_system_countdata`
-- ----------------------------
DROP TABLE IF EXISTS `mx_system_countdata`;
CREATE TABLE `mx_system_countdata` (
  `count_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_users_num` int(11) NOT NULL DEFAULT '0',
  `sys_comment_num` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `data_yearMonth` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '2017-01',
  PRIMARY KEY (`count_data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_system_countdata
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_system_publicnum_basedata`
-- ----------------------------
DROP TABLE IF EXISTS `mx_system_publicnum_basedata`;
CREATE TABLE `mx_system_publicnum_basedata` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_name` text CHARACTER SET utf8 NOT NULL,
  `data_value` text CHARACTER SET utf8 NOT NULL,
  `create_userid` int(11) NOT NULL DEFAULT '-1011',
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_system_publicnum_basedata
-- ----------------------------
INSERT INTO `mx_system_publicnum_basedata` VALUES ('1', 'Token', 'weixin_mingxin', '2', '2017-06-11', '2017-06-11', null);
INSERT INTO `mx_system_publicnum_basedata` VALUES ('2', 'AppID', 'wx34c7cde93a1c5c40', '2', '2017-06-11', '2017-06-11', null);
INSERT INTO `mx_system_publicnum_basedata` VALUES ('3', 'AppSecret', '97a28450aed0e10b0299ff88ae482bac', '2', '2017-06-11', '2017-06-11', null);
INSERT INTO `mx_system_publicnum_basedata` VALUES ('4', 'PublicNumInterfaceURL', 'http://mingxin.imwork.net/MX_System/weixin.action', '2', '2017-06-11', '2017-06-11', null);

-- ----------------------------
-- Table structure for `mx_system_publicnum_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mx_system_publicnum_menu`;
CREATE TABLE `mx_system_publicnum_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '-1011',
  `appid` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''no exist''',
  `menu_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''menu''',
  `menu_type` int(11) NOT NULL DEFAULT '-1011',
  `menu_key` text CHARACTER SET utf8 NOT NULL,
  `menu_mediaID` int(11) NOT NULL DEFAULT '-1011',
  `menu_url` text CHARACTER SET utf8 NOT NULL,
  `menu_pagePath` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''menuPagePath''',
  `users_tagID` int(11) NOT NULL DEFAULT '-1011',
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `orders` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_system_publicnum_menu
-- ----------------------------
INSERT INTO `mx_system_publicnum_menu` VALUES ('1', '-1', '/', '鸣心时报', '-1011', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('2', '1', '/', '校园时报', '2', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('3', '1', '/', '乡村时报', '2', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('4', '1', '/', '鸣心直播', '2', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('5', '-1', '/', '鸣心活动', '-1011', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '1905-07-09', '1905-07-09', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('6', '5', '/', '校友会', '2', 'menu key', '-1011', 'http://mingxin.imwork.net/MX_System/activitiesPublicity!getActivitiesPublicityList.action?type=1', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('7', '5', '/', '毕业季', '2', 'menu key', '-1011', 'http://mingxin.imwork.net/MX_System/activitiesPublicity!getActivitiesPublicityList.action?type=2', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('8', '5', '/', '素质拓展', '2', 'menu key', '-1011', 'http://mingxin.imwork.net/MX_System/activitiesPublicity!getActivitiesPublicityList.action?type=3', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('9', '5', '/', '亲子活动', '2', 'menu key', '-1011', 'http://mingxin.imwork.net/MX_System/activitiesPublicity!getActivitiesPublicityList.action?type=4', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('10', '5', '/', '我要报名', '3', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('11', '-1', '/', '个人中心', '-1011', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('12', '11', '/', '教育培训', '3', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('13', '11', '/', '新闻投稿', '3', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '2017-06-11', '2017-06-11', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('14', '11', 'no exist', '校园记者', '3', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '1905-07-09', '1905-07-09', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('15', '11', 'no exist', '我的回忆', '3', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '1905-07-09', '1905-07-09', null, '0');
INSERT INTO `mx_system_publicnum_menu` VALUES ('16', '11', '', '其他功能', '1', 'menu key', '-1011', 'menuUrl', 'menuPagePath', '-1011', '1905-07-09', '1905-07-09', null, '0');

-- ----------------------------
-- Table structure for `mx_users_data`
-- ----------------------------
DROP TABLE IF EXISTS `mx_users_data`;
CREATE TABLE `mx_users_data` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''user name''',
  `password` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '123456',
  `user_typeID` int(11) NOT NULL DEFAULT '-1011',
  `weixin_openID` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''openid''',
  `weixin_nikeName` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''nikename''',
  `weixin_headUrl` text CHARACTER SET utf8 NOT NULL,
  `subscribe_time` datetime NOT NULL,
  `weixin_remark` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''remark''',
  `user_sex` int(11) NOT NULL DEFAULT '-1',
  `weixin_groupid` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''groupid''',
  `weixin_tagid_list` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''tagidList''',
  `user_age` int(11) NOT NULL DEFAULT '0',
  `user_schoolID` int(11) NOT NULL DEFAULT '-1011',
  `user_email` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT 'N''email''',
  `user_phoneNum` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `reporter_teamID` int(11) NOT NULL DEFAULT '-1',
  `user_tags` text CHARACTER SET utf8 NOT NULL,
  `user_state` int(11) NOT NULL DEFAULT '1',
  `user_regionID` int(11) NOT NULL DEFAULT '-1011',
  `user_addr` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'N''addr''',
  `last_loginTime` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user_realName` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''realName''',
  `user_idcard_num` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '352227XXXXXXXX',
  `user_qq_num` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'xxxxxxxxx',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_users_data
-- ----------------------------
INSERT INTO `mx_users_data` VALUES ('2', 'admin', 'admin', '1100', 'o8iGuv66gILabgoSL3Ibz8euYiZk', '.', 'http://wx.qlogo.cn/mmopen/gITwFOywPbkCx8BxwYc41oAGjuBeFianAbtHl8URmaCMTe9lib6EicNuHSibGJzSfT6Y88Nos1poHITnB7vUs7foHphNpibcgFEja/0', '2017-06-09 22:46:30', 'no set', '-1', 'no set', 'no set', '0', '-1011', '397774505@qq.com', '15755665858', '-1011', 'no set', '0', '-1011', '古田', '2017-10-19 10:04:26', '古田一中', '利明', '352227199104281315', 'xxxxxxxxx');
INSERT INTO `mx_users_data` VALUES ('3', 'testweixin', '123456', '-1', 'o8iGuv6x6ztk-hEnWM0a0WXh9QMc', 'test weixin', '', '2017-06-13 23:54:54', '', '0', '', '', '0', '-1011', '111222@qq.com', '13368651521', '-1011', '', '0', '-1011', '福州', '2017-06-13 23:54:54', '', '李四', '352227XXXXXXXX', 'xxxxxxxxx');
INSERT INTO `mx_users_data` VALUES ('4', 'xzhjhj', '123456', '-1', 'oNYP41OJ_d3fR-d4O479D8jFX3-A', '小郑', 'http://wx.qlogo.cn/mmopen/1Z78kQUUVI1UCblq4Lcw77LumKLMgHC6hnKC725mt9tXpQWmxXDn0ChNha8YfeicBETGFEd7q8bYzJRCkIeQORw6IuA5SemZg/0', '2017-06-17 10:47:47', '', '1', '', '', '0', '-1011', '33528465@yu.com', '19566854474', '-1011', '', '0', '-1011', '莆田', '2017-06-17 10:47:47', '', '王五', '352227XXXXXXXX', 'xxxxxxxxx');
INSERT INTO `mx_users_data` VALUES ('5', 'xzdfd', '123456', '-1', 'o8iGuv4Jsh-18VBI1kd344EpA5Ik', '小郑', 'http://wx.qlogo.cn/mmopen/1Z78kQUUVI1UCblq4Lcw77LumKLMgHC6hnKC725mt9tXpQWmxXDn0ChNha8YfeicBETGFEd7q8bYzJRCkIeQORw6IuA5SemZg/0', '2017-07-01 10:12:18', '', '0', '', '', '0', '-1011', '652145@lj.com', '16632545412', '-1011', '', '0', '-1011', '北京', '2017-07-01 10:12:18', '', '赵六', '352227XXXXXXXX', 'xxxxxxxxx');
INSERT INTO `mx_users_data` VALUES ('6', 'ccwww', '123456', '-1', 'oNYP41CTqRz4KIhuBfWcLIgge_v4', '翠翠', 'http://wx.qlogo.cn/mmopen/LXqicVqwJiatrvczyFY21DUsiayxkibJQibl5KPibcdeFyaNk20V3JAhF8PHIAXfSpB7a9uALGDyViaqsicBzoiah01W6Eib2llSPM3jIv/0', '2017-07-05 22:17:50', '', '2', '', '', '0', '-1011', 'jljhl@jhgg.com', '15933596487', '-1011', '', '0', '-1011', '成都', '2017-07-05 22:17:50', '', '田七', '352227XXXXXXXX', 'xxxxxxxxx');
INSERT INTO `mx_users_data` VALUES ('1001', 'no set', '123456', '-1', 'opKFm0didj2EhmguC7rgvCkK_VkY', '小郑', 'http://wx.qlogo.cn/mmopen/gZ9LWMAZTribiaAHTqTmwLiaib467U5rd6EfOo74v9G9MBKALZIuloDhtvN1E0yYgEu4AlmcZUootdVAWJ2GpibKxia2U84A6myStS/0', '2017-07-15 11:19:05', '', '1', '', '', '0', '-1011', '', '', '-1011', '', '-1', '-1011', '', '2017-07-15 11:19:05', '', '', '352227XXXXXXXX', 'xxxxxxxxx');
INSERT INTO `mx_users_data` VALUES ('1002', 'wUser', '123456', '-1', 'o4bDO1Fmz5jtpy8XyYyy9-axYTmQ', '.', 'http://wx.qlogo.cn/mmopen/u2SLb6S4EqUmvd6nuAmng5rp7JB0VlRmKtYKw4rV2Cy4MS5717P7NXf9e5vncRuaAZsMpVJUUYIC8QLxnl0GsHgZAVo8aJxD/0', '2017-11-13 18:27:59', '', '1', '', '', '0', '0', 'Fjfj@qq.com', '13333333333', '-1', '', '0', '0', '地址古田', '2017-11-13 18:27:59', '古田一中', '测试', '352227199164523764', '');

-- ----------------------------
-- Table structure for `mx_users_reporter_score`
-- ----------------------------
DROP TABLE IF EXISTS `mx_users_reporter_score`;
CREATE TABLE `mx_users_reporter_score` (
  `user_id` int(11) NOT NULL DEFAULT '-1011',
  `team_id` int(11) NOT NULL DEFAULT '-1011',
  `score` double NOT NULL DEFAULT '0',
  `news_num` int(11) NOT NULL DEFAULT '0',
  `comment_num` int(11) NOT NULL DEFAULT '0',
  `praise_clickNum` int(11) NOT NULL DEFAULT '0',
  `judges_score` double NOT NULL DEFAULT '0',
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_users_reporter_score
-- ----------------------------
INSERT INTO `mx_users_reporter_score` VALUES ('5', '2', '500', '100', '200', '1000', '5', null);

-- ----------------------------
-- Table structure for `mx_users_reporter_signup`
-- ----------------------------
DROP TABLE IF EXISTS `mx_users_reporter_signup`;
CREATE TABLE `mx_users_reporter_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '-1011',
  `reporter_teamID` int(11) NOT NULL DEFAULT '-1011',
  `submit_date` datetime NOT NULL,
  `audit_date` datetime NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_users_reporter_signup
-- ----------------------------
INSERT INTO `mx_users_reporter_signup` VALUES ('1', '3', '1', '2017-06-20 21:42:10', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('2', '4', '2', '2017-06-20 21:42:47', '1970-01-01 08:00:00', '1', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('3', '4', '1', '2017-06-28 20:28:51', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('4', '4', '1', '2017-06-28 20:31:50', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('5', '4', '1', '2017-06-28 20:38:31', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('6', '4', '1', '2017-06-28 20:39:43', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('7', '4', '1', '2017-06-28 20:41:14', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('8', '4', '1', '2017-06-28 20:56:08', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('9', '4', '1', '2017-06-29 20:28:08', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('10', '5', '1', '2017-07-01 10:17:25', '1970-01-01 08:00:00', '1', 'no set                                                                                              ');
INSERT INTO `mx_users_reporter_signup` VALUES ('11', '6', '1', '2017-07-05 22:19:55', '1970-01-01 08:00:00', '0', 'no set                                                                                              ');

-- ----------------------------
-- Table structure for `mx_users_reporter_team`
-- ----------------------------
DROP TABLE IF EXISTS `mx_users_reporter_team`;
CREATE TABLE `mx_users_reporter_team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT 'N''鸣心记者团''',
  `team_captainID` int(11) NOT NULL DEFAULT '-1011',
  `people_limit` int(11) NOT NULL DEFAULT '50',
  `team_score` double NOT NULL DEFAULT '0',
  `team_regionID` int(11) NOT NULL DEFAULT '-1011',
  `team_schoolID` int(11) NOT NULL DEFAULT '-1011',
  `team_slogan` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'N''teamSlogan''',
  `team_state` int(11) NOT NULL DEFAULT '-1',
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_users_reporter_team
-- ----------------------------
INSERT INTO `mx_users_reporter_team` VALUES ('1', '小记者1队', '-1011', '50', '0', '-1011', '-1011', 'teamSlogan', '-1', '1905-07-09', '1905-07-09', null);
INSERT INTO `mx_users_reporter_team` VALUES ('2', '小记者2队', '-1011', '50', '0', '-1011', '-1011', 'teamSlogan', '-1', '1905-07-09', '1905-07-09', null);

-- ----------------------------
-- Table structure for `mx_users_tag`
-- ----------------------------
DROP TABLE IF EXISTS `mx_users_tag`;
CREATE TABLE `mx_users_tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''tagName''',
  `user_num` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_users_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `mx_users_type`
-- ----------------------------
DROP TABLE IF EXISTS `mx_users_type`;
CREATE TABLE `mx_users_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'N''typename''',
  `type_power` int(11) NOT NULL DEFAULT '-1',
  `type_describe` text CHARACTER SET utf8 NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mx_users_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sysdiagrams`
-- ----------------------------
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE `sysdiagrams` (
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
