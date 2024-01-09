package com.wanou.project.system.service.impl;

import java.util.List;

import cn.hutool.core.collection.CollUtil;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.vo.ThumbsVo;
import org.apache.poi.hpsf.Thumbnail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TThumbsMapper;
import com.wanou.project.system.domain.TThumbs;
import com.wanou.project.system.service.ITThumbsService;

/**
 * 点赞Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-29
 */
@Service
public class TThumbsServiceImpl implements ITThumbsService
{
    @Autowired
    private TThumbsMapper tThumbsMapper;

    /**
     * 查询点赞
     *
     * @param id 点赞主键
     * @return 点赞
     */
    @Override
    public TThumbs selectTThumbsById(Long id)
    {
        return tThumbsMapper.selectTThumbsById(id);
    }

    /**
     * 查询点赞列表
     *
     * @param tThumbs 点赞
     * @return 点赞
     */
    @Override
    public List<TThumbs> selectTThumbsList(TThumbs tThumbs)
    {
        return tThumbsMapper.selectTThumbsList(tThumbs);
    }

    @Override
    public List<ThumbsVo> thumbsMyList() {
        Long userId = SecurityUtils.getUserId();

        return tThumbsMapper.selectTThumbsMyList(userId);
    }

    /**
     * 新增点赞
     *
     * @param tThumbs 点赞
     * @return 结果
     */
    @Override
    public int insertTThumbs(TThumbs tThumbs)
    {
        tThumbs.setCreateTime(DateUtils.getNowDate());
        return tThumbsMapper.insertTThumbs(tThumbs);
    }

    /**
     * 修改点赞
     *
     * @param tThumbs 点赞
     * @return 结果
     */
    @Override
    public int updateTThumbs(TThumbs tThumbs)
    {
        return tThumbsMapper.updateTThumbs(tThumbs);
    }

    /**
     * 批量删除点赞
     *
     * @param ids 需要删除的点赞主键
     * @return 结果
     */
    @Override
    public int deleteTThumbsByIds(Long[] ids)
    {
        return tThumbsMapper.deleteTThumbsByIds(ids);
    }

    /**
     * 删除点赞信息
     *
     * @param id 点赞主键
     * @return 结果
     */
    @Override
    public int deleteTThumbsById(Long id)
    {
        return tThumbsMapper.deleteTThumbsById(id);
    }

    @Override
    public Boolean isThumbs(Long detailId, Long userId) {
        TThumbs tThumbs = new TThumbs();
        tThumbs.setDetailId(detailId);
        tThumbs.setUserId(userId);
        List<TThumbs> tThumbs1 = this.selectTThumbsList(tThumbs);

        if (CollUtil.isNotEmpty(tThumbs1)){
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
