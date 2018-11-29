/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : party

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-11-29 17:51:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for circle
-- ----------------------------
DROP TABLE IF EXISTS `circle`;
CREATE TABLE `circle` (
  `cid` int(4) NOT NULL AUTO_INCREMENT,
  `cname` varchar(32) DEFAULT NULL,
  `curl` varchar(128) DEFAULT NULL,
  `cstatue` int(2) DEFAULT NULL,
  `csortid` int(3) DEFAULT NULL,
  `imgid` int(4) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of circle
-- ----------------------------
INSERT INTO `circle` VALUES ('1', 'gdf', 'img/32.jpg', '1', '1', '1');
INSERT INTO `circle` VALUES ('2', 'dsf', 'img/33.jpg', '1', '2', '1');
INSERT INTO `circle` VALUES ('3', 'dfg', 'img/34.jpg', '1', '3', '1');
INSERT INTO `circle` VALUES ('4', 'sd', 'img/35.jpg', '1', '4', '1');
INSERT INTO `circle` VALUES ('5', 'fd', 'img/37.jpg', '1', '5', '1');
