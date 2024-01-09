package com.wanou.project.system.service.impl;

import java.util.List;

import cn.hutool.core.collection.CollUtil;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TDetailCollectMapper;
import com.wanou.project.system.domain.TDetailCollect;
import com.wanou.project.system.service.ITDetailCollectService;

/**
 * 作品收藏Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-29
 */
@Service
public class TDetailCollectServiceImpl implements ITDetailCollectService
{
    @Autowired
    private TDetailCollectMapper tDetailCollectMapper;

    /**
     * 查询作品收藏
     *
     * @param id 作品收藏主键
     * @return 作品收藏
     */
    @Override
    public TDetailCollect selectTDetailCollectById(Long id)
    {
        return tDetailCollectMapper.selectTDetailCollectById(id);
    }

    /**
     * 查询作品收藏列表
     *
     * @param tDetailCollect 作品收藏
     * @return 作品收藏
     */
    @Override
    public List<TDetailCollect> selectTDetailCollectList(TDetailCollect tDetailCollect)
    {
        return tDetailCollectMapper.selectTDetailCollectList(tDetailCollect);
    }

    /**
     * 新增作品收藏
     *
     * @param tDetailCollect 作品收藏
     * @return 结果
     */
    @Override
    public int insertTDetailCollect(TDetailCollect tDetailCollect)
    {
        List<TDetailCollect> tDetailCollects = this.selectTDetailCollectList(tDetailCollect);

        //存在先取消收藏
        if (CollUtil.isNotEmpty(tDetailCollects)) {
            for (TDetailCollect detailCollect : tDetailCollects) {
                this.deleteTDetailCollectById(detailCollect.getId());
            }
            return 0;
        }
        tDetailCollect.setCreateTime(DateUtils.getNowDate());
        tDetailCollect.setUserId(SecurityUtils.getUserId());
        return tDetailCollectMapper.insertTDetailCollect(tDetailCollect);
    }

    /**
     * 修改作品收藏
     *
     * @param tDetailCollect 作品收藏
     * @return 结果
     */
    @Override
    public int updateTDetailCollect(TDetailCollect tDetailCollect)
    {
        return tDetailCollectMapper.updateTDetailCollect(tDetailCollect);
    }

    /**
     * 批量删除作品收藏
     *
     * @param ids 需要删除的作品收藏主键
     * @return 结果
     */
    @Override
    public int deleteTDetailCollectByIds(Long[] ids)
    {
        return tDetailCollectMapper.deleteTDetailCollectByIds(ids);
    }

    /**
     * 删除作品收藏信息
     *
     * @param id 作品收藏主键
     * @return 结果
     */
    @Override
    public int deleteTDetailCollectById(Long id)
    {
        return tDetailCollectMapper.deleteTDetailCollectById(id);
    }

    @Override
    public Boolean isCollect(Long detailId, Long userId) {
        TDetailCollect tDetailCollect = new TDetailCollect();
        tDetailCollect.setDetailId(detailId);
        tDetailCollect.setUserId(userId);
        List<TDetailCollect> tDetailCollects = this.selectTDetailCollectList(tDetailCollect);
        if (CollUtil.isNotEmpty(tDetailCollects)){
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
