package cn.edu.lnpu.cns.service;

import cn.edu.lnpu.cns.bean.UserRecord;

import java.util.List;

/**
 * 用户记录服务接口
 *
 * @author wangning113
 * @since 2018/6/5
 */
public interface UserRecordService {
    /**
     * 获得日志数量
     * @return
     */
    int getRecordCount();

    /**
     * 分页获取日志记录
     * @param pageNum
     * @param pageSize
     * @return
     */
    List<UserRecord> getRecordPageList(int pageNum, int pageSize);
}
