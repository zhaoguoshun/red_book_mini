package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 客户管理对象 hx_client
 *
 * @author HuangXiLiang
 * @date 2021-12-09
 */
@Data
public class HxClient extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 客户编号 */
    @Excel(name = "客户编号")
    private String clientCode;

    /** 客户来源 */
    @Excel(name = "客户来源")
    private String clientSource;

    /** 姓名 */
    @Excel(name = "姓名")
    private String clientName;

    /** 电话 */
    @Excel(name = "电话")
    private String phone;

    /** 预产期 */
    @Excel(name = "预产期")
    private String subscribeTime;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private String idCard;

    /** 工作内容 */
    @Excel(name = "工作内容")
    private String content;

    /** 工作时间 */
    @Excel(name = "工作时间")
    private String jobTime;

    /** 地址 */
    @Excel(name = "地址")
    private String address;


    private Integer isStatus;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "地址", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;


    /** 1约谈  */
    @Excel(name = "1约谈 ")
    private Integer isTalk;

    /** 约谈次数 */
    @Excel(name = "约谈次数")
    private String talkCount;

    /** 是否签单 */
    @Excel(name = "是否签单")
    private Integer isSign;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "签单时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date signTime;


}
