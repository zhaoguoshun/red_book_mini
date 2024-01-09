package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbCategory;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
public interface ITbCategoryService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbCategory selectTbCategoryById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbCategory 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbCategory> selectTbCategoryList(TbCategory tbCategory);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbCategory 【请填写功能名称】
     * @return 结果
     */
    public int insertTbCategory(TbCategory tbCategory);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbCategory 【请填写功能名称】
     * @return 结果
     */
    public int updateTbCategory(TbCategory tbCategory);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbCategoryByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbCategoryById(Long id);
}
