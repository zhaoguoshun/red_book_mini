package com.wanou.project.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_oder
 *
 * @author ruoyi
 * @date 2023-04-05
 */
public class TbOder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String goodName;

    /** 数量 */
    @Excel(name = "数量")
    private Long count;

    /** 金额 */
    @Excel(name = "金额")
    private BigDecimal price;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 订单号 */
    @Excel(name = "订单号")
    private String orderNum;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setGoodName(String goodName)
    {
        this.goodName = goodName;
    }

    public String getGoodName()
    {
        return goodName;
    }
    public void setCount(Long count)
    {
        this.count = count;
    }

    public Long getCount()
    {
        return count;
    }
    public void setPrice(BigDecimal price)
    {
        this.price = price;
    }

    public BigDecimal getPrice()
    {
        return price;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setOrderNum(String orderNum)
    {
        this.orderNum = orderNum;
    }

    public String getOrderNum()
    {
        return orderNum;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("goodName", getGoodName())
                .append("count", getCount())
                .append("price", getPrice())
                .append("userId", getUserId())
                .append("createTime", getCreateTime())
                .append("orderNum", getOrderNum())
                .append("address", getAddress())
                .toString();
    }
}
