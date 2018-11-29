/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : party

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-11-29 17:52:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL COMMENT '主键ID，自增长ID',
  `username` varchar(32) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '注册邮箱地址',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` int(11) DEFAULT '0' COMMENT '性别：0保密，1男性，2女性',
  `job` int(11) DEFAULT NULL COMMENT '工作',
  `face_image` varchar(20) DEFAULT NULL COMMENT '头像',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `district` varchar(20) DEFAULT NULL COMMENT '区',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `auth_salt` varchar(50) DEFAULT NULL COMMENT '认证',
  `last_login_ip` varchar(100) DEFAULT NULL COMMENT '登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除',
  `regist_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('', '白白', '123456', 'baishuai88088@163.com', '28', '1', null, null, '河北', '邢台', '沙河', '家属院', '123', null, null, '0', '2018-11-28 14:50:12', null);
