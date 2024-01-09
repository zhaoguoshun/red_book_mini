package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbJournalismMapper;
import com.wanou.project.system.domain.TbJournalism;
import com.wanou.project.system.service.ITbJournalismService;

/**
 * 新闻Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-02
 */
@Service
public class TbJournalismServiceImpl implements ITbJournalismService
{
    @Autowired
    private TbJournalismMapper tbJournalismMapper;

    /**
     * 查询新闻
     *
     * @param id 新闻主键
     * @return 新闻
     */
    @Override
    public TbJournalism selectTbJournalismById(Long id)
    {
        return tbJournalismMapper.selectTbJournalismById(id);
    }

    /**
     * 查询新闻列表
     *
     * @param tbJournalism 新闻
     * @return 新闻
     */
    @Override
    public List<TbJournalism> selectTbJournalismList(TbJournalism tbJournalism)
    {
        return tbJournalismMapper.selectTbJournalismList(tbJournalism);
    }

    /**
     * 新增新闻
     *
     * @param tbJournalism 新闻
     * @return 结果
     */
    @Override
    public int insertTbJournalism(TbJournalism tbJournalism)
    {
        tbJournalism.setCreateTime(DateUtils.getNowDate());
        return tbJournalismMapper.insertTbJournalism(tbJournalism);
    }

    /**
     * 修改新闻
     *
     * @param tbJournalism 新闻
     * @return 结果
     */
    @Override
    public int updateTbJournalism(TbJournalism tbJournalism)
    {
        return tbJournalismMapper.updateTbJournalism(tbJournalism);
    }

    /**
     * 批量删除新闻
     *
     * @param ids 需要删除的新闻主键
     * @return 结果
     */
    @Override
    public int deleteTbJournalismByIds(Long[] ids)
    {
        return tbJournalismMapper.deleteTbJournalismByIds(ids);
    }

    /**
     * 删除新闻信息
     *
     * @param id 新闻主键
     * @return 结果
     */
    @Override
    public int deleteTbJournalismById(Long id)
    {
        return tbJournalismMapper.deleteTbJournalismById(id);
    }
}
