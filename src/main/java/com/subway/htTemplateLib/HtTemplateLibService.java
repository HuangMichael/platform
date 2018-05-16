package com.subway.htTemplateLib;

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
 * 模板库信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class HtTemplateLibService extends BaseService {


    @Autowired
    HtTemplateLibRepository htTemplateLibRepository;


    @Autowired
    CommonDataService commonDataService;

    /**
     * @return
     */
    public List<HtTemplateLib> findAll() {
        return htTemplateLibRepository.findAll();
    }


    /**
     * @param pageable
     * @return
     */
    public Page<HtTemplateLib> findAll(Pageable pageable) {
        return htTemplateLibRepository.findAll(pageable);
    }


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        htTemplateLibRepository.delete(id);
        HtTemplateLib htTemplateLib = htTemplateLibRepository.findOne(id);
        return commonDataService.getReturnType(htTemplateLib == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param htTemplateLib
     * @return 保存信息
     */
    public ReturnObject save(HtTemplateLib htTemplateLib) {

        htTemplateLib = htTemplateLibRepository.save(htTemplateLib);
        return commonDataService.getReturnType(htTemplateLib != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    /**
     * @param id
     * @return
     */
    public HtTemplateLib findById(Long id) {
        return htTemplateLibRepository.findById(id);
    }



    /**
     * @return 查询树结构 模糊查询
     */
    public List<Object> findTree() {
        return htTemplateLibRepository.findTree();
    }

}
