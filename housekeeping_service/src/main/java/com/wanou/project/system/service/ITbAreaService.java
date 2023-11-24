package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbArea;

/**
 * 地区Service接口
 *
 * @author HuangXiLiang
 * @date 2022-05-01
 */
public interface ITbAreaService
{
    /**
     * 查询地区
     *
     * @param id 地区主键
     * @return 地区
     */
    public TbArea selectTbAreaById(Long id);

    /**
     * 查询地区列表
     *
     * @param tbArea 地区
     * @return 地区集合
     */
    public List<TbArea> selectTbAreaList(TbArea tbArea);

    /**
     * 新增地区
     *
     * @param tbArea 地区
     * @return 结果
     */
    public int insertTbArea(TbArea tbArea);

    /**
     * 修改地区
     *
     * @param tbArea 地区
     * @return 结果
     */
    public int updateTbArea(TbArea tbArea);

    /**
     * 批量删除地区
     *
     * @param ids 需要删除的地区主键集合
     * @return 结果
     */
    public int deleteTbAreaByIds(Long[] ids);

    /**
     * 删除地区信息
     *
     * @param id 地区主键
     * @return 结果
     */
    public int deleteTbAreaById(Long id);
}
