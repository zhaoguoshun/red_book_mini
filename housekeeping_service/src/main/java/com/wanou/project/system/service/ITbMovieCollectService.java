package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbMovieCollect;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-10-15
 */
public interface ITbMovieCollectService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbMovieCollect selectTbMovieCollectById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbMovieCollect 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbMovieCollect> selectTbMovieCollectList(TbMovieCollect tbMovieCollect);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbMovieCollect 【请填写功能名称】
     * @return 结果
     */
    public int insertTbMovieCollect(TbMovieCollect tbMovieCollect);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbMovieCollect 【请填写功能名称】
     * @return 结果
     */
    public int updateTbMovieCollect(TbMovieCollect tbMovieCollect);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbMovieCollectByIds(List<Long> ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbMovieCollectById(Long id);
}
