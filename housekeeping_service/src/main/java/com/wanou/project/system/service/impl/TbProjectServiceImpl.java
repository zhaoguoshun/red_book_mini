package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbProjectMapper;
import com.wanou.project.system.domain.TbProject;
import com.wanou.project.system.service.ITbProjectService;

/**
 * 健身项目Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbProjectServiceImpl implements ITbProjectService
{
    @Autowired
    private TbProjectMapper tbProjectMapper;

    /**
     * 查询健身项目
     *
     * @param id 健身项目主键
     * @return 健身项目
     */
    @Override
    public TbProject selectTbProjectById(Long id)
    {
        return tbProjectMapper.selectTbProjectById(id);
    }

    /**
     * 查询健身项目列表
     *
     * @param tbProject 健身项目
     * @return 健身项目
     */
    @Override
    public List<TbProject> selectTbProjectList(TbProject tbProject)
    {
        return tbProjectMapper.selectTbProjectList(tbProject);
    }

    /**
     * 新增健身项目
     *
     * @param tbProject 健身项目
     * @return 结果
     */
    @Override
    public int insertTbProject(TbProject tbProject)
    {
        tbProject.setCreateTime(DateUtils.getNowDate());
        return tbProjectMapper.insertTbProject(tbProject);
    }

    /**
     * 修改健身项目
     *
     * @param tbProject 健身项目
     * @return 结果
     */
    @Override
    public int updateTbProject(TbProject tbProject)
    {
        return tbProjectMapper.updateTbProject(tbProject);
    }

    /**
     * 批量删除健身项目
     *
     * @param ids 需要删除的健身项目主键
     * @return 结果
     */
    @Override
    public int deleteTbProjectByIds(Long[] ids)
    {
        return tbProjectMapper.deleteTbProjectByIds(ids);
    }

    /**
     * 删除健身项目信息
     *
     * @param id 健身项目主键
     * @return 结果
     */
    @Override
    public int deleteTbProjectById(Long id)
    {
        return tbProjectMapper.deleteTbProjectById(id);
    }
}
