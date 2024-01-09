package com.wanou.project.system.service.impl;

import java.util.List;

import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.TbTagView;
import com.wanou.project.system.mapper.TbTagViewMapper;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbTagMapper;
import com.wanou.project.system.domain.TbTag;
import com.wanou.project.system.service.ITbTagService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
@Service
public class TbTagServiceImpl implements ITbTagService
{
    @Autowired
    private TbTagMapper tbTagMapper;

    @Autowired
    private TbTagViewMapper tbTagViewMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbTag selectTbTagById(Long id)
    {
        TbTag tbTag = tbTagMapper.selectTbTagById(id);

        TbTagView tbTagView = new TbTagView();
        tbTagView.setMovieName(tbTag.getName());
        tbTagView.setTagId(id);
        tbTagView.setUserId(SecurityUtils.getUserId());
        tbTagViewMapper.insertTbTagView(tbTagView);
        return tbTag;
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbTag 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbTag> selectTbTagList(TbTag tbTag)
    {
        return tbTagMapper.selectTbTagList(tbTag);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbTag 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbTag(TbTag tbTag)
    {
        return tbTagMapper.insertTbTag(tbTag);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbTag 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbTag(TbTag tbTag)
    {
        return tbTagMapper.updateTbTag(tbTag);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbTagByIds(Long[] ids)
    {
        return tbTagMapper.deleteTbTagByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbTagById(Long id)
    {
        return tbTagMapper.deleteTbTagById(id);
    }
}
