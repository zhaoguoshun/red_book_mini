package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbPageMapper;
import com.wanou.project.system.domain.TbPage;
import com.wanou.project.system.service.ITbPageService;

/**
 * 首页管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-01
 */
@Service
public class TbPageServiceImpl implements ITbPageService
{
    @Autowired
    private TbPageMapper tbPageMapper;

    /**
     * 查询首页管理
     *
     * @param id 首页管理主键
     * @return 首页管理
     */
    @Override
    public TbPage selectTbPageById(Long id)
    {
        return tbPageMapper.selectTbPageById(id);
    }

    /**
     * 查询首页管理列表
     *
     * @param tbPage 首页管理
     * @return 首页管理
     */
    @Override
    public List<TbPage> selectTbPageList(TbPage tbPage)
    {
        return tbPageMapper.selectTbPageList(tbPage);
    }

    /**
     * 新增首页管理
     *
     * @param tbPage 首页管理
     * @return 结果
     */
    @Override
    public int insertTbPage(TbPage tbPage)
    {
        tbPage.setCreateTime(DateUtils.getNowDate());
        return tbPageMapper.insertTbPage(tbPage);
    }

    /**
     * 修改首页管理
     *
     * @param tbPage 首页管理
     * @return 结果
     */
    @Override
    public int updateTbPage(TbPage tbPage)
    {
        return tbPageMapper.updateTbPage(tbPage);
    }

    /**
     * 批量删除首页管理
     *
     * @param ids 需要删除的首页管理主键
     * @return 结果
     */
    @Override
    public int deleteTbPageByIds(Long[] ids)
    {
        return tbPageMapper.deleteTbPageByIds(ids);
    }

    /**
     * 删除首页管理信息
     *
     * @param id 首页管理主键
     * @return 结果
     */
    @Override
    public int deleteTbPageById(Long id)
    {
        return tbPageMapper.deleteTbPageById(id);
    }
}
