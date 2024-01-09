package com.wanou.project.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbAreaMapper;
import com.wanou.project.system.domain.TbArea;
import com.wanou.project.system.service.ITbAreaService;

/**
 * 地区Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-05-01
 */
@Service
public class TbAreaServiceImpl implements ITbAreaService
{
    @Autowired
    private TbAreaMapper tbAreaMapper;

    /**
     * 查询地区
     *
     * @param id 地区主键
     * @return 地区
     */
    @Override
    public TbArea selectTbAreaById(Long id)
    {
        return tbAreaMapper.selectTbAreaById(id);
    }

    /**
     * 查询地区列表
     *
     * @param tbArea 地区
     * @return 地区
     */
    @Override
    public List<TbArea> selectTbAreaList(TbArea tbArea)
    {
        return tbAreaMapper.selectTbAreaList(tbArea);
    }

    /**
     * 新增地区
     *
     * @param tbArea 地区
     * @return 结果
     */
    @Override
    public int insertTbArea(TbArea tbArea)
    {
        return tbAreaMapper.insertTbArea(tbArea);
    }

    /**
     * 修改地区
     *
     * @param tbArea 地区
     * @return 结果
     */
    @Override
    public int updateTbArea(TbArea tbArea)
    {
        return tbAreaMapper.updateTbArea(tbArea);
    }

    /**
     * 批量删除地区
     *
     * @param ids 需要删除的地区主键
     * @return 结果
     */
    @Override
    public int deleteTbAreaByIds(Long[] ids)
    {
        return tbAreaMapper.deleteTbAreaByIds(ids);
    }

    /**
     * 删除地区信息
     *
     * @param id 地区主键
     * @return 结果
     */
    @Override
    public int deleteTbAreaById(Long id)
    {
        return tbAreaMapper.deleteTbAreaById(id);
    }
}
