
-- ----------------------------
-- Table structure for search_result
-- ----------------------------
DROP TABLE IF EXISTS `search_result`;
CREATE TABLE `search_result` (
  `id` int(8) NOT NULL,
  `search_key` varchar(32) NOT NULL,
  `result` varchar(256) NOT NULL,
  PRIMARY KEY  (`id`)
);

-- ----------------------------
-- Records of search_result
-- ----------------------------
INSERT INTO `search_result` VALUES ('1', '温泉洗浴', '东莫汤泉；青瓦台汤泉；泉美宾馆洗浴');
INSERT INTO `search_result` VALUES ('2', '温泉门票', '香根温泉；芭东会温泉；温泉门票；城投温泉');
INSERT INTO `search_result` VALUES ('3', '温泉票', '温泉度假村；温泉度假酒店');
INSERT INTO `search_result` VALUES ('4', '酒店', '酒店；酒店宾馆；酒店预订；酒店团购');
INSERT INTO `search_result` VALUES ('5', '酒店预订', '酒店预订');
INSERT INTO `search_result` VALUES ('6', '酒店三星', '惠国宾馆；星城酒店；前哨酒店');
INSERT INTO `search_result` VALUES ('7', '温泉', '温泉门票；温泉度假；温泉农家宴');
INSERT INTO `search_result` VALUES ('8', '温泉酒店', '温泉度假酒店；温泉酒店');
INSERT INTO `search_result` VALUES ('9', '酒店公寓', '酒店式服务；酒店式公寓；农家院；快捷公寓');
INSERT INTO `search_result` VALUES ('10', '民俗博物馆', '民俗博物馆');
INSERT INTO `search_result` VALUES ('11', '酒店旅游', '度假酒店；度假公寓');
INSERT INTO `search_result` VALUES ('12', '艺术馆', '5D错觉艺术馆；星空错觉艺术馆');
INSERT INTO `search_result` VALUES ('13', '崂山', '崂山百货；崂山；北九水；崂山巨峰风景区；青岛崂山仰口；二龙山风景区');
INSERT INTO `search_result` VALUES ('14', '主题宾馆', '我的地盘主题酒店；主题宾馆；精品酒店');
INSERT INTO `search_result` VALUES ('15', '附近宾馆', '附近酒店团购；附近酒店预订');
INSERT INTO `search_result` VALUES ('16', '温泉中心', '温泉洗浴中心');
INSERT INTO `search_result` VALUES ('17', '温泉团购', '温泉门票团购；温泉洗浴团购');
INSERT INTO `search_result` VALUES ('18', '葡萄酒博物馆', '即墨老酒博物馆；葡萄酒博物馆；葡萄酒博物馆门票团购');
INSERT INTO `search_result` VALUES ('19', '钟点房', '钟点房3小时；钟点房4小时；钟点房6小时');
INSERT INTO `search_result` VALUES ('20', '便捷酒店', '快捷酒店；便捷酒店');
INSERT INTO `search_result` VALUES ('21', '酒店团购', '酒店整晚团购；酒店预付团购');
INSERT INTO `search_result` VALUES ('22', '高档温泉', '豪华温泉；天然温泉泡池；私人泡池');
INSERT INTO `search_result` VALUES ('23', '温泉会所', '温泉会所；Lalu温泉会所');
INSERT INTO `search_result` VALUES ('24', '私人温泉', '私人温泉中心；个人温泉');
INSERT INTO `search_result` VALUES ('25', '酒店套房', '香格里拉大酒店；海景花园大酒店；海尔洲际酒店；丽晶酒店；景园假日酒店');
INSERT INTO `search_result` VALUES ('26', '套间', '套房预定；商务房');
INSERT INTO `search_result` VALUES ('27', '文艺馆', '伯乐文艺馆；文艺馆门票');
INSERT INTO `search_result` VALUES ('28', '啤酒博物馆', '啤酒博物馆；啤酒博物馆门票');
INSERT INTO `search_result` VALUES ('29', '游乐园', '方特乐园；发现王国；梦幻王国');
INSERT INTO `search_result` VALUES ('30', '八大关', '八大关；八大关宾馆；八大关美食；八大关住宿');
INSERT INTO `search_result` VALUES ('31', '栈桥', '栈桥观光；栈桥公园；栈桥火车站');
INSERT INTO `search_result` VALUES ('32', '滑雪', '滑雪场全价票；灵珠山滑雪场');
INSERT INTO `search_result` VALUES ('33', '滑雪门票', '滑雪门票；滑雪门票团购；滑雪套票');
INSERT INTO `search_result` VALUES ('34', '滑雪团购', '滑雪学生票团购；滑雪优惠票');
INSERT INTO `search_result` VALUES ('35', '王陵', '明朝王陵；元朝王陵；宋朝王陵；清朝王陵');
INSERT INTO `search_result` VALUES ('36', '太清宫', '太清宫游览区；太清单程索道成人票');
INSERT INTO `search_result` VALUES ('37', '滑雪票', '金山滑雪场；滑雪成人票；滑雪学生票；滑雪平日票');
INSERT INTO `search_result` VALUES ('38', '电台旧址', '电台旧址；电台旧址门票；电台旧址团购；电台旧址游览');
INSERT INTO `search_result` VALUES ('39', '蒲松龄书馆', '蒲松龄书馆；书馆门票；蒲松龄');
INSERT INTO `search_result` VALUES ('40', '宾馆钟点房', '钟点房；宾馆；钟点房预订');
INSERT INTO `search_result` VALUES ('41', '八大峡', '八大峡；八大峡潜水体验门票');
INSERT INTO `search_result` VALUES ('42', '水上游乐园', '宝龙乐园；即墨玫瑰小镇客栈；游乐油儿童乐园；海上嘉年华');
INSERT INTO `search_result` VALUES ('43', '滑雪场', '天泰假日温泉滑雪场；必捷滑雪场；北宅滑雪场');
INSERT INTO `search_result` VALUES ('44', '儿童游乐园', '欢动乐园；精灵童乐园；悠游堂');
INSERT INTO `search_result` VALUES ('45', '宝宝游乐园', '宝贝来了泳动乐园；宝贝空间；洋宝宝儿童娱乐城；马博士婴儿游泳馆');
INSERT INTO `search_result` VALUES ('46', '信号山', '信号山门票；信号山公园；信号山团购；信号山公园成人票');


