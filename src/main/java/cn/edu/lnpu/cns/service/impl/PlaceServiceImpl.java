package cn.edu.lnpu.cns.service.impl;

import cn.edu.lnpu.cns.bean.Place;
import cn.edu.lnpu.cns.mapper.PlaceMapper;
import cn.edu.lnpu.cns.service.PlaceService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
/**
 * @author wangning113
 * @since 2018/3/29
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class PlaceServiceImpl implements PlaceService{

    @Autowired
    PlaceMapper placeMapper;
    /**
     * 增加一个地点
     *
     * @param place
     * @return 主键
     */
    @Override
    public Long addPlace(Place place) {
        return placeMapper.insertOne(place);
    }

    /**
     * 根据id删除地点
     *
     * @param id
     * @return
     */
    @Override
    public int deletePlaceById(Long id) {
        return placeMapper.deletePlaceById(id);
    }

    /**
     * 根据id更新地点
     *
     * @param place
     * @return
     */
    @Override
    public int updatePlaceByid(Place place) {
        return placeMapper.updatePlaceByid(place);
    }

    /**
     * 查询地点数量
     *
     * @param params
     * @return
     */
    @Override
    public long findPlaceCount(Map params) {
        return placeMapper.findPlaceCount(params);
    }

    /**
     * 分页查询地点列表
     *
     * @param pageNum  页码
     * @param pageSize 每页条数
     * @param params   查询参数
     * @return
     */
    @Override
    public List<Place> findPlaceListPage(int pageNum, int pageSize, Map params) {
        PageHelper.startPage(pageNum,pageSize);
        return placeMapper.findPlaceListPage(params);
    }

    /**
     * 更新有效状态
     *
     * @param yn
     * @param id
     * @return
     */
    @Override
    public int updateYnById(int yn, Long id) {
        return placeMapper.updateYnById(yn,id);
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @Override
    public int batchDeleteByIds(List ids) {
        if(ids != null && ids.size() != 0){
            return placeMapper.batchDeleteByIds(ids);
        }
      return 0;
    }
}
