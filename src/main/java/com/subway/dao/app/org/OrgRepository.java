package com.subway.dao.app.org;


import com.subway.sysInfo.SysInfo;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by huangbin on 2016/3/15 0008.
 * 查询系统信息
 */
public interface OrgRepository extends CrudRepository<SysInfo, Long> {
    /**
     * 查询所有数据过滤器
     */
    List<SysInfo> findAll();

    /**
     * 根据状态查询数据过滤器
     */
    List<SysInfo> findByStatus(String status);

    /**
     * 根据id查询数据过滤器
     */
    SysInfo findById(long id);


    /**
     * 系统名称
     *
     * @param sysName
     * @return 根据参数名称查询对应记录
     */
    List<SysInfo> findBySysName(String sysName);

}
