package com.wanou.project.system.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.wanou.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbMovieCollectMapper;
import com.wanou.project.system.domain.TbMovieCollect;
import com.wanou.project.system.service.ITbMovieCollectService;
import org.springframework.util.CollectionUtils;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-10-15
 */
@Service
public class TbMovieCollectServiceImpl implements ITbMovieCollectService
{
    @Autowired
    private TbMovieCollectMapper tbMovieCollectMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbMovieCollect selectTbMovieCollectById(Long id)
    {
        return tbMovieCollectMapper.selectTbMovieCollectById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbMovieCollect 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbMovieCollect> selectTbMovieCollectList(TbMovieCollect tbMovieCollect)
    {
        return tbMovieCollectMapper.selectTbMovieCollectList(tbMovieCollect);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbMovieCollect 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbMovieCollect(TbMovieCollect tbMovieCollect)
    {
        tbMovieCollect.setUserId(SecurityUtils.getUserId());
        //查询是否存在

        List<TbMovieCollect> tbMovieCollects = this.selectTbMovieCollectList(tbMovieCollect);
        if (!CollectionUtils.isEmpty(tbMovieCollects)){
            List<Long> collect = tbMovieCollects.stream().map(TbMovieCollect::getId).collect(Collectors.toList());
            return this.deleteTbMovieCollectByIds(collect);
        }
        return tbMovieCollectMapper.insertTbMovieCollect(tbMovieCollect);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbMovieCollect 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbMovieCollect(TbMovieCollect tbMovieCollect)
    {
        return tbMovieCollectMapper.updateTbMovieCollect(tbMovieCollect);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbMovieCollectByIds(List<Long> ids)
    {
        return tbMovieCollectMapper.deleteTbMovieCollectByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbMovieCollectById(Long id)
    {
        return tbMovieCollectMapper.deleteTbMovieCollectById(id);
    }
}
