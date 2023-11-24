package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 首页管理对象 tb_page
 *
 * @author ruoyi
 * @date 2023-04-01
 */
public class TbPage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 封面 */
    @Excel(name = "封面")
    private String imgUrl;

    /** 类型 */
    @Excel(name = "类型")
    private String type;

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
    public void setImgUrl(String imgUrl)
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl()
    {
        return imgUrl;
    }
    public void setType(String type)
    {
        this.type = type;
    }

    public String getType()
    {
        return type;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("content", getContent())
                .append("imgUrl", getImgUrl())
                .append("createTime", getCreateTime())
                .append("type", getType())
                .toString();
    }
}
