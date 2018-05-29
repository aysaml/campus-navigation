package cn.edu.lnpu.cns.service;


import cn.edu.lnpu.cns.bean.News;

import java.util.List;

/**
 * 新闻service接口
 *
 * @author wangning113
 * @since 2018/5/27
 */
public interface NewsService {

    /**
     * 根据新闻类型获得新闻数量
     * @param newsType
     * @return
     */
    int getNewsCountByType(int newsType);

    /**
     * 根据类型获取分页列表
     *
     * @param pageNum
     * @param pageSize
     * @param type
     * @return
     */
    List<News> getNewsListPageByType(int pageNum, int pageSize, int type);

    /**
     * 根据id删除新闻
     * @param id
     * @return
     */
    int deleteById(long id);

    /**
     * 根据id更新新闻
     * @param news
     * @return
     */
    int updateById(News news);

    /**
     * 插入一条记录
     * @param news
     * @return
     */
    int insertOne(News news);
}
