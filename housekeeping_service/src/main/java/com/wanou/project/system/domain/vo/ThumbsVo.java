package com.wanou.project.system.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @author ZhaoGuoShun
 * @Since 2023/11/15 16:22
 */
@Data
public class ThumbsVo {

    private String nickname;

    private String avatar;

    private String content;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date createTime;

    private String detailContent;

    private String cover;

    private Long detailId;

    private Long userId;

    private Boolean isfollow;
}
