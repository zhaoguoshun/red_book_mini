package com.wanou.project.system.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 日常消耗对象 hk_consume
 *
 * @author HuangXiLiang
 * @date 2021-12-30
 */
@Data
public class HkConsume extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 员工id */
    @Excel(name = "员工id")
    private Long waiterId;

    private String waiterName;


    /** 消费类型 */
    @Excel(name = "消费类型")
    private Long consumeType;

    /** 消费金额 */
    @Excel(name = "消费金额")
    private Long price;

    /** 消费地点 */
    @Excel(name = "消费地点")
    private String address;

    /** 消费时间 */
    @Excel(name = "消费时间")
    private Date consumeTime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;


    private String startTime;

    private String stopTime;

    private List<String> searchTime =new ArrayList<>();

}
