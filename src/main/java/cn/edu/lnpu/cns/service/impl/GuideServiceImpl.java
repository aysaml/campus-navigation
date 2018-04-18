package cn.edu.lnpu.cns.service.impl;

import cn.edu.lnpu.cns.bean.Guide;
import cn.edu.lnpu.cns.bean.GuideVo;
import cn.edu.lnpu.cns.mapper.GuideMapper;
import cn.edu.lnpu.cns.service.GuideService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 导游service
 *
 * @author wangning113
 * @since 2018/4/11
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GuideServiceImpl implements GuideService{

    @Autowired
    private GuideMapper guideMapper;

    /**
     * 增加导游
     *
     * @param guide
     * @return
     */
    @Override
    public Long addGuide(Guide guide) {
        return guideMapper.insertOne(guide);
    }

    /**
     * 删除导游
     *
     * @param userId
     * @param placeId
     * @return
     */
    @Override
    public int deleteGuide(Long userId, Long placeId) {
        Map map = new HashMap<String,Long>(2);
        map.put("userId",userId);
        map.put("placeId",placeId);
        return guideMapper.deleteGuideByUserIdAndPlaceId(map);
    }

    /**
     * 更新导游状态
     *
     * @param userId
     * @param placeId
     * @param yn
     * @return
     */
    @Override
    public int updateYn(String userId, String placeId, String yn) {
        Map map = new HashMap<String,Object>(2);
        map.put("userId",userId);
        map.put("placeId",placeId);
        map.put("yn",yn);
        return guideMapper.updateYnByUserIdAndPlaceId(map);
    }

    /**
     * 查询导游数量
     *
     * @param map
     * @return
     */
    @Override
    public long findGuideCount(Map<String, Object> map) {
        return guideMapper.findGuideCount(map);
    }

    /**
     * 分页查询导游列表
     *
     * @param pageNum
     * @param pageSize
     * @param map
     * @return
     */
    @Override
    public List<GuideVo> findGuideListPage(int pageNum, int pageSize, Map<String, Object> map) {
        PageHelper.startPage(pageNum,pageSize);
        return guideMapper.findGuideListPage(map);
    }
}
