package com.subway.portalConfig;


import lombok.Data;

import javax.persistence.*;

/**
 * Created by huangbin on 2018/05/21 0023.
 * 门户信息
 */
@Entity
@Table(name = "T_PORTAL_CONFIG")
@Data
public class PortalConfig implements java.io.Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(length = 30, updatable = false)
    private String name;//门户名称

    @Column(length = 100)
    private String description;//门户描述

    @Column(length = 1, nullable = false) //默认位置正常
    private String status;//状态


}