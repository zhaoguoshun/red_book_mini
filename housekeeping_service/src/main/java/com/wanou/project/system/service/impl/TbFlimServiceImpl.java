package com.wanou.project.system.service.impl;

import java.util.List;

import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.TbMovieCollect;
import com.wanou.project.system.domain.TbMovieView;
import com.wanou.project.system.mapper.TbMovieViewMapper;
import com.wanou.project.system.service.ITbMovieCollectService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbFlimMapper;
import com.wanou.project.system.domain.TbFlim;
import com.wanou.project.system.service.ITbFlimService;
import org.springframework.util.CollectionUtils;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-04-29
 */
@Service
@RequiredArgsConstructor
public class TbFlimServiceImpl implements ITbFlimService
{
    private final TbFlimMapper tbFlimMapper;

    private final TbMovieViewMapper tbMovieViewMapper;

    private final ITbMovieCollectService collectService;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbFlim selectTbFlimById(Long id)
    {
        TbFlim tbFlim = tbFlimMapper.selectTbFlimById(id);
        TbMovieView tbMovieView = new TbMovieView();
        tbMovieView.setMovieId(id);
        tbMovieView.setUserId(SecurityUtils.getUserId());
        tbMovieView.setMovieName(tbFlim.getTitle());
        tbMovieViewMapper.insertTbMovieView(tbMovieView);

        TbMovieCollect tbMovieCollect = new TbMovieCollect();
        tbMovieCollect.setUserId(SecurityUtils.getUserId());
        tbMovieCollect.setMovieId(id);
        List<TbMovieCollect> tbMovieCollects = collectService.selectTbMovieCollectList(tbMovieCollect);
        tbFlim.setIsCollect(0);
        if (!CollectionUtils.isEmpty(tbMovieCollects)){
            tbFlim.setIsCollect(1);
        }
        return tbFlim;
    }

    @Override
    public List<TbFlim> selectTbFilmRateTop() {
        return tbFlimMapper.selectFilmByRateTop();
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbFlim 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbFlim> selectTbFlimList(TbFlim tbFlim)
    {
        return tbFlimMapper.selectTbFlimList(tbFlim);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbFlim 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbFlim(TbFlim tbFlim)
    {
        return tbFlimMapper.insertTbFlim(tbFlim);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbFlim 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbFlim(TbFlim tbFlim)
    {
        return tbFlimMapper.updateTbFlim(tbFlim);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbFlimByIds(Long[] ids)
    {
        return tbFlimMapper.deleteTbFlimByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbFlimById(Long id)
    {
        return tbFlimMapper.deleteTbFlimById(id);
    }

    @Override
    public List<TbFlim> queryFilmByCollect() {
        return tbFlimMapper.selectFilmByCollectCount();
    }
}
