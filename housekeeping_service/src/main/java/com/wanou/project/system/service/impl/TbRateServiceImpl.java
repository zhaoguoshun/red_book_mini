package com.wanou.project.system.service.impl;

import java.util.List;

import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbRateMapper;
import com.wanou.project.system.domain.TbRate;
import com.wanou.project.system.service.ITbRateService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-05-09
 */
@Service
public class TbRateServiceImpl implements ITbRateService
{
    @Autowired
    private TbRateMapper tbRateMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbRate selectTbRateById(Long id)
    {
        return tbRateMapper.selectTbRateById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbRate 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbRate> selectTbRateList(TbRate tbRate)
    {
        return tbRateMapper.selectTbRateList(tbRate);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbRate 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbRate(TbRate tbRate)
    {
        return tbRateMapper.insertTbRate(tbRate);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbRate 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbRate(TbRate tbRate)
    {
        return tbRateMapper.updateTbRate(tbRate);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbRateByIds(Long[] ids)
    {
        return tbRateMapper.deleteTbRateByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbRateById(Long id)
    {
        return tbRateMapper.deleteTbRateById(id);
    }
}
