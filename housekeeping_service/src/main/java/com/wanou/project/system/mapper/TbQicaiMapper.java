package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbQicai;

/**
 * 器材Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface TbQicaiMapper
{
    /**
     * 查询器材
     *
     * @param id 器材主键
     * @return 器材
     */
    public TbQicai selectTbQicaiById(Long id);

    /**
     * 查询器材列表
     *
     * @param tbQicai 器材
     * @return 器材集合
     */
    public List<TbQicai> selectTbQicaiList(TbQicai tbQicai);

    /**
     * 新增器材
     *
     * @param tbQicai 器材
     * @return 结果
     */
    public int insertTbQicai(TbQicai tbQicai);

    /**
     * 修改器材
     *
     * @param tbQicai 器材
     * @return 结果
     */
    public int updateTbQicai(TbQicai tbQicai);

    /**
     * 删除器材
     *
     * @param id 器材主键
     * @return 结果
     */
    public int deleteTbQicaiById(Long id);

    /**
     * 批量删除器材
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbQicaiByIds(Long[] ids);
}
