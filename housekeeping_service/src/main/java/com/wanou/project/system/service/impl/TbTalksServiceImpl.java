package com.wanou.project.system.service.impl;

import java.util.List;

import cn.hutool.core.collection.CollectionUtil;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.TbTalkComment;
import com.wanou.project.system.domain.TbTalkThumbs;
import com.wanou.project.system.mapper.TbTalkCommentMapper;
import com.wanou.project.system.mapper.TbTalkThumbsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbTalksMapper;
import com.wanou.project.system.domain.TbTalks;
import com.wanou.project.system.service.ITbTalksService;

/**
 * 论坛Service业务层处理
 *
 * @author ruoyi
 * @date 2023-03-30
 */
@Service
public class TbTalksServiceImpl implements ITbTalksService
{
    @Autowired
    private TbTalksMapper tbTalksMapper;

    @Autowired
    private TbTalkThumbsMapper tbTalkThumbsMapper;

    @Autowired
    private TbTalkCommentMapper tbTalkCommentMapper;

    /**
     * 查询论坛
     *
     * @param id 论坛主键
     * @return 论坛
     */
    @Override
    public TbTalks selectTbTalksById(Long id)
    {
        TbTalks tbTalks = tbTalksMapper.selectTbTalksById(id);

        if (tbTalks != null){
            TbTalkThumbs tbTalkThumbs = new TbTalkThumbs();
            tbTalkThumbs.setTalkId(tbTalks.getId());
            tbTalkThumbs.setUserId(SecurityUtils.getUserId());
            List<TbTalkThumbs> tbTalkThumbs1 = tbTalkThumbsMapper.selectTbTalkThumbsList(tbTalkThumbs);
            tbTalks.setIsLike(0);
            if (CollectionUtil.isNotEmpty(tbTalkThumbs1)){
                tbTalks.setIsLike(1);
            }
            TbTalkThumbs tbTalkThumbs2 = new TbTalkThumbs();
            tbTalkThumbs2.setTalkId(tbTalks.getId());
            List<TbTalkThumbs> tbTalkThumbsSize = tbTalkThumbsMapper.selectTbTalkThumbsList(tbTalkThumbs2);
            tbTalks.setLikeCount(tbTalkThumbsSize.size());

            //评论数量
            TbTalkComment tbTalkComment = new TbTalkComment();
            tbTalkComment.setTalkId(tbTalks.getId());
            List<TbTalkComment> tbTalkComments = tbTalkCommentMapper.selectTbTalkCommentList(tbTalkComment);
            tbTalks.setCommentCount(tbTalkComments.size());

        }
        return tbTalks;
    }

    /**
     * 查询论坛列表
     *
     * @param tbTalks 论坛
     * @return 论坛
     */
    @Override
    public List<TbTalks> selectTbTalksList(TbTalks tbTalks)
    {
        List<TbTalks> tbTalksList = tbTalksMapper.selectTbTalksList(tbTalks);
        tbTalksList.forEach(item ->{
            TbTalkThumbs tbTalkThumbs = new TbTalkThumbs();
            tbTalkThumbs.setTalkId(item.getId());
            tbTalkThumbs.setUserId(SecurityUtils.getUserId());
            List<TbTalkThumbs> tbTalkThumbs1 = tbTalkThumbsMapper.selectTbTalkThumbsList(tbTalkThumbs);
            item.setIsLike(0);
            if (CollectionUtil.isNotEmpty(tbTalkThumbs1)){
                item.setIsLike(1);
            }

            TbTalkThumbs tbTalkThumbs2 = new TbTalkThumbs();
            tbTalkThumbs2.setTalkId(item.getId());
            List<TbTalkThumbs> tbTalkThumbsSize = tbTalkThumbsMapper.selectTbTalkThumbsList(tbTalkThumbs2);
            item.setLikeCount(tbTalkThumbsSize.size());

            //评论数量
            TbTalkComment tbTalkComment = new TbTalkComment();
            tbTalkComment.setTalkId(item.getId());
            List<TbTalkComment> tbTalkComments = tbTalkCommentMapper.selectTbTalkCommentList(tbTalkComment);
            item.setCommentCount(tbTalkComments.size());
        });
        return tbTalksList;
    }

    /**
     * 新增论坛
     *
     * @param tbTalks 论坛
     * @return 结果
     */
    @Override
    public int insertTbTalks(TbTalks tbTalks)
    {
        tbTalks.setCreateTime(DateUtils.getNowDate());
        tbTalks.setUserId(SecurityUtils.getUserId());
        return tbTalksMapper.insertTbTalks(tbTalks);
    }

    /**
     * 修改论坛
     *
     * @param tbTalks 论坛
     * @return 结果
     */
    @Override
    public int updateTbTalks(TbTalks tbTalks)
    {
        tbTalks.setUpdateTime(DateUtils.getNowDate());
        return tbTalksMapper.updateTbTalks(tbTalks);
    }

    /**
     * 批量删除论坛
     *
     * @param ids 需要删除的论坛主键
     * @return 结果
     */
    @Override
    public int deleteTbTalksByIds(Long[] ids)
    {
        return tbTalksMapper.deleteTbTalksByIds(ids);
    }

    /**
     * 删除论坛信息
     *
     * @param id 论坛主键
     * @return 结果
     */
    @Override
    public int deleteTbTalksById(Long id)
    {
        return tbTalksMapper.deleteTbTalksById(id);
    }
}
