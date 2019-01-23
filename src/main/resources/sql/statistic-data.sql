-- ------------------------------------------------------------------
-- zero-data 基本测试测试数据
-- ------------------------------------------------------------------
delete from st_statistics_field;
delete from st_statistics_record;
delete from st_statistics_group;
-- ------------------------------------------------------------------
-- Count : Count、CountTimeline、CountCluster、CountTimelineCluster
-- ------------------------------------------------------------------
-- group
INSERT INTO `st_statistics_group` VALUES ('1', null, 'stat:count', 'Grid_1', 'Count统计数据', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('101', '1', 'stat:count:Count', 'MS_right', '子项:Count', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('102', '1', 'stat:count:CountTimeline', 'MS_right', '子项:CountTimeline', '24', '0', null);
-- INSERT INTO `st_statistics_group` VALUES ('103', '1', 'stat:count:CountCluster', 'MS_right', '子项:CountCluster', '24', '0', null);
-- INSERT INTO `st_statistics_group` VALUES ('104', '1', 'stat:count:CountTimelineCluster', 'MS_right', '子项:CountTimelineCluster', '24', '0', null);
-- field
INSERT INTO `st_statistics_field` VALUES ('1', 'test@stat:count:Count', '101', 'stat:count:Count', 'Field:Count', 'Count', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('2', 'test@stat:count:CountTimeline', '102', 'stat:count:CountTimeline', 'Field:CountTimeline', 'CountTimeline', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('3', 'test@stat:count:CountCluster', '103', 'stat:count:CountCluster', 'Field:CountCluster', 'CountCluster', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('4', 'test@stat:count:CountTimelineCluster', '104', 'stat:count:CountTimelineCluster', 'Field:CountTimelineCluster', 'CountTimelineCluster', 'Num', '0', '0', '4', '0');
-- records
INSERT INTO `st_statistics_record`(field,record_name, record_value) VALUES ('test@stat:count:Count', '类型', 'Count');
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_timeline,timeline) VALUES ('test@stat:count:CountTimeline', '类型', 'CountTimeline','今日',1);
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_cluster) VALUES ('test@stat:count:CountCluster', '类型', 'CountCluster','类别一');
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_timeline,timeline,record_cluster) VALUES ('test@stat:count:CountTimelineCluster', '类型', 'CountTimelineCluster','今日',1,'类别一');


-- ------------------------------------------------------------------
-- Rate : Rate、RateTimeline、RateCluster、RateTimelineCluster
-- ------------------------------------------------------------------
-- group
INSERT INTO `st_statistics_group` VALUES ('2', null, 'stat:rate', 'Grid_1', 'Rate统计数据', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('201', '2', 'stat:rate:Rate', 'MS_right', '子项:Rate', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('202', '2', 'stat:rate:RateTimeline', 'MS_right', '子项:RateTimeline', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('203', '2', 'stat:rate:RateCluster', 'MS_right', '子项:RateCluster', '24', '0', null);
-- INSERT INTO `st_statistics_group` VALUES ('204', '2', 'stat:rate:RateTimelineCluster', 'MS_right', '子项:RateTimelineCluster', '24', '0', null);
-- field
INSERT INTO `st_statistics_field` VALUES ('5', 'test@stat:rate:Rate', '201', 'stat:rate:Rate', 'Field:Rate', 'Rate', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('6', 'test@stat:rate:RateTimeline', '202', 'stat:rate:RateTimeline', 'Field:RateTimeline', 'RateTimeline', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('7', 'test@stat:rate:RateCluster', '203', 'stat:rate:RateCluster', 'Field:RateCluster', 'RateCluster', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('8', 'test@stat:rate:RateTimelineCluster', '204', 'stat:rate:RateTimelineCluster', 'Field:RateTimelineCluster', 'RateTimelineCluster', 'Num', '0', '0', '4', '0');
-- records
INSERT INTO `st_statistics_record`(field,record_name, record_value) VALUES ('test@stat:rate:Rate', '类型', 'Rate');
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_timeline,timeline) VALUES ('test@stat:rate:RateTimeline', '类型', 'RateTimeline','今日',1);
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_cluster) VALUES ('test@stat:rate:RateCluster', '类型', 'RateCluster','类别一');
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_timeline,timeline,record_cluster) VALUES ('test@stat:rate:RateTimelineCluster', '类型', 'RateTimelineCluster','今日',1,'类别一');



-- ------------------------------------------------------------------
-- Tuple : Tuple、TupleTimeline、TupleCluster、TupleTimelineCluster
-- ------------------------------------------------------------------
-- group
INSERT INTO `st_statistics_group` VALUES ('3', null, 'stat:tuple', 'Grid_1', 'Tuple统计数据', '1', '0', null);
INSERT INTO `st_statistics_group` VALUES ('301', '3', 'stat:tuple:Tuple', 'MS_right', '子项:Tuple', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('302', '3', 'stat:tuple:TupleTimeline', 'MS_right', '子项:TupleTimeline', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('303', '3', 'stat:tuple:TupleCluster', 'MS_right', '子项:TupleCluster', '24', '0', null);
INSERT INTO `st_statistics_group` VALUES ('304', '3', 'stat:tuple:TupleTimelineCluster', 'MS_right', '子项:TupleTimelineCluster', '24', '0', null);
-- field
INSERT INTO `st_statistics_field` VALUES ('9', 'test@stat:tuple:Tuple', '301', 'stat:tuple:Tuple', 'Field:Tuple', 'Tuple', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('10', 'test@stat:tuple:TupleTimeline', '302', 'stat:tuple:TupleTimeline', 'Field:TupleTimeline', 'TupleTimeline', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('11', 'test@stat:tuple:TupleCluster', '303', 'stat:tuple:TupleCluster', 'Field:TupleCluster', 'TupleCluster', 'Num', '0', '0', '4', '0');
INSERT INTO `st_statistics_field` VALUES ('12', 'test@stat:tuple:TupleTimelineCluster', '304', 'stat:tuple:TupleTimelineCluster', 'Field:TupleTimelineCluster', 'TupleTimelineCluster', 'Num', '0', '0', '4', '0');
-- records
INSERT INTO `st_statistics_record`(field,record_name, record_value) VALUES ('test@stat:tuple:Tuple', '类型', 'Tuple');
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_timeline,timeline) VALUES ('test@stat:tuple:TupleTimeline', '类型', 'TupleTimeline','今日',1);
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_cluster) VALUES ('test@stat:tuple:TupleCluster', '类型', 'TupleCluster','类别一');
INSERT INTO `st_statistics_record`(field,record_name, record_value,record_timeline,timeline,record_cluster) VALUES ('test@stat:tuple:TupleTimelineCluster', '类型', 'TupleTimelineCluster','今日',1,'类别一');







