
-- ----------------------------
-- Table structure for user_search_info
-- ----------------------------
DROP TABLE IF EXISTS `user_search_info`;
CREATE TABLE `user_search_info` (
  `id` int(8) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `search_key` varchar(32) NOT NULL,
  `search_time` int(8) NOT NULL,
  PRIMARY KEY  (`id`)
);

-- ----------------------------
-- Records of user_search_info
-- ----------------------------
INSERT INTO `user_search_info` VALUES ('1', 'ml8Aog20', '温泉洗浴', '4');
INSERT INTO `user_search_info` VALUES ('2', 'ml8Aog20', '温泉门票', '7');
INSERT INTO `user_search_info` VALUES ('3', 'ml8Aog20', '温泉票', '3');
INSERT INTO `user_search_info` VALUES ('4', 'ml8Aog20', '酒店', '4');
INSERT INTO `user_search_info` VALUES ('5', 'ml8Aog20', '酒店预订', '6');
INSERT INTO `user_search_info` VALUES ('6', 'ml8Aog20', '酒店三星', '5');
INSERT INTO `user_search_info` VALUES ('7', 'PB79cRX8', '温泉', '8');
INSERT INTO `user_search_info` VALUES ('8', 'PB79cRX8', '温泉门票', '5');
INSERT INTO `user_search_info` VALUES ('9', 'PB79cRX8', '温泉酒店', '2');
INSERT INTO `user_search_info` VALUES ('10', 'PB79cRX8', '酒店公寓', '3');
INSERT INTO `user_search_info` VALUES ('11', 'PB79cRX8', '酒店旅游', '1');
INSERT INTO `user_search_info` VALUES ('12', 'ix46i5q1', '温泉洗浴', '3');
INSERT INTO `user_search_info` VALUES ('13', 'ix46i5q1', '温泉票', '9');
INSERT INTO `user_search_info` VALUES ('14', 'ix46i5q1', '主题宾馆', '2');
INSERT INTO `user_search_info` VALUES ('15', 'ix46i5q1', '附近宾馆', '4');
INSERT INTO `user_search_info` VALUES ('16', 'jtGd0K09', '温泉中心', '3');
INSERT INTO `user_search_info` VALUES ('17', 'jtGd0K09', '温泉团购', '7');
INSERT INTO `user_search_info` VALUES ('18', 'jtGd0K09', '温泉', '4');
INSERT INTO `user_search_info` VALUES ('19', 'jtGd0K09', '钟点房', '2');
INSERT INTO `user_search_info` VALUES ('20', 'jtGd0K09', '便捷酒店', '6');
INSERT INTO `user_search_info` VALUES ('21', 'jtGd0K09', '酒店团购', '5');
INSERT INTO `user_search_info` VALUES ('22', '1T69DZ65', '高档温泉', '6');
INSERT INTO `user_search_info` VALUES ('23', '1T69DZ65', '温泉会所', '3');
INSERT INTO `user_search_info` VALUES ('24', '1T69DZ65', '私人温泉', '2');
INSERT INTO `user_search_info` VALUES ('25', '1T69DZ65', '酒店套房', '7');
INSERT INTO `user_search_info` VALUES ('26', '1T69DZ65', '套间', '4');
INSERT INTO `user_search_info` VALUES ('27', 'MS9H9494', '温泉门票', '3');
INSERT INTO `user_search_info` VALUES ('28', 'MS9H9494', '温泉酒店', '2');
INSERT INTO `user_search_info` VALUES ('29', 'MS9H9494', '温泉团购', '4');
INSERT INTO `user_search_info` VALUES ('30', 'MS9H9494', '酒店预订', '4');
INSERT INTO `user_search_info` VALUES ('31', 'MS9H9494', '酒店旅行', '3');
INSERT INTO `user_search_info` VALUES ('32', 's8p43XT0', '温泉', '4');
INSERT INTO `user_search_info` VALUES ('33', 's8p43XT0', '温泉洗浴', '5');
INSERT INTO `user_search_info` VALUES ('34', 's8p43XT0', '温泉中心', '2');
INSERT INTO `user_search_info` VALUES ('35', 's8p43XT0', '酒店三星', '6');
INSERT INTO `user_search_info` VALUES ('36', '4Pf42h2e', '王陵', '4');
INSERT INTO `user_search_info` VALUES ('37', '4Pf42h2e', '太清宫', '3');
INSERT INTO `user_search_info` VALUES ('38', '4Pf42h2e', '便捷酒店', '6');
INSERT INTO `user_search_info` VALUES ('39', 'V6H1pL7D', '电台旧址', '3');
INSERT INTO `user_search_info` VALUES ('40', 'V6H1pL7D', '蒲松龄书馆', '4');
INSERT INTO `user_search_info` VALUES ('41', 'V6H1pL7D', '王陵', '2');
INSERT INTO `user_search_info` VALUES ('42', 'V6H1pL7D', '宾馆钟点房', '5');
INSERT INTO `user_search_info` VALUES ('43', 'V6H1pL7D', '附近宾馆', '6');
INSERT INTO `user_search_info` VALUES ('44', 'De466f92', '水上游乐园', '3');
INSERT INTO `user_search_info` VALUES ('45', 'De466f92', '游乐园', '6');
INSERT INTO `user_search_info` VALUES ('46', 'De466f92', '主题宾馆', '4');
INSERT INTO `user_search_info` VALUES ('47', 'De466f92', '酒店公寓', '1');
INSERT INTO `user_search_info` VALUES ('48', '7Z46468E', '栈桥', '4');
INSERT INTO `user_search_info` VALUES ('49', '7Z46468E', '八大峡', '6');
INSERT INTO `user_search_info` VALUES ('50', '7Z46468E', '信号山', '3');
INSERT INTO `user_search_info` VALUES ('51', '7Z46468E', '套间', '5');
INSERT INTO `user_search_info` VALUES ('52', '7Z46468E', '便捷酒店', '1');
INSERT INTO `user_search_info` VALUES ('53', 'Nm02t336', '太清宫', '3');
INSERT INTO `user_search_info` VALUES ('54', 'Nm02t336', '蒲松龄书馆', '4');
INSERT INTO `user_search_info` VALUES ('55', 'Nm02t336', '酒店公寓', '6');
INSERT INTO `user_search_info` VALUES ('56', 'Nm02t336', '酒店套房', '2');
INSERT INTO `user_search_info` VALUES ('57', '7ep3f106', '王陵', '5');
INSERT INTO `user_search_info` VALUES ('58', '7ep3f106', '电台旧址', '8');
INSERT INTO `user_search_info` VALUES ('59', '7ep3f106', '太清宫', '2');
INSERT INTO `user_search_info` VALUES ('60', '7ep3f106', '酒店旅游', '4');
INSERT INTO `user_search_info` VALUES ('61', '7ep3f106', '酒店', '7');
INSERT INTO `user_search_info` VALUES ('62', '549nFWx4', '蒲松龄旧址', '4');
INSERT INTO `user_search_info` VALUES ('63', '549nFWx4', '王陵', '3');
INSERT INTO `user_search_info` VALUES ('64', '549nFWx4', '便捷酒店', '6');
INSERT INTO `user_search_info` VALUES ('65', 'j5gz7631', '蒲松龄书馆', '3');
INSERT INTO `user_search_info` VALUES ('66', 'j5gz7631', '附近宾馆', '8');
INSERT INTO `user_search_info` VALUES ('67', '745K3040', '水上游乐园', '4');
INSERT INTO `user_search_info` VALUES ('68', '745K3040', '儿童游乐园', '7');
INSERT INTO `user_search_info` VALUES ('69', '745K3040', '宝宝游乐园', '3');
INSERT INTO `user_search_info` VALUES ('70', '745K3040', '酒店套房', '2');
INSERT INTO `user_search_info` VALUES ('71', '745K3040', '酒店公寓', '5');
INSERT INTO `user_search_info` VALUES ('72', '88o8Pa57', '儿童游乐园', '2');
INSERT INTO `user_search_info` VALUES ('73', '88o8Pa57', '游乐园', '7');
INSERT INTO `user_search_info` VALUES ('74', '88o8Pa57', '套间', '6');
INSERT INTO `user_search_info` VALUES ('75', '88o8Pa57', '酒店预订', '2');
INSERT INTO `user_search_info` VALUES ('76', '151IsUad', '滑雪场', '5');
INSERT INTO `user_search_info` VALUES ('77', '151IsUad', '滑雪票', '3');
INSERT INTO `user_search_info` VALUES ('78', '151IsUad', '酒店套房', '4');
INSERT INTO `user_search_info` VALUES ('79', '6jYHx23F', '崂山', '2');
INSERT INTO `user_search_info` VALUES ('80', '6jYHx23F', '八大关', '5');
INSERT INTO `user_search_info` VALUES ('81', '6jYHx23F', '栈桥', '6');
INSERT INTO `user_search_info` VALUES ('82', '6jYHx23F', '酒店团购', '5');
INSERT INTO `user_search_info` VALUES ('83', '6jYHx23F', '酒店公寓', '1');
INSERT INTO `user_search_info` VALUES ('84', '5N46A2U0', '八大峡', '5');
INSERT INTO `user_search_info` VALUES ('85', '5N46A2U0', '崂山', '2');
INSERT INTO `user_search_info` VALUES ('86', '5N46A2U0', '酒店预订', '5');
INSERT INTO `user_search_info` VALUES ('87', '214cwc7G', '滑雪团购', '4');
INSERT INTO `user_search_info` VALUES ('88', '214cwc7G', '滑雪门票', '3');
INSERT INTO `user_search_info` VALUES ('89', '214cwc7G', '滑雪票', '7');
INSERT INTO `user_search_info` VALUES ('90', '291WGcdr', '滑雪', '6');
INSERT INTO `user_search_info` VALUES ('91', '291WGcdr', '附近宾馆', '5');
INSERT INTO `user_search_info` VALUES ('92', '7W733041', '滑雪门票', '3');
INSERT INTO `user_search_info` VALUES ('93', '7W733041', '滑雪团购', '5');
INSERT INTO `user_search_info` VALUES ('94', '7W733041', '酒店公寓', '5');
INSERT INTO `user_search_info` VALUES ('95', 'CC3q1sb6', '滑雪门票', '5');
INSERT INTO `user_search_info` VALUES ('96', 'CC3q1sb6', '滑雪', '2');
INSERT INTO `user_search_info` VALUES ('97', '41N0A57o', '八大关', '7');
INSERT INTO `user_search_info` VALUES ('98', '41N0A57o', '栈桥', '5');
INSERT INTO `user_search_info` VALUES ('99', '41N0A57o', '酒店', '3');
INSERT INTO `user_search_info` VALUES ('100', '41N0A57o', '酒店旅行', '6');
INSERT INTO `user_search_info` VALUES ('101', 'SW44x0uS', '崂山', '4');
INSERT INTO `user_search_info` VALUES ('102', '514eXg92', '啤酒博物馆', '3');
INSERT INTO `user_search_info` VALUES ('103', '514eXg92', '文艺馆', '4');
INSERT INTO `user_search_info` VALUES ('104', '514eXg92', '附近宾馆', '3');
INSERT INTO `user_search_info` VALUES ('105', '1SJyy9mj', '葡萄酒博物馆', '4');
INSERT INTO `user_search_info` VALUES ('106', '1SJyy9mj', '民俗博物馆', '5');
INSERT INTO `user_search_info` VALUES ('107', '1SJyy9mj', '艺术馆', '5');
INSERT INTO `user_search_info` VALUES ('108', '1H29h4f2', '艺术馆', '1');
INSERT INTO `user_search_info` VALUES ('109', '1H29h4f2', '民俗博物馆', '4');
INSERT INTO `user_search_info` VALUES ('110', '1H29h4f2', '主题宾馆', '2');
INSERT INTO `user_search_info` VALUES ('111', '1H29h4f2', '酒店公寓', '5');
INSERT INTO `user_search_info` VALUES ('112', '434f77r7', '葡萄酒博物馆', '8');
INSERT INTO `user_search_info` VALUES ('113', '434f77r7', '套间', '5');
