package com.subway.portalConfigDetail;

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
* 门户配置详细信息业务类
*
* @author huangbin
* @generate by autoCode
* @Date 2018-3-1
*/
@Service
public class PortalConfigDetailService extends BaseService {


@Autowired
PortalConfigDetailRepository portalConfigDetailRepository;


@Autowired
CommonDataService commonDataService;

public List
<PortalConfigDetail> findAll() {
return  portalConfigDetailRepository.findAll();
}


public Page< PortalConfigDetail> findAll(Pageable pageable) {
return  portalConfigDetailRepository.findAll(pageable);
}


/**
* @param id id
* @return 根据id删除对象
*/
public ReturnObject delete(Long id) {
portalConfigDetailRepository.delete(id);
PortalConfigDetail portalConfigDetail = portalConfigDetailRepository.findOne(id);
return commonDataService.getReturnType(portalConfigDetail == null, DELETE_SUCCESS, DELETE_FAILURE);
}


/**
* @param portalConfigDetail
* @return 保存信息
*/
public ReturnObject save(PortalConfigDetail portalConfigDetail) {

portalConfigDetail = portalConfigDetailRepository.save(portalConfigDetail);
return commonDataService.getReturnType(portalConfigDetail != null, SAVE_SUCCESS, SAVE_FAILURE);
}


public  PortalConfigDetail findById(Long id) {
return  portalConfigDetailRepository.getOne(id);
}

}
