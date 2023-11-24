package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbTalkThumbs;

/**
 * 说说点赞Mapper接口
 *
 * @author ruoyi
 * @date 2023-03-30
 */
public interface TbTalkThumbsMapper
{
    /**
     * 查询说说点赞
     *
     * @param id 说说点赞主键
     * @return 说说点赞
     */
    public TbTalkThumbs selectTbTalkThumbsById(Long id);

    /**
     * 查询说说点赞列表
     *
     * @param tbTalkThumbs 说说点赞
     * @return 说说点赞集合
     */
    public List<TbTalkThumbs> selectTbTalkThumbsList(TbTalkThumbs tbTalkThumbs);

    /**
     * 新增说说点赞
     *
     * @param tbTalkThumbs 说说点赞
     * @return 结果
     */
    public int insertTbTalkThumbs(TbTalkThumbs tbTalkThumbs);

    /**
     * 修改说说点赞
     *
     * @param tbTalkThumbs 说说点赞
     * @return 结果
     */
    public int updateTbTalkThumbs(TbTalkThumbs tbTalkThumbs);

    /**
     * 删除说说点赞
     *
     * @param id 说说点赞主键
     * @return 结果
     */
    public int deleteTbTalkThumbsById(Long id);

    /**
     * 批量删除说说点赞
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbTalkThumbsByIds(List<Long> ids);
}
