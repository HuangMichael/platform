package com.subway.portal;

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
 * 门户信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class PortalService extends BaseService {


    @Autowired
    PortalRepository portalRepository;


    @Autowired
    CommonDataService commonDataService;

    public List  <Portal> findAll() {
        return portalRepository.findAll();
    }


    public Page<Portal> findAll(Pageable pageable) {
        return portalRepository.findAll(pageable);
    }


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        portalRepository.delete(id);
        Portal portal = portalRepository.findOne(id);
        return commonDataService.getReturnType(portal == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param portal
     * @return 保存信息
     */
    public ReturnObject save(Portal portal) {

        portal = portalRepository.save(portal);
        return commonDataService.getReturnType(portal != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    public Portal findById(Long id) {
        return portalRepository.getOne(id);
    }

}
