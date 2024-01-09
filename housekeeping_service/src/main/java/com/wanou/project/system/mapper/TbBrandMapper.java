package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbBrand;

/**
 * 合作品牌Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-02
 */
public interface TbBrandMapper
{
    /**
     * 查询合作品牌
     *
     * @param id 合作品牌主键
     * @return 合作品牌
     */
    public TbBrand selectTbBrandById(Long id);

    /**
     * 查询合作品牌列表
     *
     * @param tbBrand 合作品牌
     * @return 合作品牌集合
     */
    public List<TbBrand> selectTbBrandList(TbBrand tbBrand);

    /**
     * 新增合作品牌
     *
     * @param tbBrand 合作品牌
     * @return 结果
     */
    public int insertTbBrand(TbBrand tbBrand);

    /**
     * 修改合作品牌
     *
     * @param tbBrand 合作品牌
     * @return 结果
     */
    public int updateTbBrand(TbBrand tbBrand);

    /**
     * 删除合作品牌
     *
     * @param id 合作品牌主键
     * @return 结果
     */
    public int deleteTbBrandById(Long id);

    /**
     * 批量删除合作品牌
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbBrandByIds(Long[] ids);
}
