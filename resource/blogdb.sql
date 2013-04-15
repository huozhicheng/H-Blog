/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2013-04-15 16:27:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `postsid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键标识',
  `userid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章作者',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '文章日期',
  `content` longtext NOT NULL COMMENT '文章内容',
  `title` text NOT NULL COMMENT '文章标题',
  PRIMARY KEY (`postsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '10', '2013-04-05 20:16:20', '这是测试文章的内容，哈哈哈哈', '这是标题');
INSERT INTO `posts` VALUES ('2', '10', '2013-04-05 20:26:14', '日期测试', 'hello');
INSERT INTO `posts` VALUES ('3', '10', '2013-04-02 20:31:29', '日期测试', 'hello2');
INSERT INTO `posts` VALUES ('4', '10', '2013-04-05 20:28:43', '日期', '合理l');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键标识',
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT 'email',
  `registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10', 'huozhicheng', 'f3af1bf3643a2917e87862189b074807', 'huozhicheng@gmaill.com', '2013-04-01 16:44:38');
