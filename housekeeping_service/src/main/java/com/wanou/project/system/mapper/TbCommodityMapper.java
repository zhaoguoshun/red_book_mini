package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbCommodity;

/**
 * 商品Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-03
 */
public interface TbCommodityMapper
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
     * 删除商品
     *
     * @param id 商品主键
     * @return 结果
     */
    public int deleteTbCommodityById(Long id);

    /**
     * 批量删除商品
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbCommodityByIds(Long[] ids);
}
