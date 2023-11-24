package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbCommodity;

/**
 * 商品Service接口
 *
 * @author ruoyi
 * @date 2023-04-03
 */
public interface ITbCommodityService
{
    /**
     * 查询商品
     *
     * @param id 商品主键
     * @return 商品
     */
    public TbCommodity selectTbCommodityById(Long id);

    /**
     * 查询商品列表
     *
     * @param tbCommodity 商品
     * @return 商品集合
     */
    public List<TbCommodity> selectTbCommodityList(TbCommodity tbCommodity);

    /**
     * 新增商品
     *
     * @param tbCommodity 商品
     * @return 结果
     */
    public int insertTbCommodity(TbCommodity tbCommodity);

    /**
     * 修改商品
     *
     * @param tbCommodity 商品
     * @return 结果
     */
    public int updateTbCommodity(TbCommodity tbCommodity);

    /**
     * 批量删除商品
     *
     * @param ids 需要删除的商品主键集合
     * @return 结果
     */
    public int deleteTbCommodityByIds(Long[] ids);

    /**
     * 删除商品信息
     *
     * @param id 商品主键
     * @return 结果
     */
    public int deleteTbCommodityById(Long id);
}
