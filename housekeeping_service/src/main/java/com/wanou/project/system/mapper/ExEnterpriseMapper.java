package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.ExEnterprise;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-07
 */
public interface ExEnterpriseMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ExEnterprise selectExEnterpriseById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param exEnterprise 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ExEnterprise> selectExEnterpriseList(ExEnterprise exEnterprise);

    /**
     * 新增【请填写功能名称】
     *
     * @param exEnterprise 【请填写功能名称】
     * @return 结果
     */
    public int insertExEnterprise(ExEnterprise exEnterprise);

    /**
     * 修改【请填写功能名称】
     *
     * @param exEnterprise 【请填写功能名称】
     * @return 结果
     */
    public int updateExEnterprise(ExEnterprise exEnterprise);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteExEnterpriseById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExEnterpriseByIds(Long[] ids);
}
