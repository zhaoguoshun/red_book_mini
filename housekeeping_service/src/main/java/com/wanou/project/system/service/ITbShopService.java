package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbShop;

/**
 * 店面信息Service接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface ITbShopService
{
    /**
     * 查询店面信息
     *
     * @param id 店面信息主键
     * @return 店面信息
     */
    public TbShop selectTbShopById(Long id);

    /**
     * 查询店面信息列表
     *
     * @param tbShop 店面信息
     * @return 店面信息集合
     */
    public List<TbShop> selectTbShopList(TbShop tbShop);

    /**
     * 新增店面信息
     *
     * @param tbShop 店面信息
     * @return 结果
     */
    public int insertTbShop(TbShop tbShop);

    /**
     * 修改店面信息
     *
     * @param tbShop 店面信息
     * @return 结果
     */
    public int updateTbShop(TbShop tbShop);

    /**
     * 批量删除店面信息
     *
     * @param ids 需要删除的店面信息主键集合
     * @return 结果
     */
    public int deleteTbShopByIds(Long[] ids);

    /**
     * 删除店面信息信息
     *
     * @param id 店面信息主键
     * @return 结果
     */
    public int deleteTbShopById(Long id);
}
