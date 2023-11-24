package com.wanou.project.applet.service;

import com.wanou.project.applet.domain.MiniUser;
import com.wanou.project.applet.domain.dto.MiniUserDto;

/**
 * @author txh
 * @date 2021/8/20 16:08
 */
public interface MiniLoginService {

    MiniUserDto weChatLogin(String code);

    MiniUserDto weChatRegister(MiniUser registerUser);
}
