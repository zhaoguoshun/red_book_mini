package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 ex_laboratory
 *
 * @author HuangXiLiang
 * @date 2021-12-07
 */
@Data
public class ExLaboratory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 实验室名称 */
    @Excel(name = "实验室名称")
    private String labName;

    /** 实验室地点 */
    @Excel(name = "实验室地点")
    private String labAddress;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "实验室地点", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreare;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "实验室地点", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtModify;
}
