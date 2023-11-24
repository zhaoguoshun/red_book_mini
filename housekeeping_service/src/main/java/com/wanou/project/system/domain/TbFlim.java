package com.wanou.project.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 tb_flim
 *
 * @author HuangXiLiang
 * @date 2022-05-01
 */
public class TbFlim extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  id */
    private Long id;

    /** 电影名称 */
    @Excel(name = "电影名称")
    private String title;

    /** 电影简介 */
    @Excel(name = "电影简介")
    private String summary;

    /** 电影链接 */
    @Excel(name = "电影链接")
    private String url;

    /** 电影分类 */
    @Excel(name = "电影分类")
    private Long categoryId;

    /** 电影标签 */
    @Excel(name = "电影标签")
    private String tagId;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "电影标签", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

    /** $column.columnComment */
    @Excel(name = "电影标签")
    private String imgUrl;

    /** 区域 */
    @Excel(name = "区域")
    private String area;

    private Integer isCollect;

    private Integer[] tags;

    public Integer getIsCollect() {
        return isCollect;
    }

    public void setIsCollect(Integer isCollect) {
        this.isCollect = isCollect;
    }

    public Integer[] getTags() {
        return tags;
    }

    public void setTags(Integer[] tags) {
        this.tags = tags;
    }

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
    public void setSummary(String summary)
    {
        this.summary = summary;
    }

    public String getSummary()
    {
        return summary;
    }
    public void setUrl(String url)
    {
        this.url = url;
    }

    public String getUrl()
    {
        return url;
    }
    public void setCategoryId(Long categoryId)
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId()
    {
        return categoryId;
    }
    public void setTagId(String tagId)
    {
        this.tagId = tagId;
    }

    public String getTagId()
    {
        return tagId;
    }
    public void setGmtCreate(Date gmtCreate)
    {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtCreate()
    {
        return gmtCreate;
    }
    public void setImgUrl(String imgUrl)
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl()
    {
        return imgUrl;
    }
    public void setArea(String area)
    {
        this.area = area;
    }

    public String getArea()
    {
        return area;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("title", getTitle())
                .append("summary", getSummary())
                .append("url", getUrl())
                .append("categoryId", getCategoryId())
                .append("tagId", getTagId())
                .append("gmtCreate", getGmtCreate())
                .append("imgUrl", getImgUrl())
                .append("area", getArea())
                .toString();
    }
}
