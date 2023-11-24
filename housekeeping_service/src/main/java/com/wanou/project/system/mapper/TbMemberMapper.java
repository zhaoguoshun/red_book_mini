package com.wanou.project.system.mapper;

import java.util.List;
import com.wanou.project.system.domain.TbMember;

/**
 * 会员Mapper接口
 *
 * @author ruoyi
 * @date 2023-04-24
 */
public interface TbMemberMapper
{
    /**
     * 查询会员
     *
     * @param id 会员主键
     * @return 会员
     */
    public TbMember selectTbMemberById(Long id);

    /**
     * 查询会员列表
     *
     * @param tbMember 会员
     * @return 会员集合
     */
    public List<TbMember> selectTbMemberList(TbMember tbMember);

    /**
     * 新增会员
     *
     * @param tbMember 会员
     * @return 结果
     */
    public int insertTbMember(TbMember tbMember);

    /**
     * 修改会员
     *
     * @param tbMember 会员
     * @return 结果
     */
    public int updateTbMember(TbMember tbMember);

    /**
     * 删除会员
     *
     * @param id 会员主键
     * @return 结果
     */
    public int deleteTbMemberById(Long id);

    /**
     * 批量删除会员
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTbMemberByIds(Long[] ids);
}
