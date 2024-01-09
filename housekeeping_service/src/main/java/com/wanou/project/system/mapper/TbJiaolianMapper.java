package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbJiaolian;

/**
 * 教练管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-25
 */
public interface TbJiaolianMapper
{
    /**
     * 查询教练管理
     *
     * @param id 教练管理主键
     * @return 教练管理
     */
    public TbJiaolian selectTbJiaolianById(Long id);

    /**
     * 查询教练管理列表
     *
     * @param tbJiaolian 教练管理
     * @return 教练管理集合
     */
    public List<TbJiaolian> selectTbJiaolianList(TbJiaolian tbJiaolian);

    /**
     * 新增教练管理
     *
     * @param tbJiaolian 教练管理
     * @return 结果
     */
    public int insertTbJiaolian(TbJiaolian tbJiaolian);

    /**
     * 修改教练管理
     *
     * @param tbJiaolian 教练管理
     * @return 结果
     */
    public int updateTbJiaolian(TbJiaolian tbJiaolian);

    /**
     * 删除教练管理
     *
     * @param id 教练管理主键
     * @return 结果
     */
    public int deleteTbJiaolianById(Long id);

    /**
     * 批量删除教练管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbJiaolianByIds(Long[] ids);
}
