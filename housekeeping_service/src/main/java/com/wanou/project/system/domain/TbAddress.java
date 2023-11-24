package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_address
 *
 * @author ruoyi
 * @date 2023-04-03
 */
public class TbAddress extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 用户名 */
    @Excel(name = "用户名")
    private String username;

    /** 姓名 */
    @Excel(name = "姓名")
    private String delname;

    /** 联系手机 */
    @Excel(name = "联系手机")
    private String telephone;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getUsername()
    {
        return username;
    }
    public void setDelname(String delname)
    {
        this.delname = delname;
    }

    public String getDelname()
    {
        return delname;
    }
    public void setTelephone(String telephone)
    {
        this.telephone = telephone;
    }

    public String getTelephone()
    {
        return telephone;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("username", getUsername())
            .append("delname", getDelname())
            .append("telephone", getTelephone())
            .append("address", getAddress())
            .append("userId", getUserId())
            .append("createTime", getCreateTime())
            .toString();
    }
}
