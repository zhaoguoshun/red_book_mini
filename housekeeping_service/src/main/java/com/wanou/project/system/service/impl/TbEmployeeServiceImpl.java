package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbEmployeeMapper;
import com.wanou.project.system.domain.TbEmployee;
import com.wanou.project.system.service.ITbEmployeeService;

/**
 * 员工信息Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbEmployeeServiceImpl implements ITbEmployeeService
{
    @Autowired
    private TbEmployeeMapper tbEmployeeMapper;

    /**
     * 查询员工信息
     *
     * @param id 员工信息主键
     * @return 员工信息
     */
    @Override
    public TbEmployee selectTbEmployeeById(Long id)
    {
        return tbEmployeeMapper.selectTbEmployeeById(id);
    }

    /**
     * 查询员工信息列表
     *
     * @param tbEmployee 员工信息
     * @return 员工信息
     */
    @Override
    public List<TbEmployee> selectTbEmployeeList(TbEmployee tbEmployee)
    {
        return tbEmployeeMapper.selectTbEmployeeList(tbEmployee);
    }

    /**
     * 新增员工信息
     *
     * @param tbEmployee 员工信息
     * @return 结果
     */
    @Override
    public int insertTbEmployee(TbEmployee tbEmployee)
    {
        tbEmployee.setCreateTime(DateUtils.getNowDate());
        return tbEmployeeMapper.insertTbEmployee(tbEmployee);
    }

    /**
     * 修改员工信息
     *
     * @param tbEmployee 员工信息
     * @return 结果
     */
    @Override
    public int updateTbEmployee(TbEmployee tbEmployee)
    {
        return tbEmployeeMapper.updateTbEmployee(tbEmployee);
    }

    /**
     * 批量删除员工信息
     *
     * @param ids 需要删除的员工信息主键
     * @return 结果
     */
    @Override
    public int deleteTbEmployeeByIds(Long[] ids)
    {
        return tbEmployeeMapper.deleteTbEmployeeByIds(ids);
    }

    /**
     * 删除员工信息信息
     *
     * @param id 员工信息主键
     * @return 结果
     */
    @Override
    public int deleteTbEmployeeById(Long id)
    {
        return tbEmployeeMapper.deleteTbEmployeeById(id);
    }
}
