package cn.edu.lnpu.cns.controller.system;

import cn.edu.lnpu.cns.bean.BaiduMapResult;
import cn.edu.lnpu.cns.bean.BaiduMapSpot;
import cn.edu.lnpu.cns.bean.SpotResult;
import cn.edu.lnpu.cns.common.OKHttpUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 百度地图相关功能controller
 *
 * @author wangning113
 * @since 2018/7/24
 */
@RestController
@RequestMapping("/cns/backstage/baiduMap")
public class BaiduMapController {

    @Value("${baiduMap.default.city}")
    private String city;

    @Value("${baiduMap.ak}")
    private String ak;

    /**
     * 调用百度地图web API查询地点名称
     * @param param
     * @return
     */
    @RequestMapping("/getBaiduSpotName")
    public Object getBaiduSpotName(@RequestParam("param") String param){
        /**百度地图web API*/
        String url  = "http://api.map.baidu.com/place/v2/suggestion?query=" + param + "&region=" + "抚顺" + "&city_limit=true&output=json&ak=" + ak;
        BaiduMapSpot baiduMapSpot = JSON.parseObject(OKHttpUtil.httpGet(url),BaiduMapSpot.class);
        if(baiduMapSpot.getStatus() == 0){
            List<BaiduMapResult> results = baiduMapSpot.getResult();
            if(null != results && results.size() > 0){
                Map<String,Object> map = new HashMap<>();
                List<SpotResult> spotList = new ArrayList<>();
                for(BaiduMapResult mapResult : results){
                   SpotResult spot = new SpotResult();
                   spot.setValue(mapResult.getName());
                   spot.setCity(mapResult.getCity());
                   spot.setProvince(mapResult.getProvince());
                   spotList.add(spot);
                }
                map.put("spots",spotList);
                return map;
            }else{
                return null;
            }
        }else{
            return null;
        }
    }
}
