package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbProject;

/**
 * 健身项目Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface TbProjectMapper
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
     * 删除健身项目
     *
     * @param id 健身项目主键
     * @return 结果
     */
    public int deleteTbProjectById(Long id);

    /**
     * 批量删除健身项目
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbProjectByIds(Long[] ids);
}
