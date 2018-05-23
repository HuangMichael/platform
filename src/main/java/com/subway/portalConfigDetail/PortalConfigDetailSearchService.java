package com.subway.portalConfigDetail;
import com.subway.service.app.BaseService;
import com.subway.utils.search.SortedSearchable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.List;

/**
* 门户配置详细信息业务查询类
*
* @author huangbin
* @generate by autoCode
* @Date 2018-3-1
*/
@Service
public class  PortalConfigDetailSearchService extends BaseService implements SortedSearchable {

@Autowired
PortalConfigDetailRepository  portalConfigDetailRepository;


public List< PortalConfigDetail> findByConditions(String searchPhrase, int paramsSize) {
String array[] = super.assembleSearchArray(searchPhrase, paramsSize);
return  portalConfigDetailRepository.findAll();
}


public Page< PortalConfigDetail> findByConditions(String searchPhrase, int paramsSize, Pageable pageable) {
String array[] = super.assembleSearchArray(searchPhrase, paramsSize);
return  portalConfigDetailRepository.findAll( pageable);
}

}