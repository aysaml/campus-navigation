package cn.edu.lnpu.cns.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by wangning113 on 2017/12/29.
 */
@Controller
public class RegLoginController {
    @RequestMapping("/login_p")
    public String login(HttpServletResponse resp) throws IOException {
        return "index.html";
    }
}
