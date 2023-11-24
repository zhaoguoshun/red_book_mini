package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.TbCourse;
import com.wanou.project.system.domain.TbJiaolian;
import com.wanou.project.system.service.ITbCourseService;
import com.wanou.project.system.service.ITbJiaolianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbEvaluateMapper;
import com.wanou.project.system.domain.TbEvaluate;
import com.wanou.project.system.service.ITbEvaluateService;

/**
 * 评价Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-25
 */
@Service
public class TbEvaluateServiceImpl implements ITbEvaluateService
{
    @Autowired
    private TbEvaluateMapper tbEvaluateMapper;

    @Autowired
    private ITbJiaolianService jiaolianService;

    @Autowired
    private ITbCourseService courseService;

    /**
     * 查询评价
     *
     * @param id 评价主键
     * @return 评价
     */
    @Override
    public TbEvaluate selectTbEvaluateById(Long id)
    {
        return tbEvaluateMapper.selectTbEvaluateById(id);
    }

    /**
     * 查询评价列表
     *
     * @param tbEvaluate 评价
     * @return 评价
     */
    @Override
    public List<TbEvaluate> selectTbEvaluateList(TbEvaluate tbEvaluate) {

        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbEvaluate.setUserId(SecurityUtils.getUserId());
        }

        List<TbEvaluate> tbEvaluates = tbEvaluateMapper.selectTbEvaluateList(tbEvaluate);
        tbEvaluates.forEach(item -> {
            if (item.getType() == null){
                return;
            }
            if (item.getType() == 1) {
                TbCourse tbCourse = courseService.selectTbCourseById(item.getCommonId());
                if (tbCourse != null){
                    item.setCommonName(tbCourse.getTitle());
                }
            } else {
                TbJiaolian tbJiaolian = jiaolianService.selectTbJiaolianById(item.getCommonId());

                if (tbJiaolian != null){
                    item.setCommonName(tbJiaolian.getName());
                }
            }
        });
        return tbEvaluates;
    }

    /**
     * 新增评价
     *
     * @param tbEvaluate 评价
     * @return 结果
     */
    @Override
    public int insertTbEvaluate(TbEvaluate tbEvaluate)
    {
        tbEvaluate.setCreateTime(DateUtils.getNowDate());
        tbEvaluate.setUserId(SecurityUtils.getUserId());
        return tbEvaluateMapper.insertTbEvaluate(tbEvaluate);
    }

    /**
     * 修改评价
     *
     * @param tbEvaluate 评价
     * @return 结果
     */
    @Override
    public int updateTbEvaluate(TbEvaluate tbEvaluate)
    {
        return tbEvaluateMapper.updateTbEvaluate(tbEvaluate);
    }

    /**
     * 批量删除评价
     *
     * @param ids 需要删除的评价主键
     * @return 结果
     */
    @Override
    public int deleteTbEvaluateByIds(Long[] ids)
    {
        return tbEvaluateMapper.deleteTbEvaluateByIds(ids);
    }

    /**
     * 删除评价信息
     *
     * @param id 评价主键
     * @return 结果
     */
    @Override
    public int deleteTbEvaluateById(Long id)
    {
        return tbEvaluateMapper.deleteTbEvaluateById(id);
    }
}
