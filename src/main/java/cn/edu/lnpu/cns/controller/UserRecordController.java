package cn.edu.lnpu.cns.controller;

import cn.edu.lnpu.cns.bean.UserRecord;
import cn.edu.lnpu.cns.service.UserRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户操作记录controller
 *
 * @author wangning113
 * @since 2018/6/5
 */
@Controller
@RequestMapping("/system/record")
public class UserRecordController {

    @Autowired
    private UserRecordService userRecordService;

    /**
     * 获取日志记录数量
     * @return
     */
    @RequestMapping("/findRecordCount")
    @ResponseBody
    public int getRecordCount(){
        return userRecordService.getRecordCount();
    }

    /**
     * 获取分页日志记录
     * @return
     */
    @RequestMapping("/findRecordListPage")
    @ResponseBody
    public List<UserRecord> getRecordListPage(@RequestParam("pageNum") String num, @RequestParam("pageSize") String size){
        int pageNum = Integer.parseInt(num);
        int pageSize = Integer.parseInt(size);
        List<UserRecord> list = userRecordService.getRecordPageList(pageNum,pageSize);
        return list;
    }

}
