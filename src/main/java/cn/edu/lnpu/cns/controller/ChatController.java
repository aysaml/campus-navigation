package cn.edu.lnpu.cns.controller;

import cn.edu.lnpu.cns.bean.Hr;
import cn.edu.lnpu.cns.bean.MsgContent;
import cn.edu.lnpu.cns.bean.RespBean;
import cn.edu.lnpu.cns.bean.SysMsg;
import cn.edu.lnpu.cns.service.HrService;
import cn.edu.lnpu.cns.service.SysMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 处理通知消息的Controller
 * 登录即可访问
 */
@RestController
@RequestMapping("/chat")
public class ChatController {
    @Autowired
    HrService hrService;
    @Autowired
    SysMsgService sysMsgService;

    @RequestMapping(value = "/hrs", method = RequestMethod.GET)
    public List<Hr> getAllHr() {
        return hrService.getAllHrExceptAdmin();
    }

    @RequestMapping(value = "/nf", method = RequestMethod.POST)
    public RespBean sendNf(MsgContent msg) {
        if (sysMsgService.sendMsg(msg)) {
            return new RespBean("success", "发送成功!");
        }
        return new RespBean("error", "发送失败!");
    }

    @RequestMapping("/sysmsgs")
    public List<SysMsg> getSysMsg(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "size", defaultValue = "10") Integer size) {
        return sysMsgService.getSysMsgByPage(page, size);
    }

    @RequestMapping(value = "/markread", method = RequestMethod.PUT)
    public RespBean markRead(Long flag) {
        if (sysMsgService.markRead(flag)) {
            if (flag == -1) {
                return new RespBean("success", "multiple");
            } else {
                return new RespBean("success", "single");
            }
        } else {
            if (flag == -1) {
                return new RespBean("error", "multiple");
            } else {
                return new RespBean("error", "single");
            }
        }
    }
}
