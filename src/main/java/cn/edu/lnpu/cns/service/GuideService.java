package cn.edu.lnpu.cns.service;


import cn.edu.lnpu.cns.bean.Guide;
import cn.edu.lnpu.cns.bean.GuideVo;

import java.util.List;
import java.util.Map;

/**
 * 导游service接口
 *
 * @author wangning113
 * @since 2018/4/11
 */
public interface GuideService {

    /**
     * 增加导游
     *
     * @param guide
     * @return
     */
    Long addGuide(Guide guide);

    /**
     * 删除导游
     * @param userId
     * @param placeId
     * @return
     */
    int deleteGuide(Long userId,Long placeId);

    /**
     * 更新导游状态
     * @param userId
     * @param placeId
     * @param yn
     * @return
     */
    int updateYn(String userId, String placeId, String yn);

    /**
     * 查询导游数量
     * @param map
     * @return
     */
    long findGuideCount(Map<String, Object> map);

    /**
     * 分页查询导游列表
     * @param pageNum
     * @param pageSize
     * @param map
     * @return
     */
    List<GuideVo> findGuideListPage(int pageNum, int pageSize, Map<String, Object> map);
}
