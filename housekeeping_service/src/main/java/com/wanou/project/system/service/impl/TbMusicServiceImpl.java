package com.wanou.project.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbMusicMapper;
import com.wanou.project.system.domain.TbMusic;
import com.wanou.project.system.service.ITbMusicService;

/**
 * 音乐Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-01
 */
@Service
public class TbMusicServiceImpl implements ITbMusicService
{
    @Autowired
    private TbMusicMapper tbMusicMapper;

    /**
     * 查询音乐
     *
     * @param id 音乐主键
     * @return 音乐
     */
    @Override
    public TbMusic selectTbMusicById(Long id)
    {
        return tbMusicMapper.selectTbMusicById(id);
    }

    /**
     * 查询音乐列表
     *
     * @param tbMusic 音乐
     * @return 音乐
     */
    @Override
    public List<TbMusic> selectTbMusicList(TbMusic tbMusic)
    {
        return tbMusicMapper.selectTbMusicList(tbMusic);
    }

    /**
     * 新增音乐
     *
     * @param tbMusic 音乐
     * @return 结果
     */
    @Override
    public int insertTbMusic(TbMusic tbMusic)
    {
        return tbMusicMapper.insertTbMusic(tbMusic);
    }

    /**
     * 修改音乐
     *
     * @param tbMusic 音乐
     * @return 结果
     */
    @Override
    public int updateTbMusic(TbMusic tbMusic)
    {
        return tbMusicMapper.updateTbMusic(tbMusic);
    }

    /**
     * 批量删除音乐
     *
     * @param ids 需要删除的音乐主键
     * @return 结果
     */
    @Override
    public int deleteTbMusicByIds(Long[] ids)
    {
        return tbMusicMapper.deleteTbMusicByIds(ids);
    }

    /**
     * 删除音乐信息
     *
     * @param id 音乐主键
     * @return 结果
     */
    @Override
    public int deleteTbMusicById(Long id)
    {
        return tbMusicMapper.deleteTbMusicById(id);
    }
}
