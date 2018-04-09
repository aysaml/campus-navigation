package cn.edu.lnpu.cns.controller;

import cn.edu.lnpu.cns.bean.Picture;
import cn.edu.lnpu.cns.service.PictureService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 图片controller
 *
 * @author wangning113
 * @since 2018/4/9
 */
@RestController
@RequestMapping("/picture/manage")
public class PictureController {

    @Autowired
    private PictureService pictureService;

    /**
     * 增加图片
     * @param picture
     * @return
     */
    @RequestMapping("/add")
    public int addPicture(@RequestParam("picture") String picture){
        if(picture != null){
            Picture picture1 = JSON.parseObject(picture,Picture.class);
            pictureService.addPicture(picture);
            return 0;
        }else{
            throw new IllegalArgumentException("添加图片不能为空");
        }
    }

    /**
     * 删除图片
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    public int delPicture(@RequestParam("id") String id){
        if(id != null){
            pictureService.deletePictureById(Long.valueOf(id));
            return 0;
        }else{
            throw new IllegalArgumentException("删除图片Id不能为空");
        }
    }

    /**
     * 更新图片
     * @param picture
     * @return
     */
    @RequestMapping("/update")
    public int updatePicture(@RequestParam("picture") String picture){
        if(picture != null && picture != ""){
            Picture picture1 = JSON.parseObject(picture,Picture.class);
            pictureService.updatePictureById(picture1);
            return 0;
        }else{
            throw new IllegalArgumentException("更新图片参数错误！");
        }
    }

    /**
     * 查询图片数量
     * @return
     */
    @RequestMapping("/findPictureCount")
    public long findPictureCount(@RequestParam("picName") String picName,@RequestParam("yn") String yn){
        Map<String,Object> map = new HashMap<>(2);
        if(picName != null && picName != ""){
            map.put("picName",picName);
        }else{
            map.put("picName",null);
        }

        if(yn != null && yn != ""){
            map.put("yn",yn);
        }else{
            map.put("yn",null);
        }
        return pictureService.findPictureCount(map);
    }

    /**
     * 分页查询图片
     * @param num
     * @param size
     * @param picName
     * @param yn
     * @return
     */
    @RequestMapping("/findPictureListPage")
    public String findPictureListPage(@RequestParam("pageNum") String num,@RequestParam("pageSize") String size,@RequestParam("picName") String picName,@RequestParam("yn") String yn){
        int pageNum = Integer.parseInt(num);
        int pageSize = Integer.parseInt(size);
        Map<String,Object> map = new HashMap<>(2);
        if(picName != null && picName != ""){
            map.put("picName",picName);
        }else{
            map.put("picName",null);
        }

        if(yn != null && yn != ""){
            map.put("yn",yn);
        }else{
            map.put("yn",null);
        }
        List<Picture> lIST = pictureService.findPictureLiatPage(pageNum,pageSize,map);
        return JSON.toJSONString(lIST);
    }
}
