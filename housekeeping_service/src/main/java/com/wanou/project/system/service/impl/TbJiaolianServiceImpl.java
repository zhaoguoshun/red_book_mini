package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbJiaolianMapper;
import com.wanou.project.system.domain.TbJiaolian;
import com.wanou.project.system.service.ITbJiaolianService;

/**
 * 教练管理Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-25
 */
@Service
public class TbJiaolianServiceImpl implements ITbJiaolianService
{
    @Autowired
    private TbJiaolianMapper tbJiaolianMapper;

    /**
     * 查询教练管理
     *
     * @param id 教练管理主键
     * @return 教练管理
     */
    @Override
    public TbJiaolian selectTbJiaolianById(Long id)
    {
        return tbJiaolianMapper.selectTbJiaolianById(id);
    }

    /**
     * 查询教练管理列表
     *
     * @param tbJiaolian 教练管理
     * @return 教练管理
     */
    @Override
    public List<TbJiaolian> selectTbJiaolianList(TbJiaolian tbJiaolian)
    {
        return tbJiaolianMapper.selectTbJiaolianList(tbJiaolian);
    }

    /**
     * 新增教练管理
     *
     * @param tbJiaolian 教练管理
     * @return 结果
     */
    @Override
    public int insertTbJiaolian(TbJiaolian tbJiaolian)
    {
        tbJiaolian.setCreateTime(DateUtils.getNowDate());
        return tbJiaolianMapper.insertTbJiaolian(tbJiaolian);
    }

    /**
     * 修改教练管理
     *
     * @param tbJiaolian 教练管理
     * @return 结果
     */
    @Override
    public int updateTbJiaolian(TbJiaolian tbJiaolian)
    {
        return tbJiaolianMapper.updateTbJiaolian(tbJiaolian);
    }

    /**
     * 批量删除教练管理
     *
     * @param ids 需要删除的教练管理主键
     * @return 结果
     */
    @Override
    public int deleteTbJiaolianByIds(Long[] ids)
    {
        return tbJiaolianMapper.deleteTbJiaolianByIds(ids);
    }

    /**
     * 删除教练管理信息
     *
     * @param id 教练管理主键
     * @return 结果
     */
    @Override
    public int deleteTbJiaolianById(Long id)
    {
        return tbJiaolianMapper.deleteTbJiaolianById(id);
    }
}
