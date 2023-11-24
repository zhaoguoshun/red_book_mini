package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbAddressMapper;
import com.wanou.project.system.domain.TbAddress;
import com.wanou.project.system.service.ITbAddressService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-03
 */
@Service
public class TbAddressServiceImpl implements ITbAddressService
{
    @Autowired
    private TbAddressMapper tbAddressMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbAddress selectTbAddressById(Long id)
    {
        return tbAddressMapper.selectTbAddressById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbAddress 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbAddress> selectTbAddressList(TbAddress tbAddress)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbAddress.setUserId(SecurityUtils.getUserId());
        }
        return tbAddressMapper.selectTbAddressList(tbAddress);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbAddress 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbAddress(TbAddress tbAddress)
    {
        tbAddress.setCreateTime(DateUtils.getNowDate());
        tbAddress.setUserId(SecurityUtils.getUserId());
        return tbAddressMapper.insertTbAddress(tbAddress);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbAddress 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbAddress(TbAddress tbAddress)
    {
        return tbAddressMapper.updateTbAddress(tbAddress);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbAddressByIds(Long[] ids)
    {
        return tbAddressMapper.deleteTbAddressByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbAddressById(Long id)
    {
        return tbAddressMapper.deleteTbAddressById(id);
    }
}
