package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbGuideProjectMapper;
import com.wanou.project.system.domain.TbGuideProject;
import com.wanou.project.system.service.ITbGuideProjectService;

/**
 * 指导项目Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbGuideProjectServiceImpl implements ITbGuideProjectService
{
    @Autowired
    private TbGuideProjectMapper tbGuideProjectMapper;

    /**
     * 查询指导项目
     *
     * @param id 指导项目主键
     * @return 指导项目
     */
    @Override
    public TbGuideProject selectTbGuideProjectById(Long id)
    {
        return tbGuideProjectMapper.selectTbGuideProjectById(id);
    }

    /**
     * 查询指导项目列表
     *
     * @param tbGuideProject 指导项目
     * @return 指导项目
     */
    @Override
    public List<TbGuideProject> selectTbGuideProjectList(TbGuideProject tbGuideProject)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbGuideProject.setUserId(SecurityUtils.getUserId());
        }
        return tbGuideProjectMapper.selectTbGuideProjectList(tbGuideProject);
    }

    /**
     * 新增指导项目
     *
     * @param tbGuideProject 指导项目
     * @return 结果
     */
    @Override
    public int insertTbGuideProject(TbGuideProject tbGuideProject)
    {
        tbGuideProject.setCreateTime(DateUtils.getNowDate());
        tbGuideProject.setUserId(SecurityUtils.getUserId());
        return tbGuideProjectMapper.insertTbGuideProject(tbGuideProject);
    }

    /**
     * 修改指导项目
     *
     * @param tbGuideProject 指导项目
     * @return 结果
     */
    @Override
    public int updateTbGuideProject(TbGuideProject tbGuideProject)
    {
        return tbGuideProjectMapper.updateTbGuideProject(tbGuideProject);
    }

    /**
     * 批量删除指导项目
     *
     * @param ids 需要删除的指导项目主键
     * @return 结果
     */
    @Override
    public int deleteTbGuideProjectByIds(Long[] ids)
    {
        return tbGuideProjectMapper.deleteTbGuideProjectByIds(ids);
    }

    /**
     * 删除指导项目信息
     *
     * @param id 指导项目主键
     * @return 结果
     */
    @Override
    public int deleteTbGuideProjectById(Long id)
    {
        return tbGuideProjectMapper.deleteTbGuideProjectById(id);
    }
}
