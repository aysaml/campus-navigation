package cn.edu.lnpu.cns.mapper;

import org.apache.ibatis.annotations.Param;

/**
 * Created by wangning113 on 2018/1/2.
 */
public interface MenuRoleMapper {
    int deleteMenuByRid(@Param("rid") Long rid);

    int addMenu(@Param("rid") Long rid, @Param("mids") Long[] mids);
}
