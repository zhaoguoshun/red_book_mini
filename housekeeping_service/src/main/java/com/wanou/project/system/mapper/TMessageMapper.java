package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TMessage;
import com.wanou.project.system.domain.vo.MessageVO;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author ruoyi
 * @date 2023-11-13
 */
public interface TMessageMapper
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TMessage selectTMessageById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tMessage 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TMessage> selectTMessageList(TMessage tMessage);


    List<MessageVO> getMessageList(Long userId);




    List<MessageVO> getMessageListInfo(Long userId,Long acceptId);




    Long messageUnReadCount(Long sendId,Long userId);

    /**
     * 新增【请填写功能名称】
     *
     * @param tMessage 【请填写功能名称】
     * @return 结果
     */
    public int insertTMessage(TMessage tMessage);

    /**
     * 修改【请填写功能名称】
     *
     * @param tMessage 【请填写功能名称】
     * @return 结果
     */
    public int updateTMessage(TMessage tMessage);


    void readNewMessage(Long sendId,Long acceptId);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTMessageById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTMessageByIds(Long[] ids);
}
