package com.wanou.project.system.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCommentThumbsMapper;
import com.wanou.project.system.domain.TbCommentThumbs;
import com.wanou.project.system.service.ITbCommentThumbsService;
import org.springframework.util.CollectionUtils;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-10-15
 */
@Service
public class TbCommentThumbsServiceImpl implements ITbCommentThumbsService
{
    @Autowired
    private TbCommentThumbsMapper tbCommentThumbsMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbCommentThumbs selectTbCommentThumbsById(Long id)
    {
        return tbCommentThumbsMapper.selectTbCommentThumbsById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbCommentThumbs 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbCommentThumbs> selectTbCommentThumbsList(TbCommentThumbs tbCommentThumbs)
    {
        return tbCommentThumbsMapper.selectTbCommentThumbsList(tbCommentThumbs);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbCommentThumbs 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbCommentThumbs(TbCommentThumbs tbCommentThumbs)
    {
        tbCommentThumbs.setUserId(SecurityUtils.getUserId());
        //查询是否存在
        List<TbCommentThumbs> thumbs = this.selectTbCommentThumbsList(tbCommentThumbs);
        if (!CollectionUtils.isEmpty(thumbs)) {
            List<Long> collect = thumbs.stream().map(TbCommentThumbs::getId).collect(Collectors.toList());
            return this.deleteTbCommentThumbsByIds(collect);
        }
        return tbCommentThumbsMapper.insertTbCommentThumbs(tbCommentThumbs);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbCommentThumbs 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbCommentThumbs(TbCommentThumbs tbCommentThumbs)
    {
        return tbCommentThumbsMapper.updateTbCommentThumbs(tbCommentThumbs);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbCommentThumbsByIds(List<Long> ids)
    {
        return tbCommentThumbsMapper.deleteTbCommentThumbsByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbCommentThumbsById(Long id)
    {
        return tbCommentThumbsMapper.deleteTbCommentThumbsById(id);
    }
}
