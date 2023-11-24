package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbAnchorMapper;
import com.wanou.project.system.domain.TbAnchor;
import com.wanou.project.system.service.ITbAnchorService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-01
 */
@Service
public class TbAnchorServiceImpl implements ITbAnchorService
{
    @Autowired
    private TbAnchorMapper tbAnchorMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbAnchor selectTbAnchorById(Long id)
    {
        return tbAnchorMapper.selectTbAnchorById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbAnchor 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbAnchor> selectTbAnchorList(TbAnchor tbAnchor)
    {
        return tbAnchorMapper.selectTbAnchorList(tbAnchor);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbAnchor 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbAnchor(TbAnchor tbAnchor)
    {
        tbAnchor.setCreateTime(DateUtils.getNowDate());
        return tbAnchorMapper.insertTbAnchor(tbAnchor);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbAnchor 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbAnchor(TbAnchor tbAnchor)
    {
        return tbAnchorMapper.updateTbAnchor(tbAnchor);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbAnchorByIds(Long[] ids)
    {
        return tbAnchorMapper.deleteTbAnchorByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbAnchorById(Long id)
    {
        return tbAnchorMapper.deleteTbAnchorById(id);
    }
}
