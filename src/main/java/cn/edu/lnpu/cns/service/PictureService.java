package cn.edu.lnpu.cns.service;

import cn.edu.lnpu.cns.bean.Picture;

import java.util.List;
import java.util.Map;

/**
 * 图片service层接口
 *
 * @author wangning113
 * @since 2018/4/9
 */
public interface PictureService {

    /**
     * 增加图片
     * @param picture
     * @return
     */
    Long addPicture(String picture);

    /**
     * 通过id删除图片
     * @param id
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
     * 分页查询图片列表
     * @param pageNum
     * @param pageSize
     * @param map
     * @return
     */
    List<Picture> findPictureLiatPage(int pageNum, int pageSize, Map<String, Object> map);
}
