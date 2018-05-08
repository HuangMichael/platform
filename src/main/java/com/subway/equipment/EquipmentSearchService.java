package com.subway.equipment;

import com.subway.service.app.BaseService;
import com.subway.utils.search.SortedSearchable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 设备信息业务查询类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-5-9
 */
@Service
public class EquipmentSearchService extends BaseService implements SortedSearchable {

    @Autowired
    EquipmentRepository equipmentRepository;


    /**
     * @param searchPhrase 搜索关键字组合
     * @param paramsSize
     * @return
     */
    public List<Equipment> findByConditions(String searchPhrase, int paramsSize) {
        String array[] = super.assembleSearchArrayWithAuthKey(searchPhrase, paramsSize);
        return equipmentRepository.findByLocation_LocNameContainsAndDescriptionContainingAndStatusAndAuthKeyStartingWith(array[0],array[1],array[2],array[3]);
    }


    /**
     * @param searchPhrase 搜索关键字组合
     * @param paramsSize
     * @param pageable
     * @return
     */
    public Page<Equipment> findByConditions(String searchPhrase, int paramsSize, Pageable pageable) {
        String array[] = super.assembleSearchArrayWithAuthKey(searchPhrase, paramsSize);
        return equipmentRepository.findByLocation_LocNameContainsAndDescriptionContainingAndStatusAndAuthKeyStartingWith(array[0],array[1],array[2],array[3],pageable);

    }

}