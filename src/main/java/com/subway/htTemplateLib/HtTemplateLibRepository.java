package com.subway.htTemplateLib;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


/**
 * 模板库信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */

public interface HtTemplateLibRepository extends JpaRepository<HtTemplateLib, Long> {




    /**
     * @return 返回树结构
     */
    @Query("SELECT  l.id,l.libName, l.libDesc, '', l.parent.id FROM HtTemplateLib l where l.status ='1'")
    List<Object> findTree();


    /**
     * @param id
     * @return
     */
    HtTemplateLib findById(Long id);
}
