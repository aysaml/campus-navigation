package cn.edu.lnpu.cns.service.impl;

import cn.edu.lnpu.cns.bean.News;
import cn.edu.lnpu.cns.mapper.NewsMapper;
import cn.edu.lnpu.cns.service.NewsService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 新闻service实现类
 *
 * @author wangning113
 * @since 2018/5/27
 */
@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    /**
     * 根据新闻类型获得新闻数量
     *
     * @param newsType
     * @return
     */
    @Override
    public int getNewsCountByType(int newsType) {
        return newsMapper.getNewsCountByType(newsType);
    }

    /**
     * 根据类型获取分页列表
     *
     * @param pageNum
     * @param pageSize
     * @param type
     * @return
     */
    @Override
    public List<News> getNewsListPageByType(int pageNum, int pageSize, int type) {
        PageHelper.startPage(pageNum,pageSize);
        return newsMapper.getNewsListPageByType(type);
    }


    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    @Override
    public int deleteById(long id) {
        return newsMapper.deleteById(id);
    }

    /**
     * 根据id更新新闻
     *
     * @param news
     * @return
     */
    @Override
    public int updateById(News news) {
        return newsMapper.updateById(news);
    }

    /**
     * 插入一条记录
     *
     * @param news
     * @return
     */
    @Override
    public int insertOne(News news) {
        return newsMapper.insert(news);
    }
}
