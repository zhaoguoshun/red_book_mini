package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.HkOrder;

/**
 * 订单管理Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-23
 */
public interface HkOrderMapper
{
    /**
     * 查询订单管理
     *
     * @param id 订单管理主键
     * @return 订单管理
     */
    public HkOrder selectHkOrderById(Long id);

    /**
     * 查询订单管理列表
     *
     * @param hkOrder 订单管理
     * @return 订单管理集合
     */
    public List<HkOrder> selectHkOrderList(HkOrder hkOrder);

    /**
     * 新增订单管理
     *
     * @param hkOrder 订单管理
     * @return 结果
     */
    public int insertHkOrder(HkOrder hkOrder);

    /**
     * 修改订单管理
     *
     * @param hkOrder 订单管理
     * @return 结果
     */
    public int updateHkOrder(HkOrder hkOrder);

    /**
     * 删除订单管理
     *
     * @param id 订单管理主键
     * @return 结果
     */
    public int deleteHkOrderById(Long id);

    /**
     * 批量删除订单管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHkOrderByIds(Long[] ids);
}
