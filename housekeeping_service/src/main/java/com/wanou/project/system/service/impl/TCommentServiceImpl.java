package com.wanou.project.system.service.impl;

import java.util.List;

import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.vo.ThumbsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TCommentMapper;
import com.wanou.project.system.domain.TComment;
import com.wanou.project.system.service.ITCommentService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-28
 */
@Service
public class TCommentServiceImpl implements ITCommentService
{
    @Autowired
    private TCommentMapper tCommentMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TComment selectTCommentById(Long id)
    {
        return tCommentMapper.selectTCommentById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tComment 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TComment> selectTCommentList(TComment tComment)
    {
        return tCommentMapper.selectTCommentList(tComment);
    }

    @Override
    public List<ThumbsVo> getCommentMy() {
        Long userId = SecurityUtils.getUserId();
       return tCommentMapper.getCommentMy(userId);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTComment(TComment tComment)
    {
        return tCommentMapper.insertTComment(tComment);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTComment(TComment tComment)
    {
        return tCommentMapper.updateTComment(tComment);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTCommentByIds(List<Long> ids)
    {
        return tCommentMapper.deleteTCommentByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTCommentById(Long id)
    {
        return tCommentMapper.deleteTCommentById(id);
    }
}
