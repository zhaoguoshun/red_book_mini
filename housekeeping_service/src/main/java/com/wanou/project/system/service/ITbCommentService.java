package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbComment;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-04-05
 */
public interface ITbCommentService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbComment selectTbCommentById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbComment 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbComment> selectTbCommentList(TbComment tbComment);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbComment 【请填写功能名称】
     * @return 结果
     */
    public int insertTbComment(TbComment tbComment);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbComment 【请填写功能名称】
     * @return 结果
     */
    public int updateTbComment(TbComment tbComment);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbCommentByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbCommentById(Long id);
}
