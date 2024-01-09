package com.wanou.project.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCategoryMapper;
import com.wanou.project.system.domain.TbCategory;
import com.wanou.project.system.service.ITbCategoryService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
@Service
public class TbCategoryServiceImpl implements ITbCategoryService
{
    @Autowired
    private TbCategoryMapper tbCategoryMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbCategory selectTbCategoryById(Long id)
    {
        return tbCategoryMapper.selectTbCategoryById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbCategory 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbCategory> selectTbCategoryList(TbCategory tbCategory)
    {
        return tbCategoryMapper.selectTbCategoryList(tbCategory);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbCategory 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbCategory(TbCategory tbCategory)
    {
        return tbCategoryMapper.insertTbCategory(tbCategory);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbCategory 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbCategory(TbCategory tbCategory)
    {
        return tbCategoryMapper.updateTbCategory(tbCategory);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbCategoryByIds(Long[] ids)
    {
        return tbCategoryMapper.deleteTbCategoryByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbCategoryById(Long id)
    {
        return tbCategoryMapper.deleteTbCategoryById(id);
    }
}
