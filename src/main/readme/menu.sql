/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : rbac

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2020-09-03 11:53:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '系统管理', '0');
INSERT INTO `menu` VALUES ('2', '销售管理', '0');
INSERT INTO `menu` VALUES ('3', '部门管理', '1');
INSERT INTO `menu` VALUES ('4', '角色管理', '1');
INSERT INTO `menu` VALUES ('5', '权限管理', '1');
INSERT INTO `menu` VALUES ('6', '订单管理', '2');
INSERT INTO `menu` VALUES ('7', '客户管理', '2');
