package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbSchool;

/**
 * 学校Service接口
 *
 * @author ruoyi
 * @date 2023-12-23
 */
public interface ITbSchoolService
{
    /**
     * 查询学校
     *
     * @param id 学校主键
     * @return 学校
     */
    public TbSchool selectTbSchoolById(Long id);

    /**
     * 查询学校列表
     *
     * @param tbSchool 学校
     * @return 学校集合
     */
    public List<TbSchool> selectTbSchoolList(TbSchool tbSchool);

    /**
     * 新增学校
     *
     * @param tbSchool 学校
     * @return 结果
     */
    public int insertTbSchool(TbSchool tbSchool);

    /**
     * 修改学校
     *
     * @param tbSchool 学校
     * @return 结果
     */
    public int updateTbSchool(TbSchool tbSchool);

    /**
     * 批量删除学校
     *
     * @param ids 需要删除的学校主键集合
     * @return 结果
     */
    public int deleteTbSchoolByIds(Long[] ids);

    /**
     * 删除学校信息
     *
     * @param id 学校主键
     * @return 结果
     */
    public int deleteTbSchoolById(Long id);
}
