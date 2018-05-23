package com.subway.service.portal;

/**
 * Created by Administrator on 2016/7/24.
 */

import com.subway.domain.user.User;
import com.subway.portalConfig.PortalConfig;
import com.subway.portalConfig.PortalConfigRepository;
import com.subway.portalConfigDetail.PortalConfigDetail;
import com.subway.portalConfigDetail.PortalConfigDetailRepository;
import com.subway.role.Role;
import com.subway.service.app.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by huangbin on 2016/7/24.
 */
@Service
public class PortalService extends BaseService {


    @Autowired
    PortalConfigDetailRepository portalConfigDetailRepository;


    /**
     * @param user 用户
     * @return 根据用户信息获取该用户授权的门户配置信息
     */
    public List<PortalConfigDetail> getPortalChartList(User user) {
        List<PortalConfigDetail> portalConfigDetailList = new ArrayList<>();
        List<Role> roleList = user.getRoleList();
        for (Role role : roleList) {
            for (PortalConfig portalConfig : role.getPortalList()) {
                portalConfigDetailList.addAll(portalConfigDetailRepository.findByPortalConfig(portalConfig));
            }
        }
        return portalConfigDetailList;

    }


}
