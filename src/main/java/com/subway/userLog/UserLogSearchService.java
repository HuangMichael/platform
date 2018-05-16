package com.subway.userLog;

import com.subway.service.app.BaseService;
import com.subway.utils.search.SortedSearchable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户日志信息业务查询类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-5-16
 */
@Service
public class UserLogSearchService extends BaseService implements SortedSearchable {

    @Autowired
    UserLogRepository userLogRepository;
    /**
     * @param searchPhrase
     * @return 根据多条件关键字进行查询
     */
    public List<UserLog> findByConditions(String searchPhrase, int paramSize) {
        String array[] = super.assembleSearchArray(searchPhrase, paramSize);
        return userLogRepository.findByUserNameContains(array[0]);
    }


    /**
     * @param searchPhrase
     * @return 根据多条件关键字进行查询
     */
    public Page<UserLog> findByConditions(String searchPhrase, int paramSize, Pageable pageable) {
        String array[] = super.assembleSearchArray(searchPhrase, paramSize);
        return userLogRepository.findByUserNameContains(array[0], pageable);
    }


}