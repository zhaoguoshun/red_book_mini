package com.wanou.project.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbTagViewMapper;
import com.wanou.project.system.domain.TbTagView;
import com.wanou.project.system.service.ITbTagViewService;

/**
 * 标签查看Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
@Service
public class TbTagViewServiceImpl implements ITbTagViewService
{
    @Autowired
    private TbTagViewMapper tbTagViewMapper;

    /**
     * 查询标签查看
     *
     * @param id 标签查看主键
     * @return 标签查看
     */
    @Override
    public TbTagView selectTbTagViewById(Long id)
    {
        return tbTagViewMapper.selectTbTagViewById(id);
    }

    /**
     * 查询标签查看列表
     *
     * @param tbTagView 标签查看
     * @return 标签查看
     */
    @Override
    public List<TbTagView> selectTbTagViewList(TbTagView tbTagView)
    {
        return tbTagViewMapper.selectTbTagViewList(tbTagView);
    }

    /**
     * 新增标签查看
     *
     * @param tbTagView 标签查看
     * @return 结果
     */
    @Override
    public int insertTbTagView(TbTagView tbTagView)
    {
        return tbTagViewMapper.insertTbTagView(tbTagView);
    }

    /**
     * 修改标签查看
     *
     * @param tbTagView 标签查看
     * @return 结果
     */
    @Override
    public int updateTbTagView(TbTagView tbTagView)
    {
        return tbTagViewMapper.updateTbTagView(tbTagView);
    }

    /**
     * 批量删除标签查看
     *
     * @param ids 需要删除的标签查看主键
     * @return 结果
     */
    @Override
    public int deleteTbTagViewByIds(Long[] ids)
    {
        return tbTagViewMapper.deleteTbTagViewByIds(ids);
    }

    /**
     * 删除标签查看信息
     *
     * @param id 标签查看主键
     * @return 结果
     */
    @Override
    public int deleteTbTagViewById(Long id)
    {
        return tbTagViewMapper.deleteTbTagViewById(id);
    }
}
