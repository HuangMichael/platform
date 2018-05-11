package com.subway.template;

import java.util.List;

import com.subway.service.app.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

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
    HtTemplateRepository templateRepository;

    /**
     * @return
     */
    public List<HtTemplate> findAll() {
        return templateRepository.findAll();
    }


    /**
     * @param pageable
     * @return
     */
    public Page<HtTemplate> findAll(Pageable pageable) {
        return templateRepository.findAll(pageable);
    }


    /**
     * @param id
     * @return
     */
    public HtTemplate findById(Long id) {
        return templateRepository.getOne(id);
    }

}
