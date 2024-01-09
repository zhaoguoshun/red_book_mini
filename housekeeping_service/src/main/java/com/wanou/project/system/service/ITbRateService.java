package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbRate;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-05-09
 */
public interface ITbRateService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbRate selectTbRateById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbRate 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbRate> selectTbRateList(TbRate tbRate);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbRate 【请填写功能名称】
     * @return 结果
     */
    public int insertTbRate(TbRate tbRate);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbRate 【请填写功能名称】
     * @return 结果
     */
    public int updateTbRate(TbRate tbRate);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbRateByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbRateById(Long id);
}
