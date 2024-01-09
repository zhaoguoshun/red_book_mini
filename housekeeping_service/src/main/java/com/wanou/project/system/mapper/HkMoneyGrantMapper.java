package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.HkMoneyGrant;

/**
 * 工资发放Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-24
 */
public interface HkMoneyGrantMapper
{
    /**
     * 查询工资发放
     *
     * @param id 工资发放主键
     * @return 工资发放
     */
    public HkMoneyGrant selectHkMoneyGrantById(Long id);

    /**
     * 查询工资发放列表
     *
     * @param hkMoneyGrant 工资发放
     * @return 工资发放集合
     */
    public List<HkMoneyGrant> selectHkMoneyGrantList(HkMoneyGrant hkMoneyGrant);

    /**
     * 新增工资发放
     *
     * @param hkMoneyGrant 工资发放
     * @return 结果
     */
    public int insertHkMoneyGrant(HkMoneyGrant hkMoneyGrant);

    /**
     * 修改工资发放
     *
     * @param hkMoneyGrant 工资发放
     * @return 结果
     */
    public int updateHkMoneyGrant(HkMoneyGrant hkMoneyGrant);

    /**
     * 删除工资发放
     *
     * @param id 工资发放主键
     * @return 结果
     */
    public int deleteHkMoneyGrantById(Long id);

    /**
     * 批量删除工资发放
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHkMoneyGrantByIds(Long[] ids);
}
