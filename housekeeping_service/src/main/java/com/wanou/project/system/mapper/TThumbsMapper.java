package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TThumbs;
import com.wanou.project.system.domain.vo.ThumbsVo;

/**
 * 点赞Mapper接口
 *
 * @author ruoyi
 * @date 2023-10-29
 */
public interface TThumbsMapper
{
    /**
     * 查询点赞
     *
     * @param id 点赞主键
     * @return 点赞
     */
    public TThumbs selectTThumbsById(Long id);

    /**
     * 查询点赞列表
     *
     * @param tThumbs 点赞
     * @return 点赞集合
     */
    public List<TThumbs> selectTThumbsList(TThumbs tThumbs);

    public List<ThumbsVo> selectTThumbsMyList(Long userId);

    /**
     * 新增点赞
     *
     * @param tThumbs 点赞
     * @return 结果
     */
    public int insertTThumbs(TThumbs tThumbs);

    /**
     * 修改点赞
     *
     * @param tThumbs 点赞
     * @return 结果
     */
    public int updateTThumbs(TThumbs tThumbs);

    /**
     * 删除点赞
     *
     * @param id 点赞主键
     * @return 结果
     */
    public int deleteTThumbsById(Long id);

    /**
     * 批量删除点赞
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTThumbsByIds(Long[] ids);
}
