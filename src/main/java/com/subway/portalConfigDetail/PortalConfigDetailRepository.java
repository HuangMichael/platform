package com.subway.portalConfigDetail;

import java.util.List;
import java.util.Map;

import com.subway.portalConfig.PortalConfig;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * 门户配置详细信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface PortalConfigDetailRepository extends JpaRepository<PortalConfigDetail, Long> {


    /**
     * @param portalConfig 门户配置信息
     * @return 根据门户配置信息查询所有的配置详细信息
     */
    List<PortalConfigDetail> findByPortalConfig(PortalConfig portalConfig);
}
