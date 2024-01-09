package com.wanou.project.applet.domain.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author txh
 * @date 2021/8/20 16:55
 */
@Data
public class MiniUserDto implements Serializable {
    private static final long serialVersionUID = -6569752772274618225L;

    private String openId;
    private String phone;
    private String portrait;
    private String mName; //姓名
    //是否已经实名认证过  true:认证过,false未认证过
    private boolean authenticated;
    //令牌
    private String miniToken;
    private Long personId; //所属人员id
    private Integer isAuditor; //是否有审核权限 1=有 0=没有 默认没有
}
