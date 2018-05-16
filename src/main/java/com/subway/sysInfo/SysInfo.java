package com.subway.sysInfo;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
* 系统信息实体类
*
* @author huangbin
* @generate by autoCode
* @Date 2018-3-1
*/
@Entity
@Table(name = "t_sys_info")
@Data
public class SysInfo  implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 50, unique = true, nullable = false)
    private String sysName; //系统名称
    @Column(length = 50)
    private String description;//表名称
    @Column(length = 50)
    private String logoUrl;//表名称
    @Column(length = 1)
    private String status;
    private Long sortNo; //排序

}
