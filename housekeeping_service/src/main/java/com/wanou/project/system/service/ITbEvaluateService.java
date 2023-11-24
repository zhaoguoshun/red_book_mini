package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbEvaluate;

/**
 * 评价Service接口
 *
 * @author ruoyi
 * @date 2023-04-25
 */
public interface ITbEvaluateService
{
    /**
     * 查询评价
     *
     * @param id 评价主键
     * @return 评价
     */
    public TbEvaluate selectTbEvaluateById(Long id);

    /**
     * 查询评价列表
     *
     * @param tbEvaluate 评价
     * @return 评价集合
     */
    public List<TbEvaluate> selectTbEvaluateList(TbEvaluate tbEvaluate);

    /**
     * 新增评价
     *
     * @param tbEvaluate 评价
     * @return 结果
     */
    public int insertTbEvaluate(TbEvaluate tbEvaluate);

    /**
     * 修改评价
     *
     * @param tbEvaluate 评价
     * @return 结果
     */
    public int updateTbEvaluate(TbEvaluate tbEvaluate);

    /**
     * 批量删除评价
     *
     * @param ids 需要删除的评价主键集合
     * @return 结果
     */
    public int deleteTbEvaluateByIds(Long[] ids);

    /**
     * 删除评价信息
     *
     * @param id 评价主键
     * @return 结果
     */
    public int deleteTbEvaluateById(Long id);
}
