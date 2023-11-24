package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbType;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-05
 */
public interface TbTypeMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbType selectTbTypeById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbType 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbType> selectTbTypeList(TbType tbType);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbType 【请填写功能名称】
     * @return 结果
     */
    public int insertTbType(TbType tbType);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbType 【请填写功能名称】
     * @return 结果
     */
    public int updateTbType(TbType tbType);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbTypeById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbTypeByIds(Long[] ids);
}
