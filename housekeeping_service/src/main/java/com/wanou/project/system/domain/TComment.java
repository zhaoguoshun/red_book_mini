package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 t_comment
 *
 * @author ruoyi
 * @date 2023-10-28
 */
public class TComment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 作品id */
    @Excel(name = "作品id")
    private Long mid;

    /** 用户id */
    @Excel(name = "用户id")
    private Long uid;

    /** 上级id */
    @Excel(name = "上级id")
    private Long pid;

    /** 回复id */
    @Excel(name = "回复id")
    private Long replyId;

    /** 级别 */
    @Excel(name = "级别")
    private Long level;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 数量 */
    @Excel(name = "数量")
    private Long count;

    /** 2个以上 */
    @Excel(name = "2个以上")
    private Long twoNums;

    /** 创建人 */
    @Excel(name = "创建人")
    private Long creator;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    /** 回复uid */
    @Excel(name = "回复uid")
    private Long replyUid;

    private String nickname;

    private String detailTitle;

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getDetailTitle() {
        return detailTitle;
    }

    public void setDetailTitle(String detailTitle) {
        this.detailTitle = detailTitle;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setMid(Long mid)
    {
        this.mid = mid;
    }

    public Long getMid()
    {
        return mid;
    }
    public void setUid(Long uid)
    {
        this.uid = uid;
    }

    public Long getUid()
    {
        return uid;
    }
    public void setPid(Long pid)
    {
        this.pid = pid;
    }

    public Long getPid()
    {
        return pid;
    }
    public void setReplyId(Long replyId)
    {
        this.replyId = replyId;
    }

    public Long getReplyId()
    {
        return replyId;
    }
    public void setLevel(Long level)
    {
        this.level = level;
    }

    public Long getLevel()
    {
        return level;
    }
    public void setSort(Long sort)
    {
        this.sort = sort;
    }

    public Long getSort()
    {
        return sort;
    }
    public void setContent(String content)
    {
        this.content = content;
    }

    public String getContent()
    {
        return content;
    }
    public void setCount(Long count)
    {
        this.count = count;
    }

    public Long getCount()
    {
        return count;
    }
    public void setTwoNums(Long twoNums)
    {
        this.twoNums = twoNums;
    }

    public Long getTwoNums()
    {
        return twoNums;
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
    public void setReplyUid(Long replyUid)
    {
        this.replyUid = replyUid;
    }

    public Long getReplyUid()
    {
        return replyUid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("mid", getMid())
            .append("uid", getUid())
            .append("pid", getPid())
            .append("replyId", getReplyId())
            .append("level", getLevel())
            .append("sort", getSort())
            .append("content", getContent())
            .append("count", getCount())
            .append("twoNums", getTwoNums())
            .append("creator", getCreator())
            .append("createDate", getCreateDate())
            .append("replyUid", getReplyUid())
            .toString();
    }
}
