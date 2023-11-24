package com.wanou.project.applet.domain;

import cn.hutool.core.date.DateUtil;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.models.auth.In;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * @author txh
 * @date 2021/8/20 16:47
 * 小程序用户
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MiniUser implements Serializable {
    private static final long serialVersionUID = -455520226604305043L;

    private Long id;
    private String openId; //微信openId
    @JsonProperty("mName")
    private String mName; //姓名
    private String phone; //手机号
    private String idCard; //身份证
    private String companyName; //公司名称
    private String position; //职位
    private String portrait; //头像
    private Date regTime; //注册时间
    private Integer status; //状态：1=正常 0=禁用
    private Long personId; //对应的人员id (tx_person)
    private Integer isAuditor; //是否有审核权限 1=有 0=没有 默认为0没有



}
