package com.subway.equipment;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * 设备信息数据库访问接口
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-5-9
 */

public interface EquipmentRepository extends JpaRepository<Equipment, Long> {


    /**
     * @param locName 位置名称
     * @param eqName  设备名称
     * @param status  状态
     * @param authKey 授权码
     * @return
     */
    List<Equipment> findByLocation_LocNameContainsAndDescriptionContainingAndStatusAndAuthKeyStartingWith(String locName, String eqName, String status, String authKey);


    /**
     * @param locName 位置名称
     * @param eqName  设备名称
     * @param status  状态
     * @param authKey 授权码
     * @param pageable 分页参数
     * @return
     */
    Page<Equipment> findByLocation_LocNameContainsAndDescriptionContainingAndStatusAndAuthKeyStartingWith(String locName, String eqName, String status, String authKey, Pageable pageable);


}
