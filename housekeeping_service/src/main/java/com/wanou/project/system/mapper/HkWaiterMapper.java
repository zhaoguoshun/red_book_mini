package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.HkWaiter;

/**
 * 服务员管理Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-09
 */
public interface HkWaiterMapper
{
    /**
     * 查询服务员管理
     *
     * @param id 服务员管理主键
     * @return 服务员管理
     */
    public HkWaiter selectHkWaiterById(Long id);

    /**
     * 查询服务员管理列表
     *
     * @param hkWaiter 服务员管理
     * @return 服务员管理集合
     */
    public List<HkWaiter> selectHkWaiterList(HkWaiter hkWaiter);

    /**
     * 新增服务员管理
     *
     * @param hkWaiter 服务员管理
     * @return 结果
     */
    public int insertHkWaiter(HkWaiter hkWaiter);

    /**
     * 修改服务员管理
     *
     * @param hkWaiter 服务员管理
     * @return 结果
     */
    public int updateHkWaiter(HkWaiter hkWaiter);

    /**
     * 删除服务员管理
     *
     * @param id 服务员管理主键
     * @return 结果
     */
    public int deleteHkWaiterById(Long id);

    /**
     * 批量删除服务员管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHkWaiterByIds(Long[] ids);
}
