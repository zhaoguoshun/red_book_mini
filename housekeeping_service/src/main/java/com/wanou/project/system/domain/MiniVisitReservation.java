package com.wanou.project.system.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 预约记录管理
 */
@Data
public class MiniVisitReservation implements Serializable {
    private static final long serialVersionUID = -7491055829424528070L;

    private Long id;
    private Long intervieweeId;
    private Long visitDeptId; //拜访部门id
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date visitDateStart;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date visitDateEnd;
    private String domainId; //通行区域id集合
    private String remark;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    private Long createUserId;
    private Long status;
    private Long isDel;
    private Long auditorId; //审核人对应person表id
    private Date auditTime; //审核时间
    private String name;
    private String mName;
    private String deptName;
}
