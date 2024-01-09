package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbTagView;

/**
 * 标签查看Service接口
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
public interface ITbTagViewService
{
    /**
     * 查询标签查看
     *
     * @param id 标签查看主键
     * @return 标签查看
     */
    public TbTagView selectTbTagViewById(Long id);

    /**
     * 查询标签查看列表
     *
     * @param tbTagView 标签查看
     * @return 标签查看集合
     */
    public List<TbTagView> selectTbTagViewList(TbTagView tbTagView);

    /**
     * 新增标签查看
     *
     * @param tbTagView 标签查看
     * @return 结果
     */
    public int insertTbTagView(TbTagView tbTagView);

    /**
     * 修改标签查看
     *
     * @param tbTagView 标签查看
     * @return 结果
     */
    public int updateTbTagView(TbTagView tbTagView);

    /**
     * 批量删除标签查看
     *
     * @param ids 需要删除的标签查看主键集合
     * @return 结果
     */
    public int deleteTbTagViewByIds(Long[] ids);

    /**
     * 删除标签查看信息
     *
     * @param id 标签查看主键
     * @return 结果
     */
    public int deleteTbTagViewById(Long id);
}
