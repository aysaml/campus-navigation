package cn.edu.lnpu.cns.controller;


import cn.edu.lnpu.cns.bean.News;
import cn.edu.lnpu.cns.common.ConstantState;
import cn.edu.lnpu.cns.common.JsonResult;
import cn.edu.lnpu.cns.common.StringUtils;
import cn.edu.lnpu.cns.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 新闻controller
 *
 * @author wangning113
 * @since 2018/5/27
 */
@Controller
public class NewsController {
    private Logger logger = LoggerFactory.getLogger(NewsController.class);

    @Autowired
    private NewsService newsService;

    /**
     * 根据类型获取新闻数量
     * @param type
     * @return
     */
    @RequestMapping("/news/getNewsCount")
    @ResponseBody
    public JsonResult getNewsCount(@RequestParam("type") String type){
        int newsType = 0;
        if(StringUtils.isNotEmpty(type)){
            newsType = Integer.parseInt(type);
        }
        JsonResult result = new JsonResult();
        int count = 0;
        try{
            count = newsService.getNewsCountByType(newsType);
            result.setState(ConstantState.SUCCESS.getCode());
            result.setMessage(ConstantState.SUCCESS.getMessage());
            result.setData(count);
        }catch (Exception e){
            logger.error("查询新闻数量异常：",e.getMessage());
            e.printStackTrace();
            result.setState(ConstantState.RUNTIME_ERROR.getCode());
            result.setMessage(ConstantState.RUNTIME_ERROR.getMessage());
            result.setData(null);
        }
        return result;
    }

    @RequestMapping("/news/getNewsList")
    @ResponseBody
    public JsonResult getNewsListPageByType(@RequestParam("pageNum") String num, @RequestParam("pageSize") String size, @RequestParam("type") String newsType){
        int pageNum = 1;
        int pageSize = 10;
        int type = 0;
        JsonResult result = new JsonResult();
        if(StringUtils.isNotEmpty(num)){
            pageNum = Integer.parseInt(num);
        }
        if(StringUtils.isNotEmpty(size)){
            pageSize = Integer.parseInt(size);
        }
        if(StringUtils.isNotEmpty(newsType)){
            type = Integer.parseInt(newsType);
        }
        List<News> newsList = null;
        try{
            newsList = newsService.getNewsListPageByType(pageNum,pageSize,type);
            result.setState(ConstantState.SUCCESS.getCode());
            result.setMessage(ConstantState.SUCCESS.getMessage());
            result.setData(newsList);
        }catch (Exception e){
            logger.error("查询新闻列表异常：",e.getMessage());
            e.printStackTrace();
            result.setState(ConstantState.RUNTIME_ERROR.getCode());
            result.setMessage(ConstantState.RUNTIME_ERROR.getMessage());
            result.setData(null);
        }
        return result;
    }

    @RequestMapping("/news/manage/delete")
    @ResponseBody
    public JsonResult deleteById(@RequestParam("id") String id){
        JsonResult result = new JsonResult();
        if(StringUtils.isNotEmpty(id)){
            newsService.deleteById(Long.parseLong(id));
        }else{
            result.setState(ConstantState.RUNTIME_ERROR.getCode());
            result.setMessage(ConstantState.RUNTIME_ERROR.getMessage());
        }

        result.setState(ConstantState.SUCCESS.getCode());
        result.setMessage(ConstantState.SUCCESS.getMessage());
        return  result;
    }

    @RequestMapping("/news/manage/update")
    @ResponseBody
    public int updateById(@RequestBody News news){
        if(news != null){
            newsService.updateById(news);
            return 0;
        }else{
            return 1;
        }
    }

    @RequestMapping("/news/manage/add")
    @ResponseBody
    public int addNews(@RequestBody News news){
        if(news != null){
            Date date = new Date();
            news.setCreateTime(new SimpleDateFormat("yyyy-MM-dd").format(date));
            newsService.insertOne(news);
            return 0;
        }else{
            return 1;
        }
    }
}
