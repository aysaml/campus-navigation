package cn.edu.lnpu.cns.common;

import cn.edu.lnpu.cns.bean.Hr;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Created by wangning113 on 2017/12/30.
 */
public class HrUtils {
    public static Hr getCurrentHr() {
        return (Hr) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
}
