package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_anchor
 *
 * @author ruoyi
 * @date 2023-04-01
 */
public class TbAnchor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 简介 */
    @Excel(name = "简介")
    private String summary;

    /** 主播类型 */
    @Excel(name = "主播类型")
    private String anchorType;

    /** 海报 */
    @Excel(name = "海报")
    private String img;

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
    public void setAnchorType(String anchorType)
    {
        this.anchorType = anchorType;
    }

    public String getAnchorType()
    {
        return anchorType;
    }
    public void setImg(String img)
    {
        this.img = img;
    }

    public String getImg()
    {
        return img;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("summary", getSummary())
            .append("anchorType", getAnchorType())
            .append("img", getImg())
            .append("createTime", getCreateTime())
            .toString();
    }
}
