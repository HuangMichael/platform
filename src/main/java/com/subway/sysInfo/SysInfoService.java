package com.subway.sysInfo;

import java.util.List;

import com.subway.dao.app.org.OrgRepository;
import com.subway.service.app.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import com.subway.service.commonData.CommonDataService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import com.subway.object.ReturnObject;

import static com.subway.utils.ConstantUtils.*;


/**
 * 系统信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class SysInfoService extends BaseService {

    @Autowired
    public OrgRepository orgRepository;

    @Autowired
    SysInfoRepository sysInfoRepository;


    @Autowired
    CommonDataService commonDataService;

    public List
            <SysInfo> findAll() {
        return sysInfoRepository.findAll();
    }


    public Page<SysInfo> findAll(Pageable pageable) {
        return sysInfoRepository.findAll(pageable);
    }


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        sysInfoRepository.delete(id);
        SysInfo sysInfo = sysInfoRepository.findOne(id);
        return commonDataService.getReturnType(sysInfo == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param sysInfo
     * @return 保存信息
     */
    public ReturnObject save(SysInfo sysInfo) {

        sysInfo = sysInfoRepository.save(sysInfo);
        return commonDataService.getReturnType(sysInfo != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    public SysInfo findById(Long id) {
        return sysInfoRepository.getOne(id);
    }


    /**
     * @param sysName 系统参数名称
     * @return
     */
    public SysInfo findBySysName(String sysName) {
        List<SysInfo> systemInfoList = orgRepository.findBySysName(sysName);
        return (systemInfoList != null) ? systemInfoList.get(0) : null;
    }

}
