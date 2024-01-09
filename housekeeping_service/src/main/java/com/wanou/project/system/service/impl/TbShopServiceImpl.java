package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbShopMapper;
import com.wanou.project.system.domain.TbShop;
import com.wanou.project.system.service.ITbShopService;

/**
 * 店面信息Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbShopServiceImpl implements ITbShopService
{
    @Autowired
    private TbShopMapper tbShopMapper;

    /**
     * 查询店面信息
     *
     * @param id 店面信息主键
     * @return 店面信息
     */
    @Override
    public TbShop selectTbShopById(Long id)
    {
        return tbShopMapper.selectTbShopById(id);
    }

    /**
     * 查询店面信息列表
     *
     * @param tbShop 店面信息
     * @return 店面信息
     */
    @Override
    public List<TbShop> selectTbShopList(TbShop tbShop)
    {
        return tbShopMapper.selectTbShopList(tbShop);
    }

    /**
     * 新增店面信息
     *
     * @param tbShop 店面信息
     * @return 结果
     */
    @Override
    public int insertTbShop(TbShop tbShop)
    {
        tbShop.setCreateTime(DateUtils.getNowDate());
        return tbShopMapper.insertTbShop(tbShop);
    }

    /**
     * 修改店面信息
     *
     * @param tbShop 店面信息
     * @return 结果
     */
    @Override
    public int updateTbShop(TbShop tbShop)
    {
        return tbShopMapper.updateTbShop(tbShop);
    }

    /**
     * 批量删除店面信息
     *
     * @param ids 需要删除的店面信息主键
     * @return 结果
     */
    @Override
    public int deleteTbShopByIds(Long[] ids)
    {
        return tbShopMapper.deleteTbShopByIds(ids);
    }

    /**
     * 删除店面信息信息
     *
     * @param id 店面信息主键
     * @return 结果
     */
    @Override
    public int deleteTbShopById(Long id)
    {
        return tbShopMapper.deleteTbShopById(id);
    }
}
