package com.wanou.project.system.service.impl;

import java.util.List;
import java.util.UUID;

import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbOderMapper;
import com.wanou.project.system.domain.TbOder;
import com.wanou.project.system.service.ITbOderService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-05
 */
@Service
public class TbOderServiceImpl implements ITbOderService
{
    @Autowired
    private TbOderMapper tbOderMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbOder selectTbOderById(Long id)
    {
        return tbOderMapper.selectTbOderById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbOder 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbOder> selectTbOderList(TbOder tbOder)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbOder.setUserId(SecurityUtils.getUserId());
        }
        return tbOderMapper.selectTbOderList(tbOder);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbOder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbOder(TbOder tbOder)
    {
        tbOder.setCreateTime(DateUtils.getNowDate());
        tbOder.setUserId(SecurityUtils.getUserId());
        tbOder.setOrderNum(UUID.randomUUID().toString());
        return tbOderMapper.insertTbOder(tbOder);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbOder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbOder(TbOder tbOder)
    {
        return tbOderMapper.updateTbOder(tbOder);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbOderByIds(Long[] ids)
    {
        return tbOderMapper.deleteTbOderByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbOderById(Long id)
    {
        return tbOderMapper.deleteTbOderById(id);
    }
}
