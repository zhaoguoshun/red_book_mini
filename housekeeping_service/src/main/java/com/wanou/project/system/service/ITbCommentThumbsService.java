package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbCommentThumbs;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-10-15
 */
public interface ITbCommentThumbsService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbCommentThumbs selectTbCommentThumbsById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbCommentThumbs 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbCommentThumbs> selectTbCommentThumbsList(TbCommentThumbs tbCommentThumbs);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbCommentThumbs 【请填写功能名称】
     * @return 结果
     */
    public int insertTbCommentThumbs(TbCommentThumbs tbCommentThumbs);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbCommentThumbs 【请填写功能名称】
     * @return 结果
     */
    public int updateTbCommentThumbs(TbCommentThumbs tbCommentThumbs);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbCommentThumbsByIds(List<Long> ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbCommentThumbsById(Long id);
}
