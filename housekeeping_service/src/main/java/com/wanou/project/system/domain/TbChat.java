package com.wanou.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_chat
 *
 * @author ruoyi
 * @date 2023-04-08
 */
public class TbChat extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 发送人 */
    @Excel(name = "发送人")
    private Long userId;

    /** 接收人 */
    @Excel(name = "接收人")
    private Long reviewId;

    /** 1 */
    @Excel(name = "1")
    private Long isRead;

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
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setReviewId(Long reviewId)
    {
        this.reviewId = reviewId;
    }

    public Long getReviewId()
    {
        return reviewId;
    }
    public void setIsRead(Long isRead)
    {
        this.isRead = isRead;
    }

    public Long getIsRead()
    {
        return isRead;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("content", getContent())
                .append("userId", getUserId())
                .append("reviewId", getReviewId())
                .append("createTime", getCreateTime())
                .append("isRead", getIsRead())
                .toString();
    }
}
