package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbEmployee;

/**
 * 员工信息Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface TbEmployeeMapper
{
    /**
     * 查询员工信息
     *
     * @param id 员工信息主键
     * @return 员工信息
     */
    public TbEmployee selectTbEmployeeById(Long id);

    /**
     * 查询员工信息列表
     *
     * @param tbEmployee 员工信息
     * @return 员工信息集合
     */
    public List<TbEmployee> selectTbEmployeeList(TbEmployee tbEmployee);

    /**
     * 新增员工信息
     *
     * @param tbEmployee 员工信息
     * @return 结果
     */
    public int insertTbEmployee(TbEmployee tbEmployee);

    /**
     * 修改员工信息
     *
     * @param tbEmployee 员工信息
     * @return 结果
     */
    public int updateTbEmployee(TbEmployee tbEmployee);

    /**
     * 删除员工信息
     *
     * @param id 员工信息主键
     * @return 结果
     */
    public int deleteTbEmployeeById(Long id);

    /**
     * 批量删除员工信息
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbEmployeeByIds(Long[] ids);
}
