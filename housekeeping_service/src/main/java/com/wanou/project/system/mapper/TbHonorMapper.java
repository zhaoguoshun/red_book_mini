package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbHonor;

/**
 * 荣誉Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-02
 */
public interface TbHonorMapper
{
    /**
     * 查询荣誉
     *
     * @param id 荣誉主键
     * @return 荣誉
     */
    public TbHonor selectTbHonorById(Long id);

    /**
     * 查询荣誉列表
     *
     * @param tbHonor 荣誉
     * @return 荣誉集合
     */
    public List<TbHonor> selectTbHonorList(TbHonor tbHonor);

    /**
     * 新增荣誉
     *
     * @param tbHonor 荣誉
     * @return 结果
     */
    public int insertTbHonor(TbHonor tbHonor);

    /**
     * 修改荣誉
     *
     * @param tbHonor 荣誉
     * @return 结果
     */
    public int updateTbHonor(TbHonor tbHonor);

    /**
     * 删除荣誉
     *
     * @param id 荣誉主键
     * @return 结果
     */
    public int deleteTbHonorById(Long id);

    /**
     * 批量删除荣誉
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbHonorByIds(Long[] ids);
}
