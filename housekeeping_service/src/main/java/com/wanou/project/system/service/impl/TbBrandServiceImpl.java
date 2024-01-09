package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbBrandMapper;
import com.wanou.project.system.domain.TbBrand;
import com.wanou.project.system.service.ITbBrandService;

/**
 * 合作品牌Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-02
 */
@Service
public class TbBrandServiceImpl implements ITbBrandService
{
    @Autowired
    private TbBrandMapper tbBrandMapper;

    /**
     * 查询合作品牌
     *
     * @param id 合作品牌主键
     * @return 合作品牌
     */
    @Override
    public TbBrand selectTbBrandById(Long id)
    {
        return tbBrandMapper.selectTbBrandById(id);
    }

    /**
     * 查询合作品牌列表
     *
     * @param tbBrand 合作品牌
     * @return 合作品牌
     */
    @Override
    public List<TbBrand> selectTbBrandList(TbBrand tbBrand)
    {
        return tbBrandMapper.selectTbBrandList(tbBrand);
    }

    /**
     * 新增合作品牌
     *
     * @param tbBrand 合作品牌
     * @return 结果
     */
    @Override
    public int insertTbBrand(TbBrand tbBrand)
    {
        tbBrand.setCreateTime(DateUtils.getNowDate());
        return tbBrandMapper.insertTbBrand(tbBrand);
    }

    /**
     * 修改合作品牌
     *
     * @param tbBrand 合作品牌
     * @return 结果
     */
    @Override
    public int updateTbBrand(TbBrand tbBrand)
    {
        return tbBrandMapper.updateTbBrand(tbBrand);
    }

    /**
     * 批量删除合作品牌
     *
     * @param ids 需要删除的合作品牌主键
     * @return 结果
     */
    @Override
    public int deleteTbBrandByIds(Long[] ids)
    {
        return tbBrandMapper.deleteTbBrandByIds(ids);
    }

    /**
     * 删除合作品牌信息
     *
     * @param id 合作品牌主键
     * @return 结果
     */
    @Override
    public int deleteTbBrandById(Long id)
    {
        return tbBrandMapper.deleteTbBrandById(id);
    }
}
