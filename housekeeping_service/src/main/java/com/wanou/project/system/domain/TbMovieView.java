package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_movie_view
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
public class TbMovieView extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 电影id */
    @Excel(name = "电影id")
    private Long movieId;

    /** $column.columnComment */
    @Excel(name = "电影id")
    private Long userId;

    private Long viewCount;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "电影id", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

    /** 电影名称 */
    @Excel(name = "电影名称")
    private String movieName;

    public Long getCount() {
        return viewCount;
    }

    public void setCount(Long count) {
        this.viewCount = count;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setMovieId(Long movieId)
    {
        this.movieId = movieId;
    }

    public Long getMovieId()
    {
        return movieId;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setGmtCreate(Date gmtCreate)
    {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtCreate()
    {
        return gmtCreate;
    }
    public void setMovieName(String movieName)
    {
        this.movieName = movieName;
    }

    public String getMovieName()
    {
        return movieName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("movieId", getMovieId())
                .append("userId", getUserId())
                .append("gmtCreate", getGmtCreate())
                .append("movieName", getMovieName())
                .toString();
    }
}
