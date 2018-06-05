package cn.edu.lnpu.cns.mapper;

import cn.edu.lnpu.cns.bean.UserRecord;

import java.util.List;

/**
 * 用户操作记录DAO
 *
 * @author wangning113
 * @since 2018/6/5
 */
public interface UserRecordMapper {
    /**
     * 获取日志记录数量
     * @return
     */
    int getRecordCount();

    /**
     * 分页查询日志记录
     * @return
     */
    List<UserRecord> getRecordListPage();
}
