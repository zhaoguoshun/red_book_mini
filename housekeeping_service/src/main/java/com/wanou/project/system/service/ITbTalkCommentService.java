package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbTalkComment;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-03-30
 */
public interface ITbTalkCommentService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbTalkComment selectTbTalkCommentById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbTalkComment 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbTalkComment> selectTbTalkCommentList(TbTalkComment tbTalkComment);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbTalkComment 【请填写功能名称】
     * @return 结果
     */
    public int insertTbTalkComment(TbTalkComment tbTalkComment);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbTalkComment 【请填写功能名称】
     * @return 结果
     */
    public int updateTbTalkComment(TbTalkComment tbTalkComment);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbTalkCommentByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbTalkCommentById(Long id);
}
