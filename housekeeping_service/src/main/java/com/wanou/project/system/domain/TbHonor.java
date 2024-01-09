package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 荣誉对象 tb_honor
 *
 * @author ruoyi
 * @date 2023-04-02
 */
public class TbHonor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 荣誉名称 */
    @Excel(name = "荣誉名称")
    private String title;

    /** 荣誉简介 */
    @Excel(name = "荣誉简介")
    private String content;

    /** 荣誉类型 */
    @Excel(name = "荣誉类型")
    private String type;

    /** 荣誉图片 */
    @Excel(name = "荣誉图片")
    private String imgUrl;

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
    public void setContent(String content)
    {
        this.content = content;
    }

    public String getContent()
    {
        return content;
    }
    public void setType(String type)
    {
        this.type = type;
    }

    public String getType()
    {
        return type;
    }
    public void setImgUrl(String imgUrl)
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl()
    {
        return imgUrl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("content", getContent())
            .append("type", getType())
            .append("imgUrl", getImgUrl())
            .append("createTime", getCreateTime())
            .toString();
    }
}
