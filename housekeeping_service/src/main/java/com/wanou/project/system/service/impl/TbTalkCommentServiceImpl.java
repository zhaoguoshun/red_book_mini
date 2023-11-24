package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbTalkCommentMapper;
import com.wanou.project.system.domain.TbTalkComment;
import com.wanou.project.system.service.ITbTalkCommentService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-03-30
 */
@Service
public class TbTalkCommentServiceImpl implements ITbTalkCommentService
{
    @Autowired
    private TbTalkCommentMapper tbTalkCommentMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbTalkComment selectTbTalkCommentById(Long id)
    {
        return tbTalkCommentMapper.selectTbTalkCommentById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbTalkComment 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbTalkComment> selectTbTalkCommentList(TbTalkComment tbTalkComment)
    {
        return tbTalkCommentMapper.selectTbTalkCommentList(tbTalkComment);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbTalkComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbTalkComment(TbTalkComment tbTalkComment)
    {
        tbTalkComment.setCreateTime(DateUtils.getNowDate());
        tbTalkComment.setUserId(SecurityUtils.getUserId());
        return tbTalkCommentMapper.insertTbTalkComment(tbTalkComment);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbTalkComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbTalkComment(TbTalkComment tbTalkComment)
    {
        return tbTalkCommentMapper.updateTbTalkComment(tbTalkComment);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbTalkCommentByIds(Long[] ids)
    {
        return tbTalkCommentMapper.deleteTbTalkCommentByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbTalkCommentById(Long id)
    {
        return tbTalkCommentMapper.deleteTbTalkCommentById(id);
    }
}
