package com.wanou.project.system.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 工资发放对象 hk_money_grant
 *
 * @author HuangXiLiang
 * @date 2021-12-24
 */
@Data
public class HkMoneyGrant extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 服务员
     */
    @Excel(name = "服务员")
    private Long waiterId;

    /** 工资 */
    @Excel(name = "工资")
    private Long salary;

    /** 奖金 */
    @Excel(name = "奖金")
    private Long bonus;

    /** 总金额 */
    @Excel(name = "总金额")
    private Long total;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

    private String waiterName;

    private Date startTime;

    private Date stopTime;

    private List<String>  searchTime =new ArrayList<>();

}
