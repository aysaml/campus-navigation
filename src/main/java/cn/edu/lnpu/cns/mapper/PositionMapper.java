package cn.edu.lnpu.cns.mapper;

import org.apache.ibatis.annotations.Param;
import cn.edu.lnpu.cns.bean.Position;

import java.util.List;

/**
 * Created by wangning113 on 2018/1/10.
 */
public interface PositionMapper {

    int addPos(@Param("pos") Position pos);

    Position getPosByName(String name);

    List<Position> getAllPos();

    int deletePosById(@Param("pids") String[] pids);

    int updatePosById(@Param("pos") Position position);
}
