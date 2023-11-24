package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbHelpMapper;
import com.wanou.project.system.domain.TbHelp;
import com.wanou.project.system.service.ITbHelpService;

/**
 * 提供帮助Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-02
 */
@Service
public class TbHelpServiceImpl implements ITbHelpService
{
    @Autowired
    private TbHelpMapper tbHelpMapper;

    /**
     * 查询提供帮助
     *
     * @param id 提供帮助主键
     * @return 提供帮助
     */
    @Override
    public TbHelp selectTbHelpById(Long id)
    {
        return tbHelpMapper.selectTbHelpById(id);
    }

    /**
     * 查询提供帮助列表
     *
     * @param tbHelp 提供帮助
     * @return 提供帮助
     */
    @Override
    public List<TbHelp> selectTbHelpList(TbHelp tbHelp)
    {
        return tbHelpMapper.selectTbHelpList(tbHelp);
    }

    /**
     * 新增提供帮助
     *
     * @param tbHelp 提供帮助
     * @return 结果
     */
    @Override
    public int insertTbHelp(TbHelp tbHelp)
    {
        tbHelp.setCreateTime(DateUtils.getNowDate());
        return tbHelpMapper.insertTbHelp(tbHelp);
    }

    /**
     * 修改提供帮助
     *
     * @param tbHelp 提供帮助
     * @return 结果
     */
    @Override
    public int updateTbHelp(TbHelp tbHelp)
    {
        return tbHelpMapper.updateTbHelp(tbHelp);
    }

    /**
     * 批量删除提供帮助
     *
     * @param ids 需要删除的提供帮助主键
     * @return 结果
     */
    @Override
    public int deleteTbHelpByIds(Long[] ids)
    {
        return tbHelpMapper.deleteTbHelpByIds(ids);
    }

    /**
     * 删除提供帮助信息
     *
     * @param id 提供帮助主键
     * @return 结果
     */
    @Override
    public int deleteTbHelpById(Long id)
    {
        return tbHelpMapper.deleteTbHelpById(id);
    }
}
