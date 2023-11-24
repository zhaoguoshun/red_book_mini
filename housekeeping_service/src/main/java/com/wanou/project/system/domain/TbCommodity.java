package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 商品对象 tb_commodity
 *
 * @author ruoyi
 * @date 2023-04-05
 */
public class TbCommodity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 价格 */
    @Excel(name = "价格")
    private String price;

    /** 数量 */
    @Excel(name = "数量")
    private String number;

    /** 类型 */
    @Excel(name = "类型")
    private String type;

    /** 图片 */
    @Excel(name = "图片")
    private String cover;

    /** 详情 */
    @Excel(name = "详情")
    private String details;

    /** 分类id */
    @Excel(name = "分类id")
    private Long typeId;

    private String typeName;

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
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
    public void setPrice(String price)
    {
        this.price = price;
    }

    public String getPrice()
    {
        return price;
    }
    public void setNumber(String number)
    {
        this.number = number;
    }

    public String getNumber()
    {
        return number;
    }
    public void setType(String type)
    {
        this.type = type;
    }

    public String getType()
    {
        return type;
    }
    public void setCover(String cover)
    {
        this.cover = cover;
    }

    public String getCover()
    {
        return cover;
    }
    public void setDetails(String details)
    {
        this.details = details;
    }

    public String getDetails()
    {
        return details;
    }
    public void setTypeId(Long typeId)
    {
        this.typeId = typeId;
    }

    public Long getTypeId()
    {
        return typeId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("price", getPrice())
                .append("number", getNumber())
                .append("type", getType())
                .append("cover", getCover())
                .append("details", getDetails())
                .append("createTime", getCreateTime())
                .append("typeId", getTypeId())
                .toString();
    }
}
