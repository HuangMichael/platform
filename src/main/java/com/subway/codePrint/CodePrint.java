package com.subway.codePrint;


import com.subway.eqClass.EqClass;
import com.subway.equipment.Equipment;
import com.subway.location.Location;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by huangbin on 2018/03/14 0023.
 * 设备二维码打印信息
 */
@Entity
@Table(name = "T_CODE_PRINT")
@Data
public class CodePrint {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;  //id

    @Column(length = 20, unique = true)
    private String printCode; //设备编号

    @Column(length = 20)
    private String printer; //打印人员

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date printTime; //购置日期

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "equipment_id", referencedColumnName = "id")
    private Equipment equipment; //设备

    @Column(length = 1)
    private String status; //默认为正常  0不正常 1正常  2报修   3报废

}
