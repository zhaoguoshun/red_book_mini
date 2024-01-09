package com.wanou.project.system.service.impl;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import com.google.common.collect.Lists;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.SysUser;
import com.wanou.project.system.domain.vo.MessageVO;
import com.wanou.project.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TMessageMapper;
import com.wanou.project.system.domain.TMessage;
import com.wanou.project.system.service.ITMessageService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-11-13
 */
@Service
public class TMessageServiceImpl implements ITMessageService
{
    @Autowired
    private TMessageMapper tMessageMapper;

    @Autowired
    private ISysUserService userService;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TMessage selectTMessageById(Long id)
    {
        return tMessageMapper.selectTMessageById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tMessage 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TMessage> selectTMessageList(TMessage tMessage)
    {
        return tMessageMapper.selectTMessageList(tMessage);
    }

    @Override
    public List<MessageVO> getMessageListInfo(Long acceptId) {
        Long userId = SecurityUtils.getUserId();
        List<MessageVO> messageListInfo = tMessageMapper.getMessageListInfo(userId, acceptId);
        for (MessageVO messageVO : messageListInfo) {
            SysUser sysUser = userService.selectUserById(messageVO.getSendId());
            if (sysUser != null) {
                messageVO.setAvatar(sysUser.getAvatar());
                messageVO.setNickname(sysUser.getNickName());
                messageVO.setUserId(sysUser.getUserId());
            }
        }
        return messageListInfo;
    }

    @Override
    public List<MessageVO> getMessageList() {
        Long userId = SecurityUtils.getUserId();
        //查询出我发送的或者发送给我的
        List<MessageVO> messageList = tMessageMapper.getMessageList(userId);

        List<MessageVO> messages = Lists.newArrayList();
        for (MessageVO messageVO : messageList) {
            SysUser sysUser;
            if (messageVO.getSendId().equals(userId)) {
                sysUser = userService.selectUserById(messageVO.getAcceptId());
            } else {
                sysUser = userService.selectUserById(messageVO.getSendId());
            }
            if (sysUser != null) {
                messageVO.setAvatar(sysUser.getAvatar());
                messageVO.setNickname(sysUser.getNickName());
                messageVO.setUserId(sysUser.getUserId());
                if (messages.stream().noneMatch(a -> a.getUserId().equals(sysUser.getUserId()))) {
                    messages.add(messageVO);
                }
            }
            //查询数量总数
            Long count = tMessageMapper.messageUnReadCount(messageVO.getUserId(), userId);
            messageVO.setCount(count);
        }
        return messages;
    }

    @Override
    public void readMessage(Long acceptId) {
        Long userId = SecurityUtils.getUserId();
        tMessageMapper.readNewMessage(acceptId,userId);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tMessage 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTMessage(TMessage tMessage)
    {
        tMessage.setCreateDate(new Date());
        tMessage.setSendId(SecurityUtils.getUserId());
        return tMessageMapper.insertTMessage(tMessage);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tMessage 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTMessage(TMessage tMessage)
    {
        return tMessageMapper.updateTMessage(tMessage);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTMessageByIds(Long[] ids)
    {
        return tMessageMapper.deleteTMessageByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTMessageById(Long id)
    {
        return tMessageMapper.deleteTMessageById(id);
    }
}
