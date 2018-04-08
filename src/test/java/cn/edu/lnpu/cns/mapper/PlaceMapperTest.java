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

  @Test
  public void updatePlaceById() throws  Exception{
    Place place = new Place();
    place.setId(10L);
    place.setPlaceNameCh("计通学院");
    place.setPlaceNameEn("jitong");
    place.setCreateTime("2018-4-1");
    place.setUpdateTime("2018-4-1");
    place.setAlias("三生三世十里桃花");
    place.setDescr("231231");
    place.setYn(1);
    place.setOperator("王宁");
    long result = placeMapper.updatePlaceByid(place);
  }
}