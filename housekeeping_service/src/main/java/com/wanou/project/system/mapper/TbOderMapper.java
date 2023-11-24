package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbOder;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-05
 */
public interface TbOderMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbOder selectTbOderById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbOder 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbOder> selectTbOderList(TbOder tbOder);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbOder 【请填写功能名称】
     * @return 结果
     */
    public int insertTbOder(TbOder tbOder);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbOder 【请填写功能名称】
     * @return 结果
     */
    public int updateTbOder(TbOder tbOder);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbOderById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbOderByIds(Long[] ids);
}
