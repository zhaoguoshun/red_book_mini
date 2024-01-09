package com.wanou.project.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbLunbMapper;
import com.wanou.project.system.domain.TbLunb;
import com.wanou.project.system.service.ITbLunbService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-05-10
 */
@Service
public class TbLunbServiceImpl implements ITbLunbService
{
    @Autowired
    private TbLunbMapper tbLunbMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbLunb selectTbLunbById(Long id)
    {
        return tbLunbMapper.selectTbLunbById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbLunb 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbLunb> selectTbLunbList(TbLunb tbLunb)
    {
        return tbLunbMapper.selectTbLunbList(tbLunb);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbLunb 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbLunb(TbLunb tbLunb)
    {
        return tbLunbMapper.insertTbLunb(tbLunb);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbLunb 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbLunb(TbLunb tbLunb)
    {
        return tbLunbMapper.updateTbLunb(tbLunb);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbLunbByIds(Long[] ids)
    {
        return tbLunbMapper.deleteTbLunbByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbLunbById(Long id)
    {
        return tbLunbMapper.deleteTbLunbById(id);
    }
}
