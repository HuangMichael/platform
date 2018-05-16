package com.subway.htTemplateLib;

import com.subway.controller.common.BaseController;
import com.subway.domain.app.MyPage;
import com.subway.domain.user.User;
import com.subway.object.ReturnObject;
import com.subway.service.app.ResourceService;
import com.subway.utils.PageUtils;
import com.subway.utils.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * 模板库信息
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-5-15
 */
@Controller
@EnableAutoConfiguration
@RequestMapping("/htTemplateLibTree")
public class HtTemplateLibTreeController extends BaseController {


    @Autowired
    ResourceService resourceService;
    @Autowired
    HtTemplateLibService htTemplateLibService;
    @Autowired
    HtTemplateLibSearchService htTemplateLibSearchService;


    /**
     * @return 查询的位置树节点集合
     */
    @RequestMapping(value = "/findTree")
    @ResponseBody
    public List<Object> findTree() {
        return htTemplateLibService.findTree();
    }


}
