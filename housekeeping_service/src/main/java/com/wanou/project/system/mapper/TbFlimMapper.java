package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbFlim;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
public interface TbFlimMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbFlim selectTbFlimById(Long id);

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
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbFlimById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbFlimByIds(Long[] ids);


    public List<TbFlim> getflimTags(String tagId);

    List<TbFlim> getRandom();

    /**
     * 选择电影,收集计数
     *
     * @return {@link List}<{@link TbFlim}>
     */
    List<TbFlim> selectFilmByCollectCount();

    /**
     * 选择率最高电影
     *
     * @return {@link List}<{@link TbFlim}>
     */
    List<TbFlim> selectFilmByRateTop();
}
