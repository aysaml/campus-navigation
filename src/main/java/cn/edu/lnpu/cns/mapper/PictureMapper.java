package cn.edu.lnpu.cns.mapper;

import cn.edu.lnpu.cns.bean.Picture;

import java.util.List;
import java.util.Map;

/**
 * 图片mapper接口
 *
 * @author wangning113
 * @since 2018/4/9
 */
public interface PictureMapper {

    /**
     * 插入一条记录
     * @param picture
     * @return
     */
    Long insertOne(String picture);

    /**
     * 根据Id删除图片
     * @param id
     * @return
     */
    int deletePictureById(Long id);

    /**
     * 根据id更新图片
     * @param picture1
     * @return
     */
    int updatePictureById(Picture picture1);

    /**
     * 查询图片数量
     * @param map
     * @return
     */
    long findPictureCount(Map<String, Object> map);

    /**
     * 查询图片列表
     * @param map
     * @return
     */
    List<Picture> findPictureListPage(Map<String, Object> map);
}
