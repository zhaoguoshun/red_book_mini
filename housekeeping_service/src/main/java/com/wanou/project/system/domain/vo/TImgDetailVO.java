
package com.wanou.project.system.domain.vo;

import com.wanou.framework.web.domain.BaseEntity;
import com.wanou.project.system.domain.SysUser;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;
import java.util.List;

/**
 * 【请填写功能名称】对象 t_img_detail
 *
 * @author ruoyi
 * @date 2023-10-28
 */
@Data
public class TImgDetailVO extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    private Long id;

    private String content;

    private String cover;

    private Long userId;

    private Long categoryId;

    private Long categoryPid;

    private List<String> imgsUrl;

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

    private Boolean isCollection;

    private String username;

    private String avatar;

    private SysUser user;


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
