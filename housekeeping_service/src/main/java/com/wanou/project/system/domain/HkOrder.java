package com.wanou.project.system.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 订单管理对象 hk_order
 *
 * @author HuangXiLiang
 * @date 2021-12-23
 */
@Data
public class HkOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 各户信息 */
    @Excel(name = "各户信息")
    private Long clientId;

    private String clientName;

    /** 服务员 */
    @Excel(name = "服务员")
    private Long waiterId;

    private String waiterName;

    /** 0已接单 1=进行中 2=已结束 */
    @Excel(name = "0已接单 1=进行中 2=已结束")
    private Integer isConduct;

    /** 1=已付款 */
    @Excel(name = "1=已付款")
    private Integer isStatus;

    /** 支付方式 */
    @Excel(name = "支付方式")
    private String payMode;

    /** 金额 */
    @Excel(name = "金额")
    private Long price;

    /** 签约时间 */
    @Excel(name = "签约时间")
    private String signTime;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

    private String startTime;

    private String stopTime;

    private List<String> searchTime =new ArrayList<>();
}
