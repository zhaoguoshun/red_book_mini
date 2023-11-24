package com.wanou.project.system.service.impl;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import cn.hutool.core.collection.CollectionUtil;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbTalkThumbsMapper;
import com.wanou.project.system.domain.TbTalkThumbs;
import com.wanou.project.system.service.ITbTalkThumbsService;

/**
 * 说说点赞Service业务层处理
 *
 * @author ruoyi
 * @date 2023-03-30
 */
@Service
public class TbTalkThumbsServiceImpl implements ITbTalkThumbsService
{
    @Autowired
    private TbTalkThumbsMapper tbTalkThumbsMapper;

    /**
     * 查询说说点赞
     *
     * @param id 说说点赞主键
     * @return 说说点赞
     */
    @Override
    public TbTalkThumbs selectTbTalkThumbsById(Long id)
    {
        return tbTalkThumbsMapper.selectTbTalkThumbsById(id);
    }

    /**
     * 查询说说点赞列表
     *
     * @param tbTalkThumbs 说说点赞
     * @return 说说点赞
     */
    @Override
    public List<TbTalkThumbs> selectTbTalkThumbsList(TbTalkThumbs tbTalkThumbs)
    {
        return tbTalkThumbsMapper.selectTbTalkThumbsList(tbTalkThumbs);
    }

    /**
     * 新增说说点赞
     *
     * @param tbTalkThumbs 说说点赞
     * @return 结果
     */
    @Override
    public int insertTbTalkThumbs(TbTalkThumbs tbTalkThumbs)
    {
        tbTalkThumbs.setUserId(SecurityUtils.getUserId());

        List<TbTalkThumbs> tbTalkThumbs1 = tbTalkThumbsMapper.selectTbTalkThumbsList(tbTalkThumbs);
        if (CollectionUtil.isNotEmpty(tbTalkThumbs1)){
            List<Long> ids = tbTalkThumbs1.stream().map(TbTalkThumbs::getId).collect(Collectors.toList());
            return tbTalkThumbsMapper.deleteTbTalkThumbsByIds(ids);
        }
        return tbTalkThumbsMapper.insertTbTalkThumbs(tbTalkThumbs);
    }

    /**
     * 修改说说点赞
     *
     * @param tbTalkThumbs 说说点赞
     * @return 结果
     */
    @Override
    public int updateTbTalkThumbs(TbTalkThumbs tbTalkThumbs)
    {
        return tbTalkThumbsMapper.updateTbTalkThumbs(tbTalkThumbs);
    }

    /**
     * 批量删除说说点赞
     *
     * @param ids 需要删除的说说点赞主键
     * @return 结果
     */
    @Override
    public int deleteTbTalkThumbsByIds(Long[] ids)
    {
        return tbTalkThumbsMapper.deleteTbTalkThumbsByIds(Arrays.asList(ids));
    }

    /**
     * 删除说说点赞信息
     *
     * @param id 说说点赞主键
     * @return 结果
     */
    @Override
    public int deleteTbTalkThumbsById(Long id)
    {
        return tbTalkThumbsMapper.deleteTbTalkThumbsById(id);
    }
}
