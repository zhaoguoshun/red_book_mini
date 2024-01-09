package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbMovieView;
import com.wanou.project.system.domain.vo.TbMovieViewVO;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
public interface TbMovieViewMapper
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
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbMovieViewById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbMovieViewByIds(Long[] ids);

    public List<TbMovieViewVO> getTop10();

    List<TbMovieView> getLikeList(Long userId);
}
