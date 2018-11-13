package com.jfeat.am.module.statistics.services.crud.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.jfeat.am.module.statistics.services.crud.StatisticsFieldService;
import com.jfeat.am.module.statistics.services.crud.model.StatisticsFieldModel;
import com.jfeat.am.module.statistics.services.domain.dao.QueryStatisticsRecordDao;
import com.jfeat.am.module.statistics.services.persistence.dao.StatisticsFieldMapper;
import com.jfeat.am.module.statistics.services.persistence.dao.StatisticsMetaMapper;
import com.jfeat.am.module.statistics.services.persistence.dao.StatisticsRecordMapper;
import com.jfeat.am.module.statistics.services.persistence.model.StatisticsField;
import com.jfeat.am.module.statistics.services.persistence.model.StatisticsMeta;
import com.jfeat.am.module.statistics.services.persistence.model.StatisticsRecord;
import com.jfeat.crud.base.exception.BusinessCode;
import com.jfeat.crud.base.exception.BusinessException;
import com.jfeat.crud.plus.CRUD;
import com.jfeat.crud.plus.CRUDFilter;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.util.List;

/**
 * <p>
 *  implementation
 * </p>
 *
 * @author Code Generator
 * @since 2017-11-25
 */
@Service
public class StatisticsFieldServiceImpl implements StatisticsFieldService {

    @Resource
    StatisticsFieldMapper statisticsFieldMapper;
    @Resource
    StatisticsMetaMapper statisticsMetaMapper;
    @Resource
    StatisticsRecordMapper statisticsRecordMapper;
    @Resource
    DataSource dataSource;
    @Resource
    QueryStatisticsRecordDao queryStatisticsRecordDao;

    /**
     * 通过域名获取域数据
     */
    @Override
    public StatisticsField getStatisticFieldByName(String field) {
        StatisticsField queryItem = new StatisticsField();
        queryItem.setField(field);
        return statisticsFieldMapper.selectOne(queryItem);
    }

    @Override
    public StatisticsField getStatisticsFieldModel(String field, String identifier) {
        StatisticsField statisticsField = getStatisticFieldByName(field);
        if (statisticsField == null) {
            throw new BusinessException(BusinessCode.BadRequest);
        }

        StatisticsFieldModel model = CRUD.castObject(statisticsField, StatisticsFieldModel.class);


        /// query meta
        List<StatisticsMeta> metas = statisticsMetaMapper.selectList(new EntityWrapper<StatisticsMeta>().eq(StatisticsMeta.FIELD, field));
        if(metas != null && !metas.isEmpty()) {

            model.setMetas(metas);

            /// 如果需要实时查询，跳过获取统计项
            if (statisticsField.getAttrRuntime() > 0) {
                metas.forEach(meta -> {
                   // String sql = meta.getQuerySql();
                    String sql = "SELECT 1 AS seq, '' AS record_timeline, 'total:all:cost@stat:profit:child' AS field, '商品成本价总额' AS record_name, CONCAT( sum( item.cost_price * item.quantity), '元' ) AS record_value, '' AS record_tuple, '' AS record_cluster, '0' AS timeline, '' AS identifier FROM MallWebapp.t_order LEFT JOIN MallWebapp.t_order_item AS item ON item.order_id = t_order.id WHERE t_order.`status` IN( 'PAID_CONFIRM_PENDING', 'CONFIRMED_DELIVER_PENDING', 'DELIVERING', 'DELIVERED_CONFIRM_PENDING', 'CANCELED_RETURN_PENDING', 'CLOSED_CONFIRMED', 'CANCELED_REFUND_PENDING', 'CONFIRMED_PICK_PENDING' )";
                    if (sql.length() > 0) {
                        List<StatisticsRecord> records = queryStatisticsRecordDao.querySql(sql);
                        records.forEach(record -> model.addItem(record));
                    }
                });
                return model;
            }
        }

        // query items
        //
        Wrapper<StatisticsRecord> wrapper = new EntityWrapper<StatisticsRecord>().eq("field", field);
        if(identifier != null && !"".equals(identifier)) {
            wrapper.eq("identifier", identifier);
        }
        wrapper.orderBy("seq,record_tuple");
        List<StatisticsRecord> items = statisticsRecordMapper.selectList(wrapper);
        model.setItems(items);


        return model;
    }

    @Override
    public Integer createMaster(StatisticsField statisticsField) {
        return statisticsFieldMapper.insert(statisticsField);
    }

    @Override
    public Integer createMaster(StatisticsField statisticsField, CRUDFilter<StatisticsField> crudFilter) {
        throw new RuntimeException("fatal: Not support");
    }

    @Override
    public Integer updateMaster(StatisticsField statisticsField) {
        return statisticsFieldMapper.updateAllColumnById(statisticsField);
    }

    @Override
    public Integer updateMaster(StatisticsField statisticsField, CRUDFilter<StatisticsField> crudFilter) {
        throw new RuntimeException("fatal: Not support");
    }

    @Override
    public Integer updateMaster(StatisticsField statisticsField, boolean all) {
        if(all) {
            return statisticsFieldMapper.updateAllColumnById(statisticsField);
        }else{
            return statisticsFieldMapper.updateById(statisticsField);
        }
    }

    @Override
    public StatisticsField retrieveMaster(long id) {
        return statisticsFieldMapper.selectById(id);
    }

    @Override
    public Integer deleteMaster(long l) {
        throw new RuntimeException("fatal: Not support");
    }

    @Override
    public List<StatisticsField> retrieveMasterList() {
        throw new RuntimeException("fatal: Not support");
    }

    @Override
    public Integer bulkDeleteMasterList(List<Long> list) {
        throw new RuntimeException("fatal: Not support");
    }

    @Override
    public Integer bulkAppendMasterList(List<StatisticsField> list) {
        throw new RuntimeException("fatal: Not support");
    }
}
