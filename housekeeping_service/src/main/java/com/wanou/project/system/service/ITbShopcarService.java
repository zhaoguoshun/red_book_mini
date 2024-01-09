package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbShopcar;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-04-03
 */
public interface ITbShopcarService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param shopId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbShopcar selectTbShopcarByShopId(Long shopId);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbShopcar 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbShopcar> selectTbShopcarList(TbShopcar tbShopcar);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbShopcar 【请填写功能名称】
     * @return 结果
     */
    public int insertTbShopcar(TbShopcar tbShopcar);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbShopcar 【请填写功能名称】
     * @return 结果
     */
    public int updateTbShopcar(TbShopcar tbShopcar);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param shopIds 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbShopcarByShopIds(Long[] shopIds);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param shopId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbShopcarByShopId(Long shopId);
}
