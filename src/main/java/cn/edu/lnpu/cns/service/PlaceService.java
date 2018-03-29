package cn.edu.lnpu.cns.service;

import cn.edu.lnpu.cns.bean.Place;

import java.util.List;
import java.util.Map;

/**
 * 地点service接口
 *
 * @author wangning113
 * @since 2018/3/29
 */
public interface PlaceService {
    /**
     * 增加一个地点
     * @param place
     * @return 主键
     */
    Long addPlace(Place place);

    /**
     * 根据id删除地点
     * @param id
     * @return
     */
    int deletePlaceById(Long id);

    /**
     * 根据id更新地点
     * @param place
     * @return
     */
    int updatePlaceByid(Place place);

    /**
     * 查询地点数量
     * @param params 搜索关键词
     * @return
     */
    long findPlaceCount(Map params);

    /**
     * 分页查询地点列表
     * @param pageNum 页码
     * @param pageSize 每页条数
     * @param params 查询参数
     * @return
     */
    List<Place> findPlaceListPage(int pageNum,int pageSize,Map params);

    /**
     * 更新有效状态
     * @param yn
     * @param id
     * @return
     */
    int updateYnById(int yn,Long id);

    /**
     * 批量删除
     * @param ids
     * @return
     */
    int batchDeleteByIds(List ids);
}
