package com.subway.template;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


/**
 * 模板管理数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface HtTemplateRepository extends JpaRepository<HtTemplate, Long> {


    /**
     * @param templateName
     * @param status
     * @return
     */
    List<HtTemplate> findByTemplateNameContainingAndStatus(String templateName, String status);


    /**
     * @param templateName
     * @param status
     * @param pageable
     * @return
     */
    Page<HtTemplate> findByTemplateNameContainingAndStatus(String templateName, String status, Pageable pageable);

}
