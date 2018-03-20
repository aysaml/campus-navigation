package cn.edu.lnpu.cns.mapper;

import org.apache.ibatis.annotations.Param;
import cn.edu.lnpu.cns.bean.JobLevel;

import java.util.List;

/**
 * Created by wangning113 on 2018/1/11.
 */
public interface JobLevelMapper {
    JobLevel getJobLevelByName(String name);

    int addJobLevel(@Param("jobLevel") JobLevel jobLevel);

    List<JobLevel> getAllJobLevels();

    int deleteJobLevelById(@Param("ids") String[] ids);

    int updateJobLevel(@Param("jobLevel") JobLevel jobLevel);
}
