package com.wanou.project.system.service.impl;

import java.util.List;
import java.util.Objects;

import com.wanou.common.exception.BaseException;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCommentMapper;
import com.wanou.project.system.domain.TbComment;
import com.wanou.project.system.service.ITbCommentService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-05
 */
@Service
public class TbCommentServiceImpl implements ITbCommentService
{
    @Autowired
    private TbCommentMapper tbCommentMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbComment selectTbCommentById(Long id)
    {
        return tbCommentMapper.selectTbCommentById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbComment 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbComment> selectTbCommentList(TbComment tbComment)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbComment.setUserId(SecurityUtils.getUserId());
        }
        return tbCommentMapper.selectTbCommentList(tbComment);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbComment(TbComment tbComment)
    {
        tbComment.setCreateTime(DateUtils.getNowDate());
        tbComment.setUserId(SecurityUtils.getUserId());
        return tbCommentMapper.insertTbComment(tbComment);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbComment(TbComment tbComment)
    {
        return tbCommentMapper.updateTbComment(tbComment);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbCommentByIds(Long[] ids)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            for (Long id : ids) {
                TbComment tbComment = this.selectTbCommentById(id);
                if (!Objects.equals(SecurityUtils.getUserId(), tbComment.getUserId())){
                 throw new BaseException("只能删除自己的评论");
                }
            }
        }
        return tbCommentMapper.deleteTbCommentByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbCommentById(Long id)
    {
        return tbCommentMapper.deleteTbCommentById(id);
    }
}
