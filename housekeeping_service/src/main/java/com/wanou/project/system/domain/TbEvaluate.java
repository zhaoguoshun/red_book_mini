package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 评价对象 tb_evaluate
 *
 * @author ruoyi
 * @date 2023-04-25
 */
public class TbEvaluate extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 评价 */
    @Excel(name = "评价")
    private String content;

    /** 1课程评价 2教练评价 */
    @Excel(name = "1课程评价 2教练评价")
    private Long type;

    /** 评价人 */
    @Excel(name = "评价人")
    private Long userId;

    /** 课程或教练id */
    @Excel(name = "课程或教练id")
    private Long commonId;

    private String commonName;

    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCommonName() {
        return commonName;
    }

    public void setCommonName(String commonName) {
        this.commonName = commonName;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setContent(String content)
    {
        this.content = content;
    }

    public String getContent()
    {
        return content;
    }
    public void setType(Long type)
    {
        this.type = type;
    }

    public Long getType()
    {
        return type;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setCommonId(Long commonId)
    {
        this.commonId = commonId;
    }

    public Long getCommonId()
    {
        return commonId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("content", getContent())
                .append("type", getType())
                .append("userId", getUserId())
                .append("createTime", getCreateTime())
                .append("commonId", getCommonId())
                .toString();
    }
}
