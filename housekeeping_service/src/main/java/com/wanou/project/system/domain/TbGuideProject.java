package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 指导项目对象 tb_guide_project
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public class TbGuideProject extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String name;

    /** 项目简介 */
    @Excel(name = "项目简介")
    private String summary;

    /** 用户 */
    @Excel(name = "用户")
    private Long userId;

    /** 审核；0待审核；1审核通过；2审核失败 */
    @Excel(name = "审核；0待审核；1审核通过；2审核失败")
    private Long review;


    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setSummary(String summary)
    {
        this.summary = summary;
    }

    public String getSummary()
    {
        return summary;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setReview(Long review)
    {
        this.review = review;
    }

    public Long getReview()
    {
        return review;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("summary", getSummary())
            .append("userId", getUserId())
            .append("review", getReview())
            .append("createTime", getCreateTime())
            .toString();
    }
}
