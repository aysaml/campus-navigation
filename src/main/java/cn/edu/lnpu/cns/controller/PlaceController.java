package cn.edu.lnpu.cns.controller;

import cn.edu.lnpu.cns.bean.Place;
import cn.edu.lnpu.cns.service.PlaceService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 地点controller
 *
 * @author wangning113
 * @since 2018/3/29
 */
@RestController
@RequestMapping("/place/manage")
public class PlaceController {

  @Autowired private PlaceService placeService;

  /**
   * 增加地点
   *
   * @param place
   * @return
   */
  @RequestMapping("/add")
  public int addPlace(@RequestBody Place place) {
    if (place != null) {
      placeService.addPlace(place);
      return 0;
    } else {
      throw new IllegalArgumentException("添加地点不能为空");
    }
  }

  /**
   * 删除地点
   *
   * @param id
   * @return
   */
  @RequestMapping("/delete")
  public int deletePlace(@RequestParam("id") String id) {
    if (id != null && id != "") {
      placeService.deletePlaceById(Long.valueOf(id));
      return 0;
    } else {
      throw new IllegalArgumentException("删除地点id不能为空");
    }
  }

  /**
   * 更新地点
   *
   * @param place
   * @return
   */
  @RequestMapping("/update")
  public int updatePlace(@RequestParam("place") String place) {
    Place place1 = JSON.parseObject(place,Place.class);
    if (place1 != null) {
      placeService.updatePlaceByid(place1);
      return 0;
    } else {
      throw new IllegalArgumentException("更新地点不能为空");
    }
  }

  /**
   * 查询地点数量
   *
   * @param placeNameCh
   * @param yn
   * @return
   */
  @RequestMapping("/findPlaceCount")
  public long findPlaceCount(
      @RequestParam("searchParam") String placeNameCh, @RequestParam("yn") String yn) {
    Map<String, Object> map = new HashMap<>(2);
    if(yn != null && yn != ""){
      map.put("yn", yn);
    }else{
      map.put("yn", null);
    }

    if(placeNameCh != null && placeNameCh != ""){
      map.put("searchParam", placeNameCh);
    }else{
      map.put("searchParam", null);
    }
    return placeService.findPlaceCount(map);
  }

    /**
     * 分页查询地点列表
     * @param num
     * @param size
     * @param placeNameCh
     * @param yn
     * @return
     */
  @RequestMapping("/findPlaceListPage")
  public String findPlaceListPage(
      @RequestParam("pageNum") String num,
      @RequestParam("pageSize") String size,
      @RequestParam("placeNameCh") String placeNameCh,
      @RequestParam("yn") String yn) {
    int pageNum = Integer.parseInt(num);
    int pageSize = Integer.parseInt(size);
    Map map = new HashMap();
    if(yn != null && yn != ""){
      map.put("yn", yn);
    }else{
      map.put("yn", null);
    }

    if(placeNameCh != null && placeNameCh != ""){
      map.put("searchParam", placeNameCh);
    }else{
      map.put("searchParam", null);
    }

    List<Place> list = placeService.findPlaceListPage(pageNum, pageSize, map);
    return JSON.toJSONString(list);
  }

  @RequestMapping("/updateYn")
  public int updateYn(@RequestParam("yn") String yn1,@RequestParam("id") String id1){
      if(yn1 != null && id1 != null){
          int yn = Integer.parseInt(yn1);
          Long id = Long.valueOf(id1);
          placeService.updateYnById(yn,id);
          return 0;
      }else{
          throw new IllegalArgumentException("更新状态参数错误");
      }
  }

  @RequestMapping("/batchDelete")
  public int batchDelete(@RequestBody List<Long> ids){
      if(ids != null && ids.size() != 0){
          placeService.batchDeleteByIds(ids);
          return 0;
      }else{
          throw new IllegalArgumentException("更新状态参数错误");
      }
  }
}
