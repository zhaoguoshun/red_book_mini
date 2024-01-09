package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbTypeMapper;
import com.wanou.project.system.domain.TbType;
import com.wanou.project.system.service.ITbTypeService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-05
 */
@Service
public class TbTypeServiceImpl implements ITbTypeService
{
    @Autowired
    private TbTypeMapper tbTypeMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbType selectTbTypeById(Long id)
    {
        return tbTypeMapper.selectTbTypeById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbType 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbType> selectTbTypeList(TbType tbType)
    {
        return tbTypeMapper.selectTbTypeList(tbType);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbType 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbType(TbType tbType)
    {
        tbType.setCreateTime(DateUtils.getNowDate());
        return tbTypeMapper.insertTbType(tbType);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbType 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbType(TbType tbType)
    {
        return tbTypeMapper.updateTbType(tbType);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbTypeByIds(Long[] ids)
    {
        return tbTypeMapper.deleteTbTypeByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbTypeById(Long id)
    {
        return tbTypeMapper.deleteTbTypeById(id);
    }
}
