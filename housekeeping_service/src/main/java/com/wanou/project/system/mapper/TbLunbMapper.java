package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbLunb;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author HuangXiLiang
 * @date 2022-05-10
 */
public interface TbLunbMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbLunb selectTbLunbById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbLunb 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbLunb> selectTbLunbList(TbLunb tbLunb);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbLunb 【请填写功能名称】
     * @return 结果
     */
    public int insertTbLunb(TbLunb tbLunb);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbLunb 【请填写功能名称】
     * @return 结果
     */
    public int updateTbLunb(TbLunb tbLunb);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbLunbById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbLunbByIds(Long[] ids);
}
