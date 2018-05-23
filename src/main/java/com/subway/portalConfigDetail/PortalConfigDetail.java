package com.subway.portalConfigDetail;


import com.subway.portalConfig.PortalConfig;
import lombok.Data;

import javax.persistence.*;

/**
 * Created by huangbin on 2018/05/21 0023.
 * 门户配置明细信息
 */
@Entity
@Table(name = "T_PORTAL_CONFIG_DETAIL")
@Data
public class PortalConfigDetail implements java.io.Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(length = 30, updatable = false)
    private String chartName;//图表名称


    @Column(length = 50)
    private String chartTitle;//图表标题



    private Integer colWidth;//列宽栅格度


    @ManyToOne( fetch = FetchType.LAZY)
    @JoinColumn(name = "portal_config_id", referencedColumnName = "id")
    private PortalConfig portalConfig;  //所属门户


    private Integer sortNo;//位置名称


    @Column(length = 1, nullable = false) //默认位置正常
    private String status;//状态


}