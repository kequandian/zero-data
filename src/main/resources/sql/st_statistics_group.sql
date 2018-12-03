SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for st_statistics_group
-- ----------------------------
DROP TABLE IF EXISTS `st_statistics_group`;
CREATE TABLE `st_statistics_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL COMMENT '上级分组',
  `name` varchar(50) NOT NULL COMMENT '组名[唯一标记]',
  `layout` varchar(26) DEFAULT NULL COMMENT '布局名称',
  `title` varchar(26) DEFAULT NULL COMMENT '组标题',
  `span` smallint(6) DEFAULT '1' COMMENT '子分组占父分组的列跨度',
  `index` smallint(6) DEFAULT '0' COMMENT '分组排序号',
  `note` text COMMENT '分组描述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of st_statistics_group
-- ----------------------------
INSERT INTO `st_statistics_group` VALUES ('1', null, 'stat:order', 'Grid_1', '订单统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('2', null, 'stat:sales', 'Grid_4', '销售额统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('3', null, 'stat:product', 'Grid_1', '商品销量', '3', '0', null);
INSERT INTO `st_statistics_group` VALUES ('4', null, 'stat:store', 'Grid_2', '店员业绩', '3', '0', null);
INSERT INTO `st_statistics_group` VALUES ('5', null, 'stat:revenue', 'Grid_4', '营收统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('6', null, 'stat:charge', 'Grid_1', '储值统计(消费订单)', '6', '0', null);
INSERT INTO `st_statistics_group` VALUES ('7', null, 'stat:profit', 'Grid_1', '毛利统计', '5', '0', null);
INSERT INTO `st_statistics_group` VALUES ('8', null, 'stat:b:sales', 'Grid_4', '销量统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('9', null, 'stat:b:store', 'Grid_2', '店铺排行', '2', '0', null);
INSERT INTO `st_statistics_group` VALUES ('10', null, 'stat:vip:consume', 'Compact', '消费记录', '2', '0', null);
INSERT INTO `st_statistics_group` VALUES ('11', null, 'stat:b:home', 'Grid_2', '首页', '2', '0', null);
INSERT INTO `st_statistics_group` VALUES ('101', '1', 'stat:order:count', 'MS_right', '销售订单', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('102', '1', 'stat:order:sum', 'MS_right', '销售金额', '24', '1', null);
INSERT INTO `st_statistics_group` VALUES ('103', '1', 'stat:order:return', 'MS_right', '退货订单', '24', '2', null);
INSERT INTO `st_statistics_group` VALUES ('104', '1', 'stat:order:exchange', 'MS_right', '换货订单', '24', '3', null);
INSERT INTO `st_statistics_group` VALUES ('201', '2', 'stat:sales:store', 'Grid_4', '店铺销售排名', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('301', '3', 'stat:product:all', 'Grid_4', '商品销量', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('401', '4', 'stat:store:assistant', 'Grid_2', '店员业绩', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('501', '5', 'stat:revenue:sales', 'Grid_1', '销售数据', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('502', '5', 'stat:revenue:return', 'Grid_1', '退货数据', '1', '2', null);
INSERT INTO `st_statistics_group` VALUES ('503', '5', 'stat:revenue:business', 'Grid_1', '成交数据', '1', '3', null);
INSERT INTO `st_statistics_group` VALUES ('601', '6', 'stat:charge:child', 'Grid_6', '储值统计(消费订单)', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('701', '7', 'stat:profit:child', 'Grid_6', '毛利统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('801', '8', 'stat:b:sales:child', 'Grid_4', '销量统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('901', '9', 'stat:b:store:child1', 'Grid_2', '店铺统计', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('902', '9', 'stat:b:store:child2', 'Grid_2', '', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('1001', '10', 'stat:vip:consume:line', 'Grid_1', '近六个月的消费记录', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('1002', '10', 'stat:vip:consume:count', 'Grid_1', '分析结果', '1', '1', null);
INSERT INTO `st_statistics_group` VALUES ('1101', '11', 'stat:dashboard:revenue', 'Grid_4', '今日营业概况', '1', '1', null);
INSERT INTO `st_statistics_group` VALUES ('1103', '11', 'stat:dashboard:sales', 'MS_left', '今日销售概况', '20', '1', null);
INSERT INTO `st_statistics_group` VALUES ('1104', '11', 'stat:dashboard:order', 'Grid_6', '订单信息', '20', '1', null);
