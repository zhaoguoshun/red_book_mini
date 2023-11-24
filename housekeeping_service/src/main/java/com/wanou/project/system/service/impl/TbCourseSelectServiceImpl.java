package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbCourseSelectMapper;
import com.wanou.project.system.domain.TbCourseSelect;
import com.wanou.project.system.service.ITbCourseSelectService;

/**
 * 课程选择Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-19
 */
@Service
public class TbCourseSelectServiceImpl implements ITbCourseSelectService
{
    @Autowired
    private TbCourseSelectMapper tbCourseSelectMapper;

    /**
     * 查询课程选择
     *
     * @param id 课程选择主键
     * @return 课程选择
     */
    @Override
    public TbCourseSelect selectTbCourseSelectById(Long id)
    {
        return tbCourseSelectMapper.selectTbCourseSelectById(id);
    }

    /**
     * 查询课程选择列表
     *
     * @param tbCourseSelect 课程选择
     * @return 课程选择
     */
    @Override
    public List<TbCourseSelect> selectTbCourseSelectList(TbCourseSelect tbCourseSelect)
    {
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())){
            tbCourseSelect.setUserId(SecurityUtils.getUserId());
        }
        return tbCourseSelectMapper.selectTbCourseSelectList(tbCourseSelect);
    }

    /**
     * 新增课程选择
     *
     * @param tbCourseSelect 课程选择
     * @return 结果
     */
    @Override
    public int insertTbCourseSelect(TbCourseSelect tbCourseSelect)
    {
        tbCourseSelect.setCreateTime(DateUtils.getNowDate());
        tbCourseSelect.setUserId(SecurityUtils.getUserId());
        return tbCourseSelectMapper.insertTbCourseSelect(tbCourseSelect);
    }

    /**
     * 修改课程选择
     *
     * @param tbCourseSelect 课程选择
     * @return 结果
     */
    @Override
    public int updateTbCourseSelect(TbCourseSelect tbCourseSelect)
    {
        return tbCourseSelectMapper.updateTbCourseSelect(tbCourseSelect);
    }

    /**
     * 批量删除课程选择
     *
     * @param ids 需要删除的课程选择主键
     * @return 结果
     */
    @Override
    public int deleteTbCourseSelectByIds(Long[] ids)
    {
        return tbCourseSelectMapper.deleteTbCourseSelectByIds(ids);
    }

    /**
     * 删除课程选择信息
     *
     * @param id 课程选择主键
     * @return 结果
     */
    @Override
    public int deleteTbCourseSelectById(Long id)
    {
        return tbCourseSelectMapper.deleteTbCourseSelectById(id);
    }
}
