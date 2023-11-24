package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbTalks;

/**
 * 论坛Mapper接口
 *
 * @author ruoyi
 * @date 2023-03-30
 */
public interface TbTalksMapper
{
    /**
     * 查询论坛
     *
     * @param id 论坛主键
     * @return 论坛
     */
    public TbTalks selectTbTalksById(Long id);

    /**
     * 查询论坛列表
     *
     * @param tbTalks 论坛
     * @return 论坛集合
     */
    public List<TbTalks> selectTbTalksList(TbTalks tbTalks);

    /**
     * 新增论坛
     *
     * @param tbTalks 论坛
     * @return 结果
     */
    public int insertTbTalks(TbTalks tbTalks);

    /**
     * 修改论坛
     *
     * @param tbTalks 论坛
     * @return 结果
     */
    public int updateTbTalks(TbTalks tbTalks);

    /**
     * 删除论坛
     *
     * @param id 论坛主键
     * @return 结果
     */
    public int deleteTbTalksById(Long id);

    /**
     * 批量删除论坛
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbTalksByIds(Long[] ids);
}
