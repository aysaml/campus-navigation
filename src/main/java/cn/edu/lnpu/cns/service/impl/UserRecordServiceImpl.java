package cn.edu.lnpu.cns.service.impl;

import cn.edu.lnpu.cns.bean.UserRecord;
import cn.edu.lnpu.cns.mapper.UserRecordMapper;
import cn.edu.lnpu.cns.service.UserRecordService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wangning113
 * @since 2018/6/5
 */
@Service
public class UserRecordServiceImpl implements UserRecordService {

    @Autowired
    private UserRecordMapper userRecordMapper;

    /**
     * 获得日志数量
     *
     * @return
     */
    @Override
    public int getRecordCount() {
        return userRecordMapper.getRecordCount();
    }

    /**
     * 分页获取日志记录
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public List<UserRecord> getRecordPageList(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return userRecordMapper.getRecordListPage();
    }
}
