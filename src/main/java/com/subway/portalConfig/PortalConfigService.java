package com.subway.portalConfig;

import java.util.List;

import com.subway.service.app.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import com.subway.service.commonData.CommonDataService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import com.subway.object.ReturnObject;

import static com.subway.utils.ConstantUtils.*;


/**
 * 门户信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class PortalConfigService extends BaseService {


    @Autowired
    PortalConfigRepository portalRepository;


    @Autowired
    CommonDataService commonDataService;

    public List  <PortalConfig> findAll() {
        return portalRepository.findAll();
    }


    public Page<PortalConfig> findAll(Pageable pageable) {
        return portalRepository.findAll(pageable);
    }


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        portalRepository.delete(id);
        PortalConfig portalConfig = portalRepository.findOne(id);
        return commonDataService.getReturnType(portalConfig == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param portalConfig
     * @return 保存信息
     */
    public ReturnObject save(PortalConfig portalConfig) {

        portalConfig = portalRepository.save(portalConfig);
        return commonDataService.getReturnType(portalConfig != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    public PortalConfig findById(Long id) {
        return portalRepository.getOne(id);
    }

}
