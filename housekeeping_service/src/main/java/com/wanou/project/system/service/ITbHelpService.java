package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbHelp;

/**
 * 提供帮助Service接口
 *
 * @author ruoyi
 * @date 2023-04-02
 */
public interface ITbHelpService
{
    /**
     * 查询提供帮助
     *
     * @param id 提供帮助主键
     * @return 提供帮助
     */
    public TbHelp selectTbHelpById(Long id);

    /**
     * 查询提供帮助列表
     *
     * @param tbHelp 提供帮助
     * @return 提供帮助集合
     */
    public List<TbHelp> selectTbHelpList(TbHelp tbHelp);

    /**
     * 新增提供帮助
     *
     * @param tbHelp 提供帮助
     * @return 结果
     */
    public int insertTbHelp(TbHelp tbHelp);

    /**
     * 修改提供帮助
     *
     * @param tbHelp 提供帮助
     * @return 结果
     */
    public int updateTbHelp(TbHelp tbHelp);

    /**
     * 批量删除提供帮助
     *
     * @param ids 需要删除的提供帮助主键集合
     * @return 结果
     */
    public int deleteTbHelpByIds(Long[] ids);

    /**
     * 删除提供帮助信息
     *
     * @param id 提供帮助主键
     * @return 结果
     */
    public int deleteTbHelpById(Long id);
}
