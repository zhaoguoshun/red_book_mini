package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 课程对象 tb_course
 *
 * @author ruoyi
 * @date 2023-04-19
 */
public class TbCourse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 课程名称 */
    @Excel(name = "课程名称")
    private String title;

    /** 创建人 */
    @Excel(name = "创建人")
    private Long userId;

    /** 审核状态0待审核；1审核成功；2审核失败 */
    @Excel(name = "审核状态0待审核；1审核成功；2审核失败")
    private Long status;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getTitle()
    {
        return title;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setStatus(Long status)
    {
        this.status = status;
    }

    public Long getStatus()
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("userId", getUserId())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .toString();
    }
}
