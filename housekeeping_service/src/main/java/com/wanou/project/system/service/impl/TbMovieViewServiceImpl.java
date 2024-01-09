package com.wanou.project.system.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.wanou.common.utils.SecurityUtils;
import com.wanou.common.utils.StringDecollator;
import com.wanou.project.system.domain.TbFlim;
import com.wanou.project.system.domain.vo.TbMovieViewVO;
import com.wanou.project.system.mapper.TbFlimMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbMovieViewMapper;
import com.wanou.project.system.domain.TbMovieView;
import com.wanou.project.system.service.ITbMovieViewService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author HuangXiLiang
 * @date 2022-05-02
 */
@Service
public class TbMovieViewServiceImpl implements ITbMovieViewService
{
    @Autowired
    private TbMovieViewMapper tbMovieViewMapper;

    @Autowired
    private TbFlimMapper flimMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbMovieView selectTbMovieViewById(Long id)
    {
        return tbMovieViewMapper.selectTbMovieViewById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbMovieView 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbMovieView> selectTbMovieViewList(TbMovieView tbMovieView)
    {
        return tbMovieViewMapper.selectTbMovieViewList(tbMovieView);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbMovieView 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbMovieView(TbMovieView tbMovieView)
    {
        return tbMovieViewMapper.insertTbMovieView(tbMovieView);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbMovieView 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbMovieView(TbMovieView tbMovieView)
    {
        return tbMovieViewMapper.updateTbMovieView(tbMovieView);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbMovieViewByIds(Long[] ids)
    {
        return tbMovieViewMapper.deleteTbMovieViewByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbMovieViewById(Long id)
    {
        return tbMovieViewMapper.deleteTbMovieViewById(id);
    }

    @Override
    public List<TbMovieViewVO> getTop10() {
        return tbMovieViewMapper.getTop10();
    }

    @Override
    public List<TbFlim> getLikeList() {
        Long userId = SecurityUtils.getUserId();

        if (userId == null){
            return flimMapper.getRandom();
        }
        List<TbMovieView> likeList = tbMovieViewMapper.getLikeList(SecurityUtils.getUserId());
        List<TbFlim> tbFlims = flimMapper.selectTbFlimList(new TbFlim());

        List<TbFlim> tbFlims2 = new ArrayList<>();
        if (likeList.size() != 0){
            //提取喜欢的标签
            List<String> tags = new ArrayList<>();
            likeList.forEach(x ->{
                List<String> collect = tbFlims.stream().filter(a -> a.getId().equals(x.getMovieId())).map(TbFlim::getTagId).collect(Collectors.toList());
                tags.addAll(collect);
            });

            List<String> formatting = StringDecollator.formatting(tags);

            for (String s : formatting) {
                List<TbFlim> tbFlims1 = flimMapper.getflimTags(s);
                tbFlims2.addAll(tbFlims1);
            }
        }else {
            tbFlims2=flimMapper.getRandom();
        }

        return tbFlims2;
    }
}
