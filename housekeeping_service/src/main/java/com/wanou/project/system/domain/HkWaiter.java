package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 服务员管理对象 hk_waiter
 *
 * @author HuangXiLiang
 * @date 2021-12-09
 */
@Data
public class HkWaiter extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String waiterName;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String phone;

    /** 服务类型 */
    @Excel(name = "服务类型")
    private Long personType;

    /** 价位 */
    @Excel(name = "价位")
    private Long price;

    /** 底薪 */
    @Excel(name = "底薪")
    private Long basePrice;

    /** 籍贯 */
    @Excel(name = "籍贯")
    private String nativePlace;

    /** 年龄 */
    @Excel(name = "年龄")
    private Long age;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date birthDay;

    /** 文化程度 */
    @Excel(name = "文化程度")
    private String diploma;

    /** 婚姻状况 */
    @Excel(name = "婚姻状况")
    private String isGetMarried;

    /** 介绍人 */
    @Excel(name = "介绍人")
    private String introduce;

    /** 家庭住址 */
    @Excel(name = "家庭住址")
    private String address;

    /** 0未上岗 1上岗 */
    @Excel(name = "0未上岗 1上岗")
    private Integer status;


    private String isStationAddress;

    /** 创造时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创造时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

}
