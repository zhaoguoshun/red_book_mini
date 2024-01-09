package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCourseMapper;
import com.wanou.project.system.domain.TbCourse;
import com.wanou.project.system.service.ITbCourseService;

/**
 * 课程Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-19
 */
@Service
public class TbCourseServiceImpl implements ITbCourseService
{
    @Autowired
    private TbCourseMapper tbCourseMapper;

    /**
     * 查询课程
     *
     * @param id 课程主键
     * @return 课程
     */
    @Override
    public TbCourse selectTbCourseById(Long id)
    {
        return tbCourseMapper.selectTbCourseById(id);
    }

    /**
     * 查询课程列表
     *
     * @param tbCourse 课程
     * @return 课程
     */
    @Override
    public List<TbCourse> selectTbCourseList(TbCourse tbCourse)
    {
        return tbCourseMapper.selectTbCourseList(tbCourse);
    }

    /**
     * 新增课程
     *
     * @param tbCourse 课程
     * @return 结果
     */
    @Override
    public int insertTbCourse(TbCourse tbCourse)
    {
        tbCourse.setCreateTime(DateUtils.getNowDate());
        tbCourse.setUserId(SecurityUtils.getUserId());
        return tbCourseMapper.insertTbCourse(tbCourse);
    }

    /**
     * 修改课程
     *
     * @param tbCourse 课程
     * @return 结果
     */
    @Override
    public int updateTbCourse(TbCourse tbCourse)
    {
        return tbCourseMapper.updateTbCourse(tbCourse);
    }

    /**
     * 批量删除课程
     *
     * @param ids 需要删除的课程主键
     * @return 结果
     */
    @Override
    public int deleteTbCourseByIds(Long[] ids)
    {
        return tbCourseMapper.deleteTbCourseByIds(ids);
    }

    /**
     * 删除课程信息
     *
     * @param id 课程主键
     * @return 结果
     */
    @Override
    public int deleteTbCourseById(Long id)
    {
        return tbCourseMapper.deleteTbCourseById(id);
    }
}
