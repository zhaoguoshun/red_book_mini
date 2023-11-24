package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbGuideProject;

/**
 * 指导项目Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface TbGuideProjectMapper
{
    /**
     * 查询指导项目
     *
     * @param id 指导项目主键
     * @return 指导项目
     */
    public TbGuideProject selectTbGuideProjectById(Long id);

    /**
     * 查询指导项目列表
     *
     * @param tbGuideProject 指导项目
     * @return 指导项目集合
     */
    public List<TbGuideProject> selectTbGuideProjectList(TbGuideProject tbGuideProject);

    /**
     * 新增指导项目
     *
     * @param tbGuideProject 指导项目
     * @return 结果
     */
    public int insertTbGuideProject(TbGuideProject tbGuideProject);

    /**
     * 修改指导项目
     *
     * @param tbGuideProject 指导项目
     * @return 结果
     */
    public int updateTbGuideProject(TbGuideProject tbGuideProject);

    /**
     * 删除指导项目
     *
     * @param id 指导项目主键
     * @return 结果
     */
    public int deleteTbGuideProjectById(Long id);

    /**
     * 批量删除指导项目
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbGuideProjectByIds(Long[] ids);
}
