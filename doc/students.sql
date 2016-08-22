/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : students

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-11-05 02:32:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT '0',
  `ugrade1` int(11) DEFAULT NULL,
  `ugrade2` int(11) DEFAULT NULL,
  `ugrade3` int(11) DEFAULT NULL,
  `ugrade4` int(11) DEFAULT NULL,
  `egrade1` int(11) DEFAULT NULL,
  `egrade2` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `tgrade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('4', '100001', '没头脑', '12', '13', '10', '11', '25', '20', '60', '55');
INSERT INTO `grade` VALUES ('5', '100002', '不高兴', '25', '25', '25', '25', '45', '45', '90', '91');
INSERT INTO `grade` VALUES ('6', '100003', '图图', '20', '20', '20', '20', '30', '30', '60', '62');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '100000', '管理员', '123456');
INSERT INTO `user` VALUES ('2', '100001', '没头脑', '123456');
INSERT INTO `user` VALUES ('3', '100002', '不高兴', '123456');
INSERT INTO `user` VALUES ('4', '100003', '图图', '123456');
