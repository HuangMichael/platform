package com.subway.userLog;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * 用户日志信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface UserLogRepository extends JpaRepository<UserLog, Long> {


    /**
     * @param userName
     * @return
     */
    List<UserLog> findByUserNameContains(String userName);


    /**
     * @param userName
     * @param pageable
     * @return
     */
    Page<UserLog> findByUserNameContains(String userName, Pageable pageable);


}
