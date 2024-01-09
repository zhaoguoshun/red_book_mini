package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.HkClientOperation;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-22
 */
public interface HkClientOperationMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public HkClientOperation selectHkClientOperationById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param hkClientOperation 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<HkClientOperation> selectHkClientOperationList(HkClientOperation hkClientOperation);

    /**
     * 新增【请填写功能名称】
     *
     * @param hkClientOperation 【请填写功能名称】
     * @return 结果
     */
    public int insertHkClientOperation(HkClientOperation hkClientOperation);

    /**
     * 修改【请填写功能名称】
     *
     * @param hkClientOperation 【请填写功能名称】
     * @return 结果
     */
    public int updateHkClientOperation(HkClientOperation hkClientOperation);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteHkClientOperationById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHkClientOperationByIds(Long[] ids);
}
