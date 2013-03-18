/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50528
Source Host           : 42.121.110.90:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2013-03-18 15:03:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'huozhicheng', 'f3af1bf3643a2917e87862189b074807');
