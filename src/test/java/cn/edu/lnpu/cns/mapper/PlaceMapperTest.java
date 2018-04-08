package cn.edu.lnpu.cns.mapper;

import cn.edu.lnpu.cns.bean.Place;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * @author wangning113
 * @since 2018/4/2
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PlaceMapperTest {

  @Autowired
  private PlaceMapper placeMapper;

  @Test
  public void findPlaceListPage() throws Exception {
    List<Place> result = placeMapper.findPlaceListPage(null);
    System.out.println(result);
  }

  @Test
  public void findPlaceCount() throws Exception{
    long result = placeMapper.findPlaceCount(null);
    System.out.println(result);
  }
}