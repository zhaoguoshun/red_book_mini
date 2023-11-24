package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 关注对象 t_focus
 *
 * @author ruoyi
 * @date 2023-11-02
 */
public class TFocus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 被关注id */
    @Excel(name = "被关注id")
    private Long quiltUserId;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setQuiltUserId(Long quiltUserId)
    {
        this.quiltUserId = quiltUserId;
    }

    public Long getQuiltUserId()
    {
        return quiltUserId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("quiltUserId", getQuiltUserId())
            .append("createTime", getCreateTime())
            .toString();
    }
}
