package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbSchoolMapper;
import com.wanou.project.system.domain.TbSchool;
import com.wanou.project.system.service.ITbSchoolService;

/**
 * 学校Service业务层处理
 *
 * @author ruoyi
 * @date 2023-12-23
 */
@Service
public class TbSchoolServiceImpl implements ITbSchoolService
{
    @Autowired
    private TbSchoolMapper tbSchoolMapper;

    /**
     * 查询学校
     *
     * @param id 学校主键
     * @return 学校
     */
    @Override
    public TbSchool selectTbSchoolById(Long id)
    {
        return tbSchoolMapper.selectTbSchoolById(id);
    }

    /**
     * 查询学校列表
     *
     * @param tbSchool 学校
     * @return 学校
     */
    @Override
    public List<TbSchool> selectTbSchoolList(TbSchool tbSchool)
    {
        return tbSchoolMapper.selectTbSchoolList(tbSchool);
    }

    /**
     * 新增学校
     *
     * @param tbSchool 学校
     * @return 结果
     */
    @Override
    public int insertTbSchool(TbSchool tbSchool)
    {
        tbSchool.setCreateTime(DateUtils.getNowDate());
        return tbSchoolMapper.insertTbSchool(tbSchool);
    }

    /**
     * 修改学校
     *
     * @param tbSchool 学校
     * @return 结果
     */
    @Override
    public int updateTbSchool(TbSchool tbSchool)
    {
        return tbSchoolMapper.updateTbSchool(tbSchool);
    }

    /**
     * 批量删除学校
     *
     * @param ids 需要删除的学校主键
     * @return 结果
     */
    @Override
    public int deleteTbSchoolByIds(Long[] ids)
    {
        return tbSchoolMapper.deleteTbSchoolByIds(ids);
    }

    /**
     * 删除学校信息
     *
     * @param id 学校主键
     * @return 结果
     */
    @Override
    public int deleteTbSchoolById(Long id)
    {
        return tbSchoolMapper.deleteTbSchoolById(id);
    }
}
