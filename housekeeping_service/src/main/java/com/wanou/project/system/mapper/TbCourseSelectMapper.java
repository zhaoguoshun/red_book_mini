package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbCourseSelect;

/**
 * 课程选择Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-19
 */
public interface TbCourseSelectMapper
{
    /**
     * 查询课程选择
     *
     * @param id 课程选择主键
     * @return 课程选择
     */
    public TbCourseSelect selectTbCourseSelectById(Long id);

    /**
     * 查询课程选择列表
     *
     * @param tbCourseSelect 课程选择
     * @return 课程选择集合
     */
    public List<TbCourseSelect> selectTbCourseSelectList(TbCourseSelect tbCourseSelect);

    /**
     * 新增课程选择
     *
     * @param tbCourseSelect 课程选择
     * @return 结果
     */
    public int insertTbCourseSelect(TbCourseSelect tbCourseSelect);

    /**
     * 修改课程选择
     *
     * @param tbCourseSelect 课程选择
     * @return 结果
     */
    public int updateTbCourseSelect(TbCourseSelect tbCourseSelect);

    /**
     * 删除课程选择
     *
     * @param id 课程选择主键
     * @return 结果
     */
    public int deleteTbCourseSelectById(Long id);

    /**
     * 批量删除课程选择
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbCourseSelectByIds(Long[] ids);
}
