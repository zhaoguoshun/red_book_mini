package com.wanou.project.system.domain;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 t_img_detail
 *
 * @author ruoyi
 * @date 2023-10-28
 */
public class TImgDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    private Long id;

    private String content;

    private String cover;

    private Long userId;

    private Long categoryId;

    private Long categoryPid;

    private String imgsUrl;

    private Long count;

    private Long sort;

    private Long status;

    private Long viewCount;

    private Long agreeCount;

    private Long collectionCount;

    private Long commentCount;

    private Long creator;

    private Date createDate;

    private Long updater;

    private Date updateDate;

    private Long loginUserId;

    private String username;

    private String avatar;

    private List<String> imgList;

    private Long schoolId;

    public Long getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Long schoolId) {
        this.schoolId = schoolId;
    }

    public List<String> getImgList() {
        return imgList;
    }

    public void setImgList(List<String> imgList) {
        this.imgList = imgList;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Long getLoginUserId() {
        return loginUserId;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setLoginUserId(Long loginUserId) {
        this.loginUserId = loginUserId;
    }

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
    public void setCover(String cover)
    {
        this.cover = cover;
    }

    public String getCover()
    {
        return cover;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setCategoryId(Long categoryId)
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId()
    {
        return categoryId;
    }
    public void setCategoryPid(Long categoryPid)
    {
        this.categoryPid = categoryPid;
    }

    public Long getCategoryPid()
    {
        return categoryPid;
    }
    public void setImgsUrl(String imgsUrl)
    {
        this.imgsUrl = imgsUrl;
    }

    public String getImgsUrl()
    {
        return imgsUrl;
    }
    public void setCount(Long count)
    {
        this.count = count;
    }

    public Long getCount()
    {
        return count;
    }
    public void setSort(Long sort)
    {
        this.sort = sort;
    }

    public Long getSort()
    {
        return sort;
    }
    public void setStatus(Long status)
    {
        this.status = status;
    }

    public Long getStatus()
    {
        return status;
    }
    public void setViewCount(Long viewCount)
    {
        this.viewCount = viewCount;
    }

    public Long getViewCount()
    {
        return viewCount;
    }
    public void setAgreeCount(Long agreeCount)
    {
        this.agreeCount = agreeCount;
    }

    public Long getAgreeCount()
    {
        return agreeCount;
    }
    public void setCollectionCount(Long collectionCount)
    {
        this.collectionCount = collectionCount;
    }

    public Long getCollectionCount()
    {
        return collectionCount;
    }
    public void setCommentCount(Long commentCount)
    {
        this.commentCount = commentCount;
    }

    public Long getCommentCount()
    {
        return commentCount;
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
            .append("content", getContent())
            .append("cover", getCover())
            .append("userId", getUserId())
            .append("categoryId", getCategoryId())
            .append("categoryPid", getCategoryPid())
            .append("imgsUrl", getImgsUrl())
            .append("count", getCount())
            .append("sort", getSort())
            .append("status", getStatus())
            .append("viewCount", getViewCount())
            .append("agreeCount", getAgreeCount())
            .append("collectionCount", getCollectionCount())
            .append("commentCount", getCommentCount())
            .append("creator", getCreator())
            .append("createDate", getCreateDate())
            .append("updater", getUpdater())
            .append("updateDate", getUpdateDate())
            .toString();
    }
}
