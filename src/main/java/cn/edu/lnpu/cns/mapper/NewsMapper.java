package cn.edu.lnpu.cns.mapper;


import cn.edu.lnpu.cns.bean.News;

import java.util.List;

/**
 * 新闻dao层接口
 *
 * @author wangning113
 * @since 2018/5/27
 */
public interface NewsMapper {

    /**
     * 根据新闻类型获得新闻数量
     * @param newsType
     * @return
     */
    int getNewsCountByType(int newsType);

    /**
     * 根据新闻类型获取新闻列表
     * @param type
     * @return
     */
    List<News> getNewsListPageByType(int type);

    /**
     *根据id删除新闻
     * @param id
     * @return
     */
    int deleteById(long id);

    /**
     * 根据Id更新新闻
     * @param news
     * @return
     */
    int updateById(News news);

    /**
     * 插入一条记录
     * @param news
     * @return
     */
    int insert(News news);
}
