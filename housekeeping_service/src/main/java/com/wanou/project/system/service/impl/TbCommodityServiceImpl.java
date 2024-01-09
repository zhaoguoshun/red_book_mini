package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCommodityMapper;
import com.wanou.project.system.domain.TbCommodity;
import com.wanou.project.system.service.ITbCommodityService;

/**
 * 商品Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-03
 */
@Service
public class TbCommodityServiceImpl implements ITbCommodityService
{
    @Autowired
    private TbCommodityMapper tbCommodityMapper;

    /**
     * 查询商品
     *
     * @param id 商品主键
     * @return 商品
     */
    @Override
    public TbCommodity selectTbCommodityById(Long id)
    {
        return tbCommodityMapper.selectTbCommodityById(id);
    }

    /**
     * 查询商品列表
     *
     * @param tbCommodity 商品
     * @return 商品
     */
    @Override
    public List<TbCommodity> selectTbCommodityList(TbCommodity tbCommodity)
    {
        return tbCommodityMapper.selectTbCommodityList(tbCommodity);
    }

    /**
     * 新增商品
     *
     * @param tbCommodity 商品
     * @return 结果
     */
    @Override
    public int insertTbCommodity(TbCommodity tbCommodity)
    {
        tbCommodity.setCreateTime(DateUtils.getNowDate());
        return tbCommodityMapper.insertTbCommodity(tbCommodity);
    }

    /**
     * 修改商品
     *
     * @param tbCommodity 商品
     * @return 结果
     */
    @Override
    public int updateTbCommodity(TbCommodity tbCommodity)
    {
        return tbCommodityMapper.updateTbCommodity(tbCommodity);
    }

    /**
     * 批量删除商品
     *
     * @param ids 需要删除的商品主键
     * @return 结果
     */
    @Override
    public int deleteTbCommodityByIds(Long[] ids)
    {
        return tbCommodityMapper.deleteTbCommodityByIds(ids);
    }

    /**
     * 删除商品信息
     *
     * @param id 商品主键
     * @return 结果
     */
    @Override
    public int deleteTbCommodityById(Long id)
    {
        return tbCommodityMapper.deleteTbCommodityById(id);
    }
}
