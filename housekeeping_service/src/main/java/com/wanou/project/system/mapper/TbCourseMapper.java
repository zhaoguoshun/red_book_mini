package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbCourse;

/**
 * 课程Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-19
 */
public interface TbCourseMapper
{
    /**
     * 查询课程
     *
     * @param id 课程主键
     * @return 课程
     */
    public TbCourse selectTbCourseById(Long id);

    /**
     * 查询课程列表
     *
     * @param tbCourse 课程
     * @return 课程集合
     */
    public List<TbCourse> selectTbCourseList(TbCourse tbCourse);

    /**
     * 新增课程
     *
     * @param tbCourse 课程
     * @return 结果
     */
    public int insertTbCourse(TbCourse tbCourse);

    /**
     * 修改课程
     *
     * @param tbCourse 课程
     * @return 结果
     */
    public int updateTbCourse(TbCourse tbCourse);

    /**
     * 删除课程
     *
     * @param id 课程主键
     * @return 结果
     */
    public int deleteTbCourseById(Long id);

    /**
     * 批量删除课程
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbCourseByIds(Long[] ids);
}
