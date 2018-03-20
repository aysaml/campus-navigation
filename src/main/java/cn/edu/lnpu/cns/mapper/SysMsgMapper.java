package cn.edu.lnpu.cns.mapper;

import org.apache.ibatis.annotations.Param;
import cn.edu.lnpu.cns.bean.Hr;
import cn.edu.lnpu.cns.bean.MsgContent;
import cn.edu.lnpu.cns.bean.SysMsg;

import java.util.List;

/**
 * Created by wangning113 on 2018/2/2.
 */
public interface SysMsgMapper {

    int sendMsg(MsgContent msg);

    int addMsg2AllHr(@Param("hrs") List<Hr> hrs, @Param("mid") Long mid);

    List<SysMsg> getSysMsg(@Param("start") int start, @Param("size") Integer size,@Param("hrid") Long hrid);

    int markRead(@Param("flag") Long flag, @Param("hrid") Long hrid);
}
