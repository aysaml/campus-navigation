package cn.edu.lnpu.cns.controller;

import cn.edu.lnpu.cns.bean.Guide;
import cn.edu.lnpu.cns.bean.GuideVo;
import cn.edu.lnpu.cns.service.GuideService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**
 * 导游controller
 *
 * @author wangning113
 * @since 2018/4/11
 */
@RestController
@RequestMapping("/guide/manage")
public class GuideController {

    @Autowired
    private GuideService guideService;

    /**
     * 增加导游
     * @param guide
     * @return
     */
    @RequestMapping("/add")
    public int addGuide(@RequestParam("guide") String guide){
        if(guide != null && guide != ""){
            Guide guide1 = JSON.parseObject(guide,Guide.class);
            guideService.addGuide(guide1);
            return 0;
        }else{
            throw new IllegalArgumentException("增加导游参数不能为空!");
        }
    }

    /**
     * 根据用户id和地点id删除导游
     * @return
     */
    @RequestMapping("/delete")
    public int deleteGuide(@RequestParam("userId") String userId,@RequestParam("placeId") String placeId){
        if(userId != null && userId != "" && placeId != null && placeId != ""){
            guideService.deleteGuide(Long.valueOf(userId),Long.valueOf(placeId));
            return 0;
        }else{
            throw new IllegalArgumentException("删除导游参数不能为空!");
        }
    }

    /**
     * 更新导游状态
     * @param userId
     * @param placeId
     * @param yn
     * @return
     */
    @RequestMapping("/updateYn")
    public int updateYn(@RequestParam("userId") String userId,@RequestParam("placeId") String placeId,@RequestParam("yn") String yn){
        if(userId != null && userId != "" && placeId != null && placeId != "" && yn != null && yn != ""){
            guideService.updateYn(userId,placeId,yn);
            return 0;
        }else{
            throw new IllegalArgumentException("更新导游状态参数错误!");
        }
    }

    @RequestMapping("/findGuideCount")
    public long findGuideCount(@RequestParam("userName") String userName,@RequestParam("placeName") String placeName){
        Map<String,Object> map = new HashMap<String,Object>(2);
        if(userName != null && userName != ""){
            map.put("userName",userName);
        }else{
            map.put("userName",null);
        }

        if(placeName != null && placeName != ""){
            map.put("placeNameCh",placeName);
        }else{
            map.put("placeNameCh",null);
        }
        long count = 0L;
        try{
            count = guideService.findGuideCount(map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }

    @RequestMapping("/findGuideListPage")
    public String findGuideListPage(@RequestParam("pageNum") String num,@RequestParam("pageSize") String size,@RequestParam("userName") String userName,@RequestParam("placeName") String placeName){
       Map<String,Object> map = new HashMap<>(2);
        if(userName != null && userName != ""){
            map.put("userName",userName);
        }else{
            map.put("userName",null);
        }

        if(placeName != null && placeName != ""){
            map.put("placeNameCh",placeName);
        }else{
            map.put("placeNameCh",null);
        }
        int pageNum = Integer.parseInt(num);
        int pageSize = Integer.parseInt(size);
        List<GuideVo> list =  guideService.findGuideListPage(pageNum,pageSize,map);
        return JSON.toJSONString(list);
    }


}
