package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 hk_client_operation
 *
 * @author HuangXiLiang
 * @date 2021-12-22
 */
@Data
public class HkClientOperation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long clientId;

    private String clientName;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String content;

    /** 1=约谈 2 =签约 3=拒绝 */
    @Excel(name = "1=约谈 2 =签约 3=拒绝")
    private Integer isStatus;

    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "1=约谈 2 =签约 3=拒绝", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

}
