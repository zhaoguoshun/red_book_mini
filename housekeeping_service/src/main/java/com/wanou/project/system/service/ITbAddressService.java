package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbAddress;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-04-03
 */
public interface ITbAddressService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbAddress selectTbAddressById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbAddress 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbAddress> selectTbAddressList(TbAddress tbAddress);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbAddress 【请填写功能名称】
     * @return 结果
     */
    public int insertTbAddress(TbAddress tbAddress);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbAddress 【请填写功能名称】
     * @return 结果
     */
    public int updateTbAddress(TbAddress tbAddress);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbAddressByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbAddressById(Long id);
}
