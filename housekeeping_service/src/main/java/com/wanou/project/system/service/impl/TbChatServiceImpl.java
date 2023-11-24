package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbChatMapper;
import com.wanou.project.system.domain.TbChat;
import com.wanou.project.system.service.ITbChatService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-08
 */
@Service
public class TbChatServiceImpl implements ITbChatService
{
    @Autowired
    private TbChatMapper tbChatMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TbChat selectTbChatById(Long id)
    {
        return tbChatMapper.selectTbChatById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbChat 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TbChat> selectTbChatList(TbChat tbChat)
    {
        return tbChatMapper.selectTbChatList(tbChat);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tbChat 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTbChat(TbChat tbChat)
    {
        tbChat.setCreateTime(DateUtils.getNowDate());
        return tbChatMapper.insertTbChat(tbChat);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tbChat 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTbChat(TbChat tbChat)
    {
        return tbChatMapper.updateTbChat(tbChat);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbChatByIds(Long[] ids)
    {
        return tbChatMapper.deleteTbChatByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTbChatById(Long id)
    {
        return tbChatMapper.deleteTbChatById(id);
    }
}
