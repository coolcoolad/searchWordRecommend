/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : energy_efficiency

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2016-03-23 22:15:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(8) NOT NULL auto_increment,
  `user_name` varchar(32) NOT NULL,
  `age` int(8) default NULL,
  `gender` varchar(8) default NULL,
  `interest` varchar(32) default NULL,
  `consumption_level` int(8) default NULL,
  `hotel_type` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'ml8Aog20', '18', '女', '温泉', '2', '三星级');
INSERT INTO `user_info` VALUES ('2', 'PB79cRX8', '57', '女', '温泉', '3', '三星级');
INSERT INTO `user_info` VALUES ('3', '4Pf42h2e', '57', '男', '文化古迹', '3', '经济型');
INSERT INTO `user_info` VALUES ('4', 'V6H1pL7D', '31', '男', '文化古迹', '1', '二星级');
INSERT INTO `user_info` VALUES ('5', 'De466f92', '23', '男', '游乐园', '2', '二星级');
INSERT INTO `user_info` VALUES ('6', '7Z466f92', '33', '男', '自然风光', '3', '五星级');
INSERT INTO `user_info` VALUES ('7', '151IsUaD', '57', '女', '滑雪', '5', '四星级');
INSERT INTO `user_info` VALUES ('8', '6jYHx23F', '43', '女', '自然风光', '1', '经济型');
INSERT INTO `user_info` VALUES ('9', 'ix46i5q1', '29', '女', '温泉', '2', '二星级');
INSERT INTO `user_info` VALUES ('10', 'Nm02t336', '43', '女', '文化古迹', '5', '三星级');
INSERT INTO `user_info` VALUES ('11', '7eP3f106', '52', '女', '文化古迹', '2', '三星级');
INSERT INTO `user_info` VALUES ('12', '5N46A2U0', '57', '男', '自然风光', '4', '三星级');
INSERT INTO `user_info` VALUES ('13', '214cwc7G', '25', '女', '滑雪', '4', '二星级');
INSERT INTO `user_info` VALUES ('14', 'jtGd0J09', '19', '男', '温泉', '1', '经济型');
INSERT INTO `user_info` VALUES ('15', '514EXg92', '53', '女', '展馆', '4', '二星级');
INSERT INTO `user_info` VALUES ('16', '549nFWx4', '26', '女', '文化古迹', '2', '经济型');
INSERT INTO `user_info` VALUES ('17', '745K3040', '36', '女', '游乐园', '5', '三星级');
INSERT INTO `user_info` VALUES ('18', '88o8Pa57', '47', '男', '游乐园', '5', '五星级');
INSERT INTO `user_info` VALUES ('19', '291WGcdr', '58', '女', '滑雪', '3', '二星级');
INSERT INTO `user_info` VALUES ('20', '1sJyy9mj', '32', '男', '展馆', '3', '四星级');
INSERT INTO `user_info` VALUES ('21', '1H29h4f2', '47', '女', '展馆', '3', '二星级');
INSERT INTO `user_info` VALUES ('22', '1T69DZ65', '31', '男', '温泉', '5', '五星级');
INSERT INTO `user_info` VALUES ('23', 'MS9H9494', '18', '女', '温泉', '3', '三星级');
INSERT INTO `user_info` VALUES ('24', '434f77r7', '56', '男', '展馆', '4', '五星级');
INSERT INTO `user_info` VALUES ('25', '41N0A57o', '19', '女', '自然风光', '1', '三星级');
INSERT INTO `user_info` VALUES ('26', 's8p43XT0', '35', '女', '温泉', '2', '三星级');
INSERT INTO `user_info` VALUES ('27', 'SW44x0uS', '45', '男', '自然风光', '1', '经济型');
INSERT INTO `user_info` VALUES ('28', '7W733041', '34', '男', '滑雪', '5', '三星级');
INSERT INTO `user_info` VALUES ('29', 'j5gz7631', '39', '女', '文化古迹', '1', '二星级');
INSERT INTO `user_info` VALUES ('30', 'CC3q1sb6', '49', '女', '滑雪', '2', '四星级');
