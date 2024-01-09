package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbCard;

/**
 * 打卡Service接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface ITbCardService
{
    /**
     * 查询打卡
     *
     * @param id 打卡主键
     * @return 打卡
     */
    public TbCard selectTbCardById(Long id);

    /**
     * 查询打卡列表
     *
     * @param tbCard 打卡
     * @return 打卡集合
     */
    public List<TbCard> selectTbCardList(TbCard tbCard);

    /**
     * 新增打卡
     *
     * @param tbCard 打卡
     * @return 结果
     */
    public int insertTbCard(TbCard tbCard);

    /**
     * 修改打卡
     *
     * @param tbCard 打卡
     * @return 结果
     */
    public int updateTbCard(TbCard tbCard);

    /**
     * 批量删除打卡
     *
     * @param ids 需要删除的打卡主键集合
     * @return 结果
     */
    public int deleteTbCardByIds(Long[] ids);

    /**
     * 删除打卡信息
     *
     * @param id 打卡主键
     * @return 结果
     */
    public int deleteTbCardById(Long id);
}
