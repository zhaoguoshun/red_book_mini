package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TbChat;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-04-08
 */
public interface ITbChatService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TbChat selectTbChatById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tbChat 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TbChat> selectTbChatList(TbChat tbChat);

    /**
     * 新增【请填写功能名称】
     *
     * @param tbChat 【请填写功能名称】
     * @return 结果
     */
    public int insertTbChat(TbChat tbChat);

    /**
     * 修改【请填写功能名称】
     *
     * @param tbChat 【请填写功能名称】
     * @return 结果
     */
    public int updateTbChat(TbChat tbChat);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTbChatByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTbChatById(Long id);
}
