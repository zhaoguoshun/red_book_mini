package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbTag;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
public interface ITbTagService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbTag selectTbTagById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbTag 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbTag> selectTbTagList(TbTag tbTag);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbTag 【请填写功能名称】
     * @return 结果
     */
    public int insertTbTag(TbTag tbTag);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbTag 【请填写功能名称】
     * @return 结果
     */
    public int updateTbTag(TbTag tbTag);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbTagByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbTagById(Long id);
}
