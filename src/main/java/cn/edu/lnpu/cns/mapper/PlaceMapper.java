package cn.edu.lnpu.cns.mapper;

import cn.edu.lnpu.cns.bean.Place;

import java.util.List;
import java.util.Map;
/**
 * 地点Mapper
 *
 * @author wangning113
 * @since 2018/3/29
 */
public interface PlaceMapper {

    Long insertOne(Place place);

    int deletePlaceById(Long id);

    int updatePlaceByid(Place place);

    long findPlaceCount(Map params);

    List<Place> findPlaceListPage(Map params);

    int updateYnById(int yn, Long id);

    int batchDeleteByIds(List ids);
}
