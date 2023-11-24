package com.wanou.project.system.mapper;

import com.wanou.project.applet.domain.MiniUser;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MiniUserMapper {
    //获取注册信息列表
    List<MiniUser> listMiniUserInfo();

    //修改当前用户
    int updateMiniUser(MiniUser miniUser);

    //删除当前用户
    int deleteMiniUserById(long id);



    /**
     *
     *
     *
     *
     * 小程序端接口
     *
     *
     *
     * */

    /**
     * Description: 插入用户
     * @param miniUser: 插入用户信息
     * @return: 返回插入信息
     * @date: 2021/8/18 15:15
     */
    public int insertUser(MiniUser miniUser);


    /**
     * Description: 根据微信Id查询用户
     * @param openId: 微信Id
     * @return:
     */
    public MiniUser selectUserByOpenId(String openId);

    /**
     * 根据用户id获取用户信息
     * @param userId
     * @return
     */
    MiniUser selectUserByUserId(Long userId);
}
