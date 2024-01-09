package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbAnchor;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-01
 */
public interface TbAnchorMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbAnchor selectTbAnchorById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbAnchor 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbAnchor> selectTbAnchorList(TbAnchor tbAnchor);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbAnchor 【请填写功能名称】
     * @return 结果
     */
    public int insertTbAnchor(TbAnchor tbAnchor);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbAnchor 【请填写功能名称】
     * @return 结果
     */
    public int updateTbAnchor(TbAnchor tbAnchor);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbAnchorById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbAnchorByIds(Long[] ids);
}
