package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbJlSelect;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-04-25
 */
public interface ITbJlSelectService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbJlSelect selectTbJlSelectById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbJlSelect 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbJlSelect> selectTbJlSelectList(TbJlSelect tbJlSelect);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbJlSelect 【请填写功能名称】
     * @return 结果
     */
    public int insertTbJlSelect(TbJlSelect tbJlSelect);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbJlSelect 【请填写功能名称】
     * @return 结果
     */
    public int updateTbJlSelect(TbJlSelect tbJlSelect);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbJlSelectByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbJlSelectById(Long id);
}
