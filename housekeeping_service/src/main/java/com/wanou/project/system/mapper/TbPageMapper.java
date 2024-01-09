package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbPage;

/**
 * 首页管理Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-01
 */
public interface TbPageMapper
{
    /**
     * 查询首页管理
     *
     * @param id 首页管理主键
     * @return 首页管理
     */
    public TbPage selectTbPageById(Long id);

    /**
     * 查询首页管理列表
     *
     * @param tbPage 首页管理
     * @return 首页管理集合
     */
    public List<TbPage> selectTbPageList(TbPage tbPage);

    /**
     * 新增首页管理
     *
     * @param tbPage 首页管理
     * @return 结果
     */
    public int insertTbPage(TbPage tbPage);

    /**
     * 修改首页管理
     *
     * @param tbPage 首页管理
     * @return 结果
     */
    public int updateTbPage(TbPage tbPage);

    /**
     * 删除首页管理
     *
     * @param id 首页管理主键
     * @return 结果
     */
    public int deleteTbPageById(Long id);

    /**
     * 批量删除首页管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbPageByIds(Long[] ids);
}
