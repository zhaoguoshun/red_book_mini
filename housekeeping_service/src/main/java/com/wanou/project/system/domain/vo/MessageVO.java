package com.wanou.project.system.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @author ZhaoGuoShun
 * @Since 2023/11/13 18:50
 */
@Data
public class MessageVO {

    private String nickname;

    private String avatar;

    private String content;

    private String time;

    private Long sendId;

    private Long acceptId;

    @JsonFormat(locale="zh", timezone="GMT+8", pattern="HH:mm:ss")
    private Date createDate;

    private Long userId;

    private Long count;

}
