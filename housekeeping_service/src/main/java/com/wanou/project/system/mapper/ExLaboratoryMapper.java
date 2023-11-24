package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.ExLaboratory;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author HuangXiLiang
 * @date 2021-12-07
 */
public interface ExLaboratoryMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ExLaboratory selectExLaboratoryById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param exLaboratory 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ExLaboratory> selectExLaboratoryList(ExLaboratory exLaboratory);

    /**
     * 新增【请填写功能名称】
     *
     * @param exLaboratory 【请填写功能名称】
     * @return 结果
     */
    public int insertExLaboratory(ExLaboratory exLaboratory);

    /**
     * 修改【请填写功能名称】
     *
     * @param exLaboratory 【请填写功能名称】
     * @return 结果
     */
    public int updateExLaboratory(ExLaboratory exLaboratory);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteExLaboratoryById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExLaboratoryByIds(Long[] ids);
}
