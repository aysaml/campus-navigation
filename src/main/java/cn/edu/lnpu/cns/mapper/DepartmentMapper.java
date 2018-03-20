package cn.edu.lnpu.cns.mapper;

import org.apache.ibatis.annotations.Param;
import cn.edu.lnpu.cns.bean.Department;

import java.util.List;

/**
 * Created by wangning113 on 2018/1/7.
 */
public interface DepartmentMapper {
    void addDep(@Param("dep") Department department);

    void deleteDep(@Param("dep") Department department);

    List<Department> getDepByPid(Long pid);

    List<Department> getAllDeps();
}
