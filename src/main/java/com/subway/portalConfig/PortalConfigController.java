package com.subway.portalConfig;

import com.subway.controller.common.BaseController;
import com.subway.domain.app.MyPage;
import com.subway.service.app.ResourceService;
import com.subway.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.subway.object.ReturnObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * 门户信息
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Controller
@EnableAutoConfiguration
@RequestMapping("/portalConfig")
public class PortalConfigController extends BaseController {
    
    private static Integer SEARCH_PARAM_SIZE = 2;

    @Autowired
    ResourceService resourceService;
    @Autowired
    PortalConfigService portalConfigService;
    @Autowired
    PortalConfigSearchService portalConfigSearchService;


    /**
     * 分页查询
     *
     * @param request
     * @param current      当前页
     * @param rowCount     每页条数
     * @param searchPhrase 查询关键字
     * @return
     */
    @RequestMapping(value = "/data", method = RequestMethod.POST)
    @ResponseBody
    public MyPage data(HttpSession session, HttpServletRequest request, @RequestParam(value = "current", defaultValue = "0") int current, @RequestParam(value = "rowCount", defaultValue = "10") Long rowCount, @RequestParam(value = "searchPhrase", required = false) String searchPhrase) {
        Map<String, String[]> parameterMap = request.getParameterMap();
        Pageable pageable = new PageRequest(current - 1, rowCount.intValue(), super.getSort(parameterMap));
        return new PageUtils().searchBySortService(portalConfigSearchService, searchPhrase, SEARCH_PARAM_SIZE, current, rowCount, pageable);
    }

    /**
     * @param id 用户id
     * @return 根据门户信息id查询
     */
    @RequestMapping(value = "/findById/{id}", method = RequestMethod.GET)
    @ResponseBody
    public PortalConfig findById(@PathVariable("id") Long id) {
        return portalConfigService.findById(id);
    }


    /**
     * @param id
     * @return 删除门户信息信息
     */
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ReturnObject delete(@PathVariable("id") Long id) {
        return portalConfigService.delete(id);
    }


    /**
     * @param portalConfig 门户信息 信息
     * @return 保存门户信息信息
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public ReturnObject save(PortalConfig portalConfig) {
        return portalConfigService.save(portalConfig);
    }


    /**
     * @param request  请求
     * @param response 响应
     * @param param    查询关键字
     * @param docName  文档名称
     * @param titles   标题集合
     * @param colNames 列名称
     */
    @ResponseBody
    @RequestMapping(value = "/exportExcel", method = RequestMethod.GET)
    public void exportExcel(HttpServletRequest request, HttpServletResponse response, @RequestParam("param") String param, @RequestParam("docName") String docName, @RequestParam("titles") String titles[], @RequestParam("colNames") String[] colNames) {
        List<PortalConfig> dataList = portalConfigSearchService.findByConditions(param, SEARCH_PARAM_SIZE);
        portalConfigService.setDataList(dataList);
        portalConfigService.exportExcel(request, response, docName, titles, colNames);
    }


}
