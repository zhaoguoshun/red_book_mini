package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.HkConsume;

/**
 * 日常消耗Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-30
 */
public interface HkConsumeMapper
{
    /**
     * 查询日常消耗
     *
     * @param id 日常消耗主键
     * @return 日常消耗
     */
    public HkConsume selectHkConsumeById(Long id);

    /**
     * 查询日常消耗列表
     *
     * @param hkConsume 日常消耗
     * @return 日常消耗集合
     */
    public List<HkConsume> selectHkConsumeList(HkConsume hkConsume);

    /**
     * 新增日常消耗
     *
     * @param hkConsume 日常消耗
     * @return 结果
     */
    public int insertHkConsume(HkConsume hkConsume);

    /**
     * 修改日常消耗
     *
     * @param hkConsume 日常消耗
     * @return 结果
     */
    public int updateHkConsume(HkConsume hkConsume);

    /**
     * 删除日常消耗
     *
     * @param id 日常消耗主键
     * @return 结果
     */
    public int deleteHkConsumeById(Long id);

    /**
     * 批量删除日常消耗
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHkConsumeByIds(Long[] ids);
}
