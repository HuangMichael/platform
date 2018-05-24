package com.subway.userLog;

import com.subway.service.app.BaseService;
import com.subway.service.commonData.CommonDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;


/**
 * 用户日志信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class UserLogService extends BaseService {




    @Autowired
    CommonDataService commonDataService;



    public UserLog findById(Long id) {
        return null ;
    }


    public UserLog createUserLog(UserLog userLog) {
        log.info(new Date() + "userLog----------------" + userLog.toString());
        return null;
    }

}
