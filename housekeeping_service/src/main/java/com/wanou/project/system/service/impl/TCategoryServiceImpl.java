package com.wanou.project.system.service.impl;

import java.util.List;

import com.wanou.project.system.domain.vo.CategoryChildrenVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TCategoryMapper;
import com.wanou.project.system.domain.TCategory;
import com.wanou.project.system.service.ITCategoryService;

/**
 * 分类Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-29
 */
@Service
public class TCategoryServiceImpl implements ITCategoryService
{
    @Autowired
    private TCategoryMapper tCategoryMapper;

    /**
     * 查询分类
     *
     * @param id 分类主键
     * @return 分类
     */
    @Override
    public TCategory selectTCategoryById(Long id)
    {
        return tCategoryMapper.selectTCategoryById(id);
    }

    /**
     * 查询分类列表
     *
     * @param tCategory 分类
     * @return 分类
     */
    @Override
    public List<TCategory> selectTCategoryList(TCategory tCategory) {
        List<TCategory> tCategories = tCategoryMapper.selectTCategoryList(tCategory);
        for (TCategory category : tCategories) {
            List<CategoryChildrenVO> categoryDetail = tCategoryMapper.getCategoryDetail(category.getId());
            category.setChildren(categoryDetail);
        }
        return tCategories;
    }

    /**
     * 新增分类
     *
     * @param tCategory 分类
     * @return 结果
     */
    @Override
    public int insertTCategory(TCategory tCategory)
    {
        return tCategoryMapper.insertTCategory(tCategory);
    }

    /**
     * 修改分类
     *
     * @param tCategory 分类
     * @return 结果
     */
    @Override
    public int updateTCategory(TCategory tCategory)
    {
        return tCategoryMapper.updateTCategory(tCategory);
    }

    /**
     * 批量删除分类
     *
     * @param ids 需要删除的分类主键
     * @return 结果
     */
    @Override
    public int deleteTCategoryByIds(Long[] ids)
    {
        return tCategoryMapper.deleteTCategoryByIds(ids);
    }

    /**
     * 删除分类信息
     *
     * @param id 分类主键
     * @return 结果
     */
    @Override
    public int deleteTCategoryById(Long id)
    {
        return tCategoryMapper.deleteTCategoryById(id);
    }
}
