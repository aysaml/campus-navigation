package cn.edu.lnpu.cns.mapper;

import cn.edu.lnpu.cns.bean.Menu;

import java.util.List;

/**
 * Created by wangning113 on 2017/12/28.
 */
public interface MenuMapper {
    List<Menu> getAllMenu();

    List<Menu> getMenusByHrId(Long hrId);

    List<Menu> menuTree();

    List<Long> getMenusByRid(Long rid);
}
