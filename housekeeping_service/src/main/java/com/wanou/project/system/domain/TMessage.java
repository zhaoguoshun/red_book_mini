package com.wanou.project.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 t_message
 *
 * @author ruoyi
 * @date 2023-11-13
 */
public class TMessage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long sendId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long acceptId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String content;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String time;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long creator;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date createDate;

    /** 是否已读未读0未读1已读 */
    @Excel(name = "是否已读未读0未读1已读")
    private Long isNew;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setSendId(Long sendId)
    {
        this.sendId = sendId;
    }

    public Long getSendId()
    {
        return sendId;
    }
    public void setAcceptId(Long acceptId)
    {
        this.acceptId = acceptId;
    }

    public Long getAcceptId()
    {
        return acceptId;
    }
    public void setContent(String content)
    {
        this.content = content;
    }

    public String getContent()
    {
        return content;
    }
    public void setTime(String time)
    {
        this.time = time;
    }

    public String getTime()
    {
        return time;
    }
    public void setCreator(Long creator)
    {
        this.creator = creator;
    }

    public Long getCreator()
    {
        return creator;
    }
    public void setCreateDate(Date createDate)
    {
        this.createDate = createDate;
    }

    public Date getCreateDate()
    {
        return createDate;
    }
    public void setIsNew(Long isNew)
    {
        this.isNew = isNew;
    }

    public Long getIsNew()
    {
        return isNew;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("sendId", getSendId())
                .append("acceptId", getAcceptId())
                .append("content", getContent())
                .append("time", getTime())
                .append("creator", getCreator())
                .append("createDate", getCreateDate())
                .append("isNew", getIsNew())
                .toString();
    }
}
