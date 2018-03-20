package cn.edu.lnpu.cns.service;

import cn.edu.lnpu.cns.mapper.SystemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by wangning113 on 2017/12/29.
 */
@Service
@Transactional
public class SystemService {
    @Autowired
    SystemMapper systemMapper;

}
