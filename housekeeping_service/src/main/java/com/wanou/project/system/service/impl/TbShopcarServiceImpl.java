package com.wanou.project.system.service.impl;

import java.util.List;

import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbShopcarMapper;
import com.wanou.project.system.domain.TbShopcar;
import com.wanou.project.system.service.ITbShopcarService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-03
 */
@Service
public class TbShopcarServiceImpl implements ITbShopcarService
{
    @Autowired
    private TbShopcarMapper tbShopcarMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param shopId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbShopcar selectTbShopcarByShopId(Long shopId)
    {
        return tbShopcarMapper.selectTbShopcarByShopId(shopId);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbShopcar 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbShopcar> selectTbShopcarList(TbShopcar tbShopcar)
    {
        Long userId = SecurityUtils.getUserId();

        if (!SecurityUtils.isAdmin(userId)){
            tbShopcar.setUserId(SecurityUtils.getUserId());
        }
        return tbShopcarMapper.selectTbShopcarList(tbShopcar);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbShopcar 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbShopcar(TbShopcar tbShopcar)
    {
        tbShopcar.setUserId(SecurityUtils.getUserId());
        return tbShopcarMapper.insertTbShopcar(tbShopcar);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbShopcar 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbShopcar(TbShopcar tbShopcar)
    {
        return tbShopcarMapper.updateTbShopcar(tbShopcar);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param shopIds 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbShopcarByShopIds(Long[] shopIds)
    {
        return tbShopcarMapper.deleteTbShopcarByShopIds(shopIds);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param shopId 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbShopcarByShopId(Long shopId)
    {
        return tbShopcarMapper.deleteTbShopcarByShopId(shopId);
    }
}
