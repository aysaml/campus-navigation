package cn.edu.lnpu.cns.mapper;

import org.apache.ibatis.annotations.Param;
import cn.edu.lnpu.cns.bean.Role;

import java.util.List;

/**
 * Created by wangning113 on 2018/1/1.
 */
public interface RoleMapper {
    List<Role> roles();

    int addNewRole(@Param("role") String role, @Param("roleZh") String roleZh);

    int deleteRoleById(Long rid);
}
