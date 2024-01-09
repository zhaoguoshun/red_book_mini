package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbProject;

/**
 * 健身项目Service接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface ITbProjectService
{
    /**
     * 查询健身项目
     *
     * @param id 健身项目主键
     * @return 健身项目
     */
    public TbProject selectTbProjectById(Long id);

    /**
     * 查询健身项目列表
     *
     * @param tbProject 健身项目
     * @return 健身项目集合
     */
    public List<TbProject> selectTbProjectList(TbProject tbProject);

    /**
     * 新增健身项目
     *
     * @param tbProject 健身项目
     * @return 结果
     */
    public int insertTbProject(TbProject tbProject);

    /**
     * 修改健身项目
     *
     * @param tbProject 健身项目
     * @return 结果
     */
    public int updateTbProject(TbProject tbProject);

    /**
     * 批量删除健身项目
     *
     * @param ids 需要删除的健身项目主键集合
     * @return 结果
     */
    public int deleteTbProjectByIds(Long[] ids);

    /**
     * 删除健身项目信息
     *
     * @param id 健身项目主键
     * @return 结果
     */
    public int deleteTbProjectById(Long id);
}
