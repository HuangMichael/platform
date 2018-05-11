package com.subway.template;

import java.util.List;

import com.subway.equipment.Equipment;
import com.subway.object.ReturnObject;
import com.subway.service.app.BaseService;
import com.subway.service.commonData.CommonDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import static com.subway.utils.ConstantUtils.*;

/**
 * 模板管理业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class HtTemplateService extends BaseService {


    @Autowired
    HtTemplateRepository htTemplateRepository ;


    @Autowired
    CommonDataService commonDataService;

    /**
     * @return
     */
    public List<HtTemplate> findAll() {
        return htTemplateRepository.findAll();
    }


    /**
     * @param pageable
     * @return
     */
    public Page<HtTemplate> findAll(Pageable pageable) {
        return htTemplateRepository.findAll(pageable);
    }


    /**
     * @param id
     * @return
     */
    public HtTemplate findById(Long id) {
        return htTemplateRepository.getOne(id);
    }




    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        htTemplateRepository.delete(id);
        HtTemplate htTemplate = htTemplateRepository.findOne(id);
        return commonDataService.getReturnType(htTemplate == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param htTemplate
     * @return 保存信息
     */
    public ReturnObject save(  HtTemplate htTemplate) {
        htTemplate = htTemplateRepository.save(htTemplate);
        return commonDataService.getReturnType(htTemplate != null, SAVE_SUCCESS, SAVE_FAILURE);
    }

}
