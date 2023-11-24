package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TDetailCollect;

/**
 * 作品收藏Mapper接口
 *
 * @author ruoyi
 * @date 2023-10-29
 */
public interface TDetailCollectMapper
{
    /**
     * 查询作品收藏
     *
     * @param id 作品收藏主键
     * @return 作品收藏
     */
    public TDetailCollect selectTDetailCollectById(Long id);

    /**
     * 查询作品收藏列表
     *
     * @param tDetailCollect 作品收藏
     * @return 作品收藏集合
     */
    public List<TDetailCollect> selectTDetailCollectList(TDetailCollect tDetailCollect);

    /**
     * 新增作品收藏
     *
     * @param tDetailCollect 作品收藏
     * @return 结果
     */
    public int insertTDetailCollect(TDetailCollect tDetailCollect);

    /**
     * 修改作品收藏
     *
     * @param tDetailCollect 作品收藏
     * @return 结果
     */
    public int updateTDetailCollect(TDetailCollect tDetailCollect);

    /**
     * 删除作品收藏
     *
     * @param id 作品收藏主键
     * @return 结果
     */
    public int deleteTDetailCollectById(Long id);

    /**
     * 批量删除作品收藏
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTDetailCollectByIds(Long[] ids);
}
