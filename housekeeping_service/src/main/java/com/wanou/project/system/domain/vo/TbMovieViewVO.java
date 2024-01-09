package com.wanou.project.system.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.wanou.framework.aspectj.lang.annotation.Excel;
import com.wanou.framework.web.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 【请填写功能名称】对象 tb_movie_view
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TbMovieViewVO extends BaseEntity
{

    /** id */
    private Long id;

    /** 电影id */
    @Excel(name = "电影id")
    private Long movieId;

    private Long viewCount;

    /** 电影名称 */
    @Excel(name = "电影名称")
    private String movieName;

}
