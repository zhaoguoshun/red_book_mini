package com.wanou.project.system.service;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbHonorMapper;
import com.wanou.project.system.domain.TbHonor;
import com.wanou.project.system.service.ITbHonorService;

/**
 * 荣誉Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-02
 */
@Service
public class TbHonorServiceImpl implements ITbHonorService
{
    @Autowired
    private TbHonorMapper tbHonorMapper;

    /**
     * 查询荣誉
     *
     * @param id 荣誉主键
     * @return 荣誉
     */
    @Override
    public TbHonor selectTbHonorById(Long id)
    {
        return tbHonorMapper.selectTbHonorById(id);
    }

    /**
     * 查询荣誉列表
     *
     * @param tbHonor 荣誉
     * @return 荣誉
     */
    @Override
    public List<TbHonor> selectTbHonorList(TbHonor tbHonor)
    {
        return tbHonorMapper.selectTbHonorList(tbHonor);
    }

    /**
     * 新增荣誉
     *
     * @param tbHonor 荣誉
     * @return 结果
     */
    @Override
    public int insertTbHonor(TbHonor tbHonor)
    {
        tbHonor.setCreateTime(DateUtils.getNowDate());
        return tbHonorMapper.insertTbHonor(tbHonor);
    }

    /**
     * 修改荣誉
     *
     * @param tbHonor 荣誉
     * @return 结果
     */
    @Override
    public int updateTbHonor(TbHonor tbHonor)
    {
        return tbHonorMapper.updateTbHonor(tbHonor);
    }

    /**
     * 批量删除荣誉
     *
     * @param ids 需要删除的荣誉主键
     * @return 结果
     */
    @Override
    public int deleteTbHonorByIds(Long[] ids)
    {
        return tbHonorMapper.deleteTbHonorByIds(ids);
    }

    /**
     * 删除荣誉信息
     *
     * @param id 荣誉主键
     * @return 结果
     */
    @Override
    public int deleteTbHonorById(Long id)
    {
        return tbHonorMapper.deleteTbHonorById(id);
    }
}
