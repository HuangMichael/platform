package com.subway.locationTree;

import com.subway.controller.common.BaseController;
import com.subway.domain.app.MyPage;
import com.subway.domain.user.User;
import com.subway.location.Location;
import com.subway.location.LocationSearchService;
import com.subway.location.LocationService;
import com.subway.object.ReturnObject;
import com.subway.service.app.ResourceService;
import com.subway.utils.ConstantUtils;
import com.subway.utils.PageUtils;
import com.subway.utils.SessionUtil;
import lombok.extern.slf4j.Slf4j;
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
 * 位置信息
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-12
 */
@Controller
@EnableAutoConfiguration
@RequestMapping("/locationTree")
@Slf4j
public class LocationTreeController extends BaseController {



}
