package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TCategory;

/**
 * 分类Service接口
 *
 * @author ruoyi
 * @date 2023-10-29
 */
public interface ITCategoryService
{
    /**
     * 查询分类
     *
     * @param id 分类主键
     * @return 分类
     */
    public TCategory selectTCategoryById(Long id);

    /**
     * 查询分类列表
     *
     * @param tCategory 分类
     * @return 分类集合
     */
    public List<TCategory> selectTCategoryList(TCategory tCategory);

    /**
     * 新增分类
     *
     * @param tCategory 分类
     * @return 结果
     */
    public int insertTCategory(TCategory tCategory);

    /**
     * 修改分类
     *
     * @param tCategory 分类
     * @return 结果
     */
    public int updateTCategory(TCategory tCategory);

    /**
     * 批量删除分类
     *
     * @param ids 需要删除的分类主键集合
     * @return 结果
     */
    public int deleteTCategoryByIds(Long[] ids);

    /**
     * 删除分类信息
     *
     * @param id 分类主键
     * @return 结果
     */
    public int deleteTCategoryById(Long id);
}
