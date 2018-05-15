package com.subway.htTemplateLib;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 模板库信息实体类
 *
 * @author huangbin
 * @generate by autoCode
 * @Date 2018-3-1
 */
@Entity
@Table(name = "T_HT_TEMPLATE_LIB")
@Data
public class HtTemplateLib implements Serializable {


    //表之间的关联注解  请自行添加判断
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;

    @Column(length = 100)
    private String libName;//模板库名称

    @Column(length = 100)
    private String libDesc;//模板库描述

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_id", referencedColumnName = "id")
    private HtTemplateLib parent;  //所属位置

    @Column(length = 20, nullable = false) //默认位置正常
    private String authKey;//状态

    @Column(length = 1, nullable = false) //默认位置正常
    private String status;//状态

}
