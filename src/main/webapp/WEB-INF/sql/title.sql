/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : party

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-11-29 17:52:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `tid` int(3) NOT NULL AUTO_INCREMENT,
  `tname` varchar(32) NOT NULL,
  `ttime` datetime DEFAULT NULL,
  `tstatue` int(2) DEFAULT NULL,
  `turl` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('1', '官网首页', '2018-11-28 17:39:52', '1', 'main.html');
INSERT INTO `title` VALUES ('2', '业务范围', '2018-11-28 17:40:40', '1', 'manage.html');
INSERT INTO `title` VALUES ('3', '关于我们', '2018-11-28 17:41:05', '1', 'about.html');
INSERT INTO `title` VALUES ('4', '服务保障', '2018-11-28 17:43:19', '1', 'care.html');
INSERT INTO `title` VALUES ('5', '囍事足迹', '2018-11-28 17:44:20', '1', 'party.html');
INSERT INTO `title` VALUES ('6', '联系我们', '2018-11-28 17:45:01', '1', 'call.html');
