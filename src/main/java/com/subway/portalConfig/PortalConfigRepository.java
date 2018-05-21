package com.subway.portalConfig;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


/**
 * 门户信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface PortalConfigRepository extends JpaRepository<PortalConfig, Long> {


    /**
     * @param name
     * @param status
     * @return
     */
    List<PortalConfig> findByNameContainingAndStatus(String name, String status);





    /**
     * @param name
     * @param status
     * @param pageable
     * @return
     */
    Page<PortalConfig> findByNameContainingAndStatus(String name, String status, Pageable pageable);


}
