package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbMeMapper;
import com.wanou.project.system.domain.TbMe;
import com.wanou.project.system.service.ITbMeService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-01
 */
@Service
public class TbMeServiceImpl implements ITbMeService
{
    @Autowired
    private TbMeMapper tbMeMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbMe selectTbMeById(Long id)
    {
        return tbMeMapper.selectTbMeById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbMe 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbMe> selectTbMeList(TbMe tbMe)
    {
        return tbMeMapper.selectTbMeList(tbMe);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbMe 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbMe(TbMe tbMe)
    {
        tbMe.setCreateTime(DateUtils.getNowDate());
        return tbMeMapper.insertTbMe(tbMe);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbMe 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbMe(TbMe tbMe)
    {
        return tbMeMapper.updateTbMe(tbMe);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbMeByIds(Long[] ids)
    {
        return tbMeMapper.deleteTbMeByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbMeById(Long id)
    {
        return tbMeMapper.deleteTbMeById(id);
    }
}
