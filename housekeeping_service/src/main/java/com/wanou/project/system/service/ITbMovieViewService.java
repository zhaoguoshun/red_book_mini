package com.wanou.project.system.service;

import java.util.List;

import com.wanou.project.system.domain.TbFlim;
import com.wanou.project.system.domain.TbMovieView;
import com.wanou.project.system.domain.vo.TbMovieViewVO;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
public interface ITbMovieViewService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbMovieView selectTbMovieViewById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbMovieView 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbMovieView> selectTbMovieViewList(TbMovieView tbMovieView);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbMovieView 【请填写功能名称】
     * @return 结果
     */
    public int insertTbMovieView(TbMovieView tbMovieView);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbMovieView 【请填写功能名称】
     * @return 结果
     */
    public int updateTbMovieView(TbMovieView tbMovieView);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbMovieViewByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbMovieViewById(Long id);

    public List<TbMovieViewVO> getTop10();

    List<TbFlim> getLikeList();
}
