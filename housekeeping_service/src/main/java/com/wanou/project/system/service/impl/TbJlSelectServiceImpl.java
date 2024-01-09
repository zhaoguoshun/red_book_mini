package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbJlSelectMapper;
import com.wanou.project.system.domain.TbJlSelect;
import com.wanou.project.system.service.ITbJlSelectService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-25
 */
@Service
public class TbJlSelectServiceImpl implements ITbJlSelectService
{
    @Autowired
    private TbJlSelectMapper tbJlSelectMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbJlSelect selectTbJlSelectById(Long id)
    {
        return tbJlSelectMapper.selectTbJlSelectById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbJlSelect 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbJlSelect> selectTbJlSelectList(TbJlSelect tbJlSelect)
    {
        return tbJlSelectMapper.selectTbJlSelectList(tbJlSelect);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbJlSelect 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbJlSelect(TbJlSelect tbJlSelect)
    {
        tbJlSelect.setCreateTime(DateUtils.getNowDate());
        tbJlSelect.setUserId(SecurityUtils.getUserId());
        return tbJlSelectMapper.insertTbJlSelect(tbJlSelect);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbJlSelect 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbJlSelect(TbJlSelect tbJlSelect)
    {
        return tbJlSelectMapper.updateTbJlSelect(tbJlSelect);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbJlSelectByIds(Long[] ids)
    {
        return tbJlSelectMapper.deleteTbJlSelectByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbJlSelectById(Long id)
    {
        return tbJlSelectMapper.deleteTbJlSelectById(id);
    }
}
