package com.subway.controller.portal;


import com.subway.domain.user.User;
import com.subway.portalConfigDetail.PortalConfigDetail;
import com.subway.service.portal.PortalService;
import com.subway.utils.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by huangbin on 2015/12/23 0023.
 */
@Controller
@EnableAutoConfiguration
@RequestMapping("/portal")
@SessionAttributes("menuList")
public class PortalController {

    @Autowired
    PortalService portalService;

    @RequestMapping(value = "/index")
    public String index(HttpSession session, ModelMap modelMap) {
        User user = SessionUtil.getCurrentUserBySession(session);
        List<PortalConfigDetail> chartList = new ArrayList<>();
        if (user != null) {
            chartList = portalService.getPortalChartList(user);
        }
        modelMap.addAttribute("chartList", chartList);
        return "/portal/index";
    }

}

