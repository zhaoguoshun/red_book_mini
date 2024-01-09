package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_jl_select
 *
 * @author ruoyi
 * @date 2023-04-25
 */
public class TbJlSelect extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 用户 */
    @Excel(name = "用户")
    private Long userId;

    /** 教练 */
    @Excel(name = "教练")
    private Long jlId;

    private String userName;

    private String jlName;


    public String getJlName() {
        return jlName;
    }

    public void setJlName(String jlName) {
        this.jlName = jlName;
    }

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
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setJlId(Long jlId)
    {
        this.jlId = jlId;
    }

    public Long getJlId()
    {
        return jlId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("jlId", getJlId())
            .append("createTime", getCreateTime())
            .toString();
    }
}
