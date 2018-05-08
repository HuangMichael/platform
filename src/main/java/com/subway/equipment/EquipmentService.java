package com.subway.equipment;

import com.subway.object.ReturnObject;
import com.subway.service.app.BaseService;
import com.subway.service.commonData.CommonDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.subway.utils.ConstantUtils.*;


/**
 * 设备信息业务类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Service
public class EquipmentService extends BaseService {

    @Autowired
    EquipmentRepository equipmentRepository;

    @Autowired
    CommonDataService commonDataService;


    /**
     * @param id id
     * @return 根据id删除对象
     */
    public ReturnObject delete(Long id) {
        equipmentRepository.delete(id);
        Equipment equipment = equipmentRepository.findOne(id);
        return commonDataService.getReturnType(equipment == null, DELETE_SUCCESS, DELETE_FAILURE);
    }


    /**
     * @param equipment
     * @return 保存信息
     */
    public ReturnObject save(Equipment equipment) {

        equipment = equipmentRepository.save(equipment);
        return commonDataService.getReturnType(equipment != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    /**
     * @param id
     * @return
     */
    public Equipment findById(Long id) {
        return equipmentRepository.getOne(id);
    }

}
