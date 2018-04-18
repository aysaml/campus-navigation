package cn.edu.lnpu.cns.mapper;

import cn.edu.lnpu.cns.bean.Guide;
import cn.edu.lnpu.cns.bean.GuideVo;

import java.util.List;
import java.util.Map;

/**
 * 导游mapper接口
 *
 * @author wangning113
 * @since 2018/4/11
 */
public interface GuideMapper {

    /**
     * 插入一条记录
     * @param guide
     * @return
     */
    Long insertOne(Guide guide);

    /**
     * 根据用户id和地点id删除导游
     * @param map
     * @return
     */
    int deleteGuideByUserIdAndPlaceId(Map map);

    /**
     * 根据用户id和地点id更新状态
     * @param map
     * @return
     */
    int updateYnByUserIdAndPlaceId(Map map);

    /**
     * 根据用户名和地点名插找导游数量
     * @param map
     * @return
     */
    long findGuideCount(Map<String, Object> map);

    /**
     * 根据用户名和地点名查询导游信息
     * @param map
     * @return
     */
    List<GuideVo> findGuideListPage(Map<String, Object> map);
}
