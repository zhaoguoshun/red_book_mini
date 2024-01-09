package com.wanou.project.system.service.impl;

import java.util.List;

import cn.hutool.core.collection.CollUtil;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.vo.TFocusDetailVO;
import com.wanou.project.system.domain.vo.ThumbsVo;
import com.wanou.project.system.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TFocusMapper;
import com.wanou.project.system.domain.TFocus;
import com.wanou.project.system.service.ITFocusService;

/**
 * 关注Service业务层处理
 *
 * @author ruoyi
 * @date 2023-11-02
 */
@Service
public class TFocusServiceImpl implements ITFocusService
{
    @Autowired
    private TFocusMapper tFocusMapper;

    private SysUserMapper userMapper;

    /**
     * 查询关注
     *
     * @param id 关注主键
     * @return 关注
     */
    @Override
    public TFocus selectTFocusById(Long id)
    {

        return tFocusMapper.selectTFocusById(id);
    }

    /**
     * 查询关注列表
     *
     * @param tFocus 关注
     * @return 关注
     */
    @Override
    public List<TFocus> selectTFocusList(TFocus tFocus)
    {
        return tFocusMapper.selectTFocusList(tFocus);
    }

    @Override
    public List<TFocusDetailVO> getFocus(Long userId) {
        return tFocusMapper.getFocus(userId);
    }

    @Override
    public List<ThumbsVo> getFocusMy() {
        Long userId = SecurityUtils.getUserId();
        List<ThumbsVo> focusMy = tFocusMapper.getFocusMy(userId);
        for (ThumbsVo thumbsVo : focusMy) {
            //查询是否关注他
            TFocus tFocus = new TFocus();
            tFocus.setQuiltUserId(tFocus.getUserId());
            tFocus.setUserId(userId);
            List<TFocus> tFoci = this.selectTFocusList(tFocus);
            thumbsVo.setIsfollow(Boolean.FALSE);
            if (CollUtil.isNotEmpty(tFoci)) {
                thumbsVo.setIsfollow(Boolean.TRUE);
            }
        }
        return focusMy;
    }

    @Override
    public Boolean isFollow(Long userId, Long fUserId) {
        TFocus tFocus = new TFocus();
        tFocus.setUserId(userId);
        tFocus.setQuiltUserId(fUserId);
        List<TFocus> tFoci = this.selectTFocusList(tFocus);
        if (CollUtil.isNotEmpty(tFoci)){
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /**
     * 新增关注
     *
     * @param tFocus 关注
     * @return 结果
     */
    @Override
    public int insertTFocus(TFocus tFocus)
    {
        tFocus.setCreateTime(DateUtils.getNowDate());
        List<TFocus> tFoci = this.selectTFocusList(tFocus);
        if (CollUtil.isNotEmpty(tFoci)) {
            for (TFocus focus : tFoci) {
                this.deleteTFocusById(focus.getId());
            }
            return 1;
        }
        return tFocusMapper.insertTFocus(tFocus);
    }

    /**
     * 修改关注
     *
     * @param tFocus 关注
     * @return 结果
     */
    @Override
    public int updateTFocus(TFocus tFocus)
    {
        return tFocusMapper.updateTFocus(tFocus);
    }

    /**
     * 批量删除关注
     *
     * @param ids 需要删除的关注主键
     * @return 结果
     */
    @Override
    public int deleteTFocusByIds(Long[] ids)
    {
        return tFocusMapper.deleteTFocusByIds(ids);
    }

    /**
     * 删除关注信息
     *
     * @param id 关注主键
     * @return 结果
     */
    @Override
    public int deleteTFocusById(Long id)
    {
        return tFocusMapper.deleteTFocusById(id);
    }

    @Override
    public int focus(Long userId) {
        return tFocusMapper.focusCount(userId);
    }

    @Override
    public int focusQuiltUserId(Long userId) {
        return tFocusMapper.focusRivitCount(userId);
    }


}
