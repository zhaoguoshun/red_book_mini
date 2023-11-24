package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbFlim;

/**
 * 【请填写功能名称】Service接口
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
public interface ITbFlimService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbFlim selectTbFlimById(Long id);


    /**
     * 选择结核病率最高电影
     *
     * @return {@link List}<{@link TbFlim}>
     */
    List<TbFlim> selectTbFilmRateTop();

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbFlim 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbFlim> selectTbFlimList(TbFlim tbFlim);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbFlim 【请填写功能名称】
     * @return 结果
     */
    public int insertTbFlim(TbFlim tbFlim);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbFlim 【请填写功能名称】
     * @return 结果
     */
    public int updateTbFlim(TbFlim tbFlim);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbFlimByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbFlimById(Long id);

    /**
     * 根据收藏量查询电影
     *
     * @return {@link List}<{@link TbFlim}>
     */
    List<TbFlim> queryFilmByCollect();
}
