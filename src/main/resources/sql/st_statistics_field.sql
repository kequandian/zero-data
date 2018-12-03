SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for st_statistics_field
-- ----------------------------
DROP TABLE IF EXISTS `st_statistics_field`;
CREATE TABLE `st_statistics_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `field` varchar(80) NOT NULL COMMENT '数据域唯一标识符',
  `group_id` bigint(20) DEFAULT NULL COMMENT '所属分组ID',
  `group_name` varchar(50) NOT NULL COMMENT '所属分组名称',
  `name` varchar(50) NOT NULL COMMENT '数据域名称',
  `pattern` varchar(26) NOT NULL COMMENT '统计数据类型[Count,Rate,Tuple [Timeline,Cluster]]',
  `chart` varchar(26) NOT NULL COMMENT '标准组件图表名称',
  `attr_invisible` smallint(6) DEFAULT '0' COMMENT '[属性]是否不可见',
  `attr_runtime` smallint(6) DEFAULT '0' COMMENT '是否实时查询[via meta]',
  `attr_span` smallint(6) DEFAULT '1' COMMENT '[属性]所占布局跨列数',
  `attr_index` smallint(6) DEFAULT '0' COMMENT '[属性]排序号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of st_statistics_field
-- ----------------------------
INSERT INTO `st_statistics_field` VALUES ('1', 'total:curmon:count@stat:order:count', '101', 'stat:order:count', '本月订单总数', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('2', 'total:curweek:count@stat:order:count', '101', 'stat:order:count', '本周订单总数', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('3', 'total:graph:count@stat:order:count', '101', 'stat:order:count', '订单统计', 'RateTimeline', 'LineTimeline', '0', '1', '20', '0');
INSERT INTO `st_statistics_field` VALUES ('4', 'total:curmon:sum@stat:order:sum', '102', 'stat:order:sum', '本月销售总额', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('5', 'total:curweek:sum@stat:order:sum', '102', 'stat:order:sum', '本周销售总额', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('6', 'total:graph:sum@stat:order:sum', '102', 'stat:order:sum', '销售统计', 'RateTimeline', 'LineTimeline', '0', '1', '20', '0');
INSERT INTO `st_statistics_field` VALUES ('7', 'return:total:curmon:sum@stat:order:return', '103', 'stat:order:return', '本月退货总额', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('8', 'return:total:curweek:sum@stat:order:return', '103', 'stat:order:return', '本周退货总额', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('9', 'return:total:graph:sum@stat:order:return', '103', 'stat:order:return', '退货统计', 'RateTimeline', 'LineTimeline', '0', '1', '20', '0');
INSERT INTO `st_statistics_field` VALUES ('10', 'exchange:total:curmon:sum@stat:order:exchange', '104', 'stat:order:exchange', '本月换货总额', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('11', 'exchange:total:curweek:sum@stat:order:exchange', '104', 'stat:order:exchange', '本周换货总额', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('12', 'exchange:total:graph:sum@stat:order:exchange', '104', 'stat:order:exchange', '换货统计', 'RateTimeline', 'LineTimeline', '0', '1', '20', '0');
INSERT INTO `st_statistics_field` VALUES ('13', 'total:curmon:rank@stat:sales:store', '201', 'stat:sales:store', '店铺销售排名', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('14', 'total:today:rank@stat:sales:store', '201', 'stat:sales:store', '店铺销售排名', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('15', 'total:today:all@stat:product:all', '301', 'stat:product:all', '今日销量', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('16', 'total:curmon:all@stat:product:all', '301', 'stat:product:all', '本月累计销量', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('17', 'total:now:all@stat:product:all', '301', 'stat:product:all', '剩余总库存', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('18', 'total:today:assistant@stat:store:assistant', '401', 'stat:store:assistant', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('19', 'total:curmon:assistant@stat:store:assistant', '401', 'stat:store:assistant', '', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('20', 'total:all:sales@stat:revenue:sales', '501', 'stat:revenue:sales', '销售数据', 'RateTimeline', 'GroupCardTimeline', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('21', 'total:all:return@stat:revenue:return', '502', 'stat:revenue:return', '退货数据', 'RateTimeline', 'GroupCardTimeline', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('22', 'total:all:business@stat:revenue:business', '503', 'stat:revenue:business', '成交数据', 'RateTimeline', 'GroupCardTimeline', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('23', 'total:all:charge@stat:charge:child', '601', 'stat:charge:child', '实际储值充值', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('24', 'total:all:gift:charge@stat:charge:child', '601', 'stat:charge:child', '赠送储值充值', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('25', 'total:all:consume@stat:charge:child', '601', 'stat:charge:child', '消费实际储值', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('26', 'total:all:gitf:consume@stat:charge:child', '601', 'stat:charge:child', '消费赠送储值', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('27', 'total:all:balance@stat:charge:child', '601', 'stat:charge:child', '实际储值余额', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('28', 'total:all:gift:balance@stat:charge:child', '601', 'stat:charge:child', '赠送储值余额', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('29', 'total:all:cost@stat:profit:child', '701', 'stat:profit:child', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('30', 'total:all:sell@stat:profit:child', '701', 'stat:profit:child', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('31', 'total:all:discounted@stat:profit:child', '701', 'stat:profit:child', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('32', 'total:all:profit@stat:profit:child', '701', 'stat:profit:child', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('33', 'total:all:rate@stat:profit:child', '701', 'stat:profit:child', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('34', 'total:all:count@stat:b:sales:child', '801', 'stat:b:sales:child', '', 'TupleTimelineCluster', 'Table', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('35', 'total:sales:sum@stat:b:store:child', '901', 'stat:b:store:child', '  销售金额', 'RateTimeline', 'BarTimeline', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('36', 'total:sales:count@stat:b:store:child', '901', 'stat:b:store:child', '  销售(订单)数量 ', 'RateTimeline', 'BarTimeline', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('37', 'total:account:count@stat:b:store:child', '902', 'stat:b:store:child', '  会员数量', 'RateTimeline', 'BarTimeline', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('38', 'total:sales:sum@stat:vip:consume:line', '1001', 'stat:vip:consume:line', '', 'Rate', 'Bar', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('39', 'total:sales:sum@stat:vip:consume:count', '1002', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('40', 'total:today:sales@stat:dashboard:revenue', '1101', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('41', 'total:today:discount@stat:dashboard:revenue', '1101', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('42', 'total:today:revenue@stat:dashboard:revenue', '1101', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('43', 'total:today:count@stat:dashboard:revenue', '1101', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('44', 'total:stat:br@stat:dashboard:br', '1102', 'stat:vip:consume:count', '', 'Count', 'Br', '0', '0', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('45', 'total:sum:per@stat:dashboard:sales', '1103', 'stat:vip:consume:count', '', 'Rate', 'ColumnChain', '0', '1', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('46', 'total:count:per@stat:dashboard:sales', '1103', 'stat:vip:consume:count', '', 'Rate', 'ColumnChain', '0', '1', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('47', 'total:today:stat@stat:dashboard:sales', '1103', 'stat:vip:consume:count', '销售额|销售单数', 'Rate', 'BarGroup_2', '0', '1', '20', '0');
INSERT INTO `st_statistics_field` VALUES ('48', 'total:all:count@stat:dashboard:order', '1104', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('49', 'total:pending:deliver@stat:dashboard:order', '1104', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('50', 'total:pending:pick@stat:dashboard:order', '1104', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('51', 'total:pending:refund@stat:dashboard:order', '1104', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
INSERT INTO `st_statistics_field` VALUES ('52', 'total:pending:return@stat:dashboard:order', '1104', 'stat:vip:consume:count', '', 'Rate', 'GroupCard', '0', '1', '1', '0');
