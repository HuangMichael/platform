package com.subway.codePrint;

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
 * 二维码打印业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class CodePrintService extends BaseService {


    @Autowired
    CodePrintRepository codePrintRepository;


    @Autowired
    CommonDataService commonDataService;

    public List<CodePrint> findAll() {
        return codePrintRepository.findAll();
    }


    public Page<CodePrint> findAll(Pageable pageable) {
        return codePrintRepository.findAll(pageable);
    }


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        codePrintRepository.delete(id);
        CodePrint codePrint = codePrintRepository.findOne(id);
        return commonDataService.getReturnType(codePrint == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param codePrint
     * @return 保存信息
     */
    public ReturnObject save(CodePrint codePrint) {

        codePrint = codePrintRepository.save(codePrint);
        return commonDataService.getReturnType(codePrint != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    /**
     * @param id
     * @return
     */
    public CodePrint findById(Long id) {
        return codePrintRepository.getOne(id);
    }

}
