package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbQicaiMapper;
import com.wanou.project.system.domain.TbQicai;
import com.wanou.project.system.service.ITbQicaiService;

/**
 * 器材Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbQicaiServiceImpl implements ITbQicaiService
{
    @Autowired
    private TbQicaiMapper tbQicaiMapper;

    /**
     * 查询器材
     *
     * @param id 器材主键
     * @return 器材
     */
    @Override
    public TbQicai selectTbQicaiById(Long id)
    {
        return tbQicaiMapper.selectTbQicaiById(id);
    }

    /**
     * 查询器材列表
     *
     * @param tbQicai 器材
     * @return 器材
     */
    @Override
    public List<TbQicai> selectTbQicaiList(TbQicai tbQicai)
    {
        return tbQicaiMapper.selectTbQicaiList(tbQicai);
    }

    /**
     * 新增器材
     *
     * @param tbQicai 器材
     * @return 结果
     */
    @Override
    public int insertTbQicai(TbQicai tbQicai)
    {
        tbQicai.setCreateTime(DateUtils.getNowDate());
        return tbQicaiMapper.insertTbQicai(tbQicai);
    }

    /**
     * 修改器材
     *
     * @param tbQicai 器材
     * @return 结果
     */
    @Override
    public int updateTbQicai(TbQicai tbQicai)
    {
        return tbQicaiMapper.updateTbQicai(tbQicai);
    }

    /**
     * 批量删除器材
     *
     * @param ids 需要删除的器材主键
     * @return 结果
     */
    @Override
    public int deleteTbQicaiByIds(Long[] ids)
    {
        return tbQicaiMapper.deleteTbQicaiByIds(ids);
    }

    /**
     * 删除器材信息
     *
     * @param id 器材主键
     * @return 结果
     */
    @Override
    public int deleteTbQicaiById(Long id)
    {
        return tbQicaiMapper.deleteTbQicaiById(id);
    }
}
