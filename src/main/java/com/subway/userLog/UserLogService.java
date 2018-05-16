package com.subway.userLog;

import java.util.List;
import java.util.Map;

import com.subway.service.app.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import com.subway.service.commonData.CommonDataService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import com.subway.object.ReturnObject;

import static com.subway.utils.ConstantUtils.*;


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
    UserLogRepository userLogRepository;


    @Autowired
    CommonDataService commonDataService;


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        userLogRepository.delete(id);
        UserLog userLog = userLogRepository.findOne(id);
        return commonDataService.getReturnType(userLog == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param userLog
     * @return 保存信息
     */
    public ReturnObject save(UserLog userLog) {

        userLog = userLogRepository.save(userLog);
        return commonDataService.getReturnType(userLog != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    public UserLog findById(Long id) {
        return userLogRepository.getOne(id);
    }



    /**
     * @param userLog
     * @return 创建用户日志
     */
    public UserLog createUserLog(UserLog userLog) {
        return userLogRepository.save(userLog);
    }

}
