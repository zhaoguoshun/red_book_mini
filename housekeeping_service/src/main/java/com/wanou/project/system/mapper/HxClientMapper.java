package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.HxClient;

/**
 * 客户管理Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-09
 */
public interface HxClientMapper
{
    /**
     * 查询客户管理
     *
     * @param id 客户管理主键
     * @return 客户管理
     */
    public HxClient selectHxClientById(Long id);

    /**
     * 查询客户管理列表
     *
     * @param hxClient 客户管理
     * @return 客户管理集合
     */
    public List<HxClient> selectHxClientList(HxClient hxClient);

    /**
     * 新增客户管理
     *
     * @param hxClient 客户管理
     * @return 结果
     */
    public int insertHxClient(HxClient hxClient);

    /**
     * 修改客户管理
     *
     * @param hxClient 客户管理
     * @return 结果
     */
    public int updateHxClient(HxClient hxClient);

    /**
     * 删除客户管理
     *
     * @param id 客户管理主键
     * @return 结果
     */
    public int deleteHxClientById(Long id);

    /**
     * 批量删除客户管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHxClientByIds(Long[] ids);
}
