package com.wanou.project.system.domain.vo;

import lombok.Data;

import java.util.Date;

/**
 * @author ZhaoGuoShun
 * @Since 2023/11/2 19:38
 */
@Data
public class SysUserVO {
    private Long id;

    /**
     * 部门ID
     */
    private Long deptId;

    private String username;
    /** 用户ID */
    private Long userId;


    /** 用户账号 */
    private String userName;

    /** 用户昵称 */
    private String nickName;

    /** 用户邮箱 */
    private String email;

    /** 手机号码 */
    private String phonenumber;

    /** 用户性别 */
    private String sex;

    /** 用户头像 */
    private String avatar;

    /** 密码 */
    private String password;

    private String status;

    private String delFlag;

    private String loginIp;

    private Date loginDate;
}
