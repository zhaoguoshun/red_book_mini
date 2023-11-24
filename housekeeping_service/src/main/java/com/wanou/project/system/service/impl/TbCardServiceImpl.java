package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCardMapper;
import com.wanou.project.system.domain.TbCard;
import com.wanou.project.system.service.ITbCardService;

/**
 * 打卡Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbCardServiceImpl implements ITbCardService
{
    @Autowired
    private TbCardMapper tbCardMapper;

    /**
     * 查询打卡
     *
     * @param id 打卡主键
     * @return 打卡
     */
    @Override
    public TbCard selectTbCardById(Long id)
    {
        return tbCardMapper.selectTbCardById(id);
    }

    /**
     * 查询打卡列表
     *
     * @param tbCard 打卡
     * @return 打卡
     */
    @Override
    public List<TbCard> selectTbCardList(TbCard tbCard)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbCard.setUserId(SecurityUtils.getUserId());
        }
        return tbCardMapper.selectTbCardList(tbCard);
    }

    /**
     * 新增打卡
     *
     * @param tbCard 打卡
     * @return 结果
     */
    @Override
    public int insertTbCard(TbCard tbCard)
    {
        tbCard.setCreateTime(DateUtils.getNowDate());
        tbCard.setUserId(SecurityUtils.getUserId());
        return tbCardMapper.insertTbCard(tbCard);
    }

    /**
     * 修改打卡
     *
     * @param tbCard 打卡
     * @return 结果
     */
    @Override
    public int updateTbCard(TbCard tbCard)
    {
        return tbCardMapper.updateTbCard(tbCard);
    }

    /**
     * 批量删除打卡
     *
     * @param ids 需要删除的打卡主键
     * @return 结果
     */
    @Override
    public int deleteTbCardByIds(Long[] ids)
    {
        return tbCardMapper.deleteTbCardByIds(ids);
    }

    /**
     * 删除打卡信息
     *
     * @param id 打卡主键
     * @return 结果
     */
    @Override
    public int deleteTbCardById(Long id)
    {
        return tbCardMapper.deleteTbCardById(id);
    }
}
