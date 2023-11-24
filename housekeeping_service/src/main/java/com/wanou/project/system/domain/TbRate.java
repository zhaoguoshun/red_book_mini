package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_rate
 *
 * @author HuangXiLiang
 * @date 2022-05-09
 */
public class TbRate extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 评分人 */
    @Excel(name = "评分人")
    private Long userId;

    /** 分数 */
    @Excel(name = "分数")
    private Long rateNum;

    /** 评分 */
    @Excel(name = "评分")
    private Long movieId;

    /** 评分时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "评分时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

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
    public void setRateNum(Long rateNum)
    {
        this.rateNum = rateNum;
    }

    public Long getRateNum()
    {
        return rateNum;
    }
    public void setMovieId(Long movieId)
    {
        this.movieId = movieId;
    }

    public Long getMovieId()
    {
        return movieId;
    }
    public void setGmtCreate(Date gmtCreate)
    {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtCreate()
    {
        return gmtCreate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("userId", getUserId())
                .append("rateNum", getRateNum())
                .append("movieId", getMovieId())
                .append("gmtCreate", getGmtCreate())
                .toString();
    }
}
