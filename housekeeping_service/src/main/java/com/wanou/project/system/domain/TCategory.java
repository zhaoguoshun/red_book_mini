package com.wanou.project.system.domain;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wanou.project.system.domain.vo.CategoryChildrenVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 分类对象 t_category
 *
 * @author ruoyi
 * @date 2023-10-29
 */
public class TCategory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 分类名称 */
    @Excel(name = "分类名称")
    private String name;

    /** 分类级别 */
    @Excel(name = "分类级别")
    private Long pid;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    /** 数量 */
    @Excel(name = "数量")
    private Long count;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 分类的封面，如果是一级分类就是随便看看的封面，二级分类则是主封面 */
    @Excel(name = "分类的封面，如果是一级分类就是随便看看的封面，二级分类则是主封面")
    private String cover;

    /** 热门封面 */
    @Excel(name = "热门封面")
    private String hotCover;

    /** 创建人 */
    @Excel(name = "创建人")
    private Long creator;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建人", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    /** $column.columnComment */
    @Excel(name = "创建人")
    private Long updater;

    /** $column.columnComment */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建人", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDate;

    private List<CategoryChildrenVO> children;

    public List<CategoryChildrenVO> getChildren() {
        return children;
    }

    public void setChildren(List<CategoryChildrenVO> children) {
        this.children = children;
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
    public void setPid(Long pid)
    {
        this.pid = pid;
    }

    public Long getPid()
    {
        return pid;
    }
    public void setSort(Long sort)
    {
        this.sort = sort;
    }

    public Long getSort()
    {
        return sort;
    }
    public void setCount(Long count)
    {
        this.count = count;
    }

    public Long getCount()
    {
        return count;
    }
    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getDescription()
    {
        return description;
    }
    public void setCover(String cover)
    {
        this.cover = cover;
    }

    public String getCover()
    {
        return cover;
    }
    public void setHotCover(String hotCover)
    {
        this.hotCover = hotCover;
    }

    public String getHotCover()
    {
        return hotCover;
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
    public void setUpdater(Long updater)
    {
        this.updater = updater;
    }

    public Long getUpdater()
    {
        return updater;
    }
    public void setUpdateDate(Date updateDate)
    {
        this.updateDate = updateDate;
    }

    public Date getUpdateDate()
    {
        return updateDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("pid", getPid())
            .append("sort", getSort())
            .append("count", getCount())
            .append("description", getDescription())
            .append("cover", getCover())
            .append("hotCover", getHotCover())
            .append("creator", getCreator())
            .append("createDate", getCreateDate())
            .append("updater", getUpdater())
            .append("updateDate", getUpdateDate())
            .toString();
    }
}
