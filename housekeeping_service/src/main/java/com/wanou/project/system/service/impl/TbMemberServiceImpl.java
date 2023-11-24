package com.wanou.project.system.service.impl;

import java.util.List;
import com.wanou.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TbMemberMapper;
import com.wanou.project.system.domain.TbMember;
import com.wanou.project.system.service.ITbMemberService;

/**
 * 会员Service业务层处理
 *
 * @author ruoyi
 * @date 2023-04-24
 */
@Service
public class TbMemberServiceImpl implements ITbMemberService
{
    @Autowired
    private TbMemberMapper tbMemberMapper;

    /**
     * 查询会员
     *
     * @param id 会员主键
     * @return 会员
     */
    @Override
    public TbMember selectTbMemberById(Long id)
    {
        return tbMemberMapper.selectTbMemberById(id);
    }

    /**
     * 查询会员列表
     *
     * @param tbMember 会员
     * @return 会员
     */
    @Override
    public List<TbMember> selectTbMemberList(TbMember tbMember)
    {
        return tbMemberMapper.selectTbMemberList(tbMember);
    }

    /**
     * 新增会员
     *
     * @param tbMember 会员
     * @return 结果
     */
    @Override
    public int insertTbMember(TbMember tbMember)
    {
        tbMember.setCreateTime(DateUtils.getNowDate());
        return tbMemberMapper.insertTbMember(tbMember);
    }

    /**
     * 修改会员
     *
     * @param tbMember 会员
     * @return 结果
     */
    @Override
    public int updateTbMember(TbMember tbMember)
    {
        return tbMemberMapper.updateTbMember(tbMember);
    }

    /**
     * 批量删除会员
     *
     * @param ids 需要删除的会员主键
     * @return 结果
     */
    @Override
    public int deleteTbMemberByIds(Long[] ids)
    {
        return tbMemberMapper.deleteTbMemberByIds(ids);
    }

    /**
     * 删除会员信息
     *
     * @param id 会员主键
     * @return 结果
     */
    @Override
    public int deleteTbMemberById(Long id)
    {
        return tbMemberMapper.deleteTbMemberById(id);
    }
}
