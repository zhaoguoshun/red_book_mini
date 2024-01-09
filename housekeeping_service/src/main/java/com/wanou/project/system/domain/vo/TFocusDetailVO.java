package com.wanou.project.system.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @author ZhaoGuoShun
 * @Since 2023/11/2 19:01
 */
@Data
public class TFocusDetailVO {

    private String avatar;

    private String username;

    private Long detailId;

    private String imgsUrl;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date createDate;

    private String content;
}
