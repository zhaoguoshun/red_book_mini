package com.wanou.project.applet.factory;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wanou.common.component.mini.AesSecretComponent;
import com.wanou.project.applet.domain.MiniUser;
import com.wanou.project.applet.domain.dto.MiniUserDto;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author txh
 * @date 2021/8/20 17:26
 * 小程序用户工厂类
 */
@Component
public class MiniUserFactory {
    @Resource
    private ObjectMapper objectMapper;
    @Resource
    private AesSecretComponent aesSecretComponent;

    /**
     * 将持久化实体转化为Dto
     *
     * @param miniUser 持久化实体
     * @return dto
     */
    public MiniUserDto transFromMiniUser(MiniUser miniUser) {
        if (miniUser == null) return null;
        MiniUserDto dto = new MiniUserDto();
        dto.setPhone(miniUser.getPhone());
        dto.setPortrait(miniUser.getPortrait());
        dto.setMName(miniUser.getMName());
        dto.setOpenId(miniUser.getOpenId());
        dto.setMiniToken(getToken(miniUser.getId(),miniUser.getOpenId()));
        dto.setAuthenticated(!StringUtils.isEmpty(miniUser.getIdCard()) && !StringUtils.isEmpty(miniUser.getMName()));
        dto.setIsAuditor(miniUser.getIsAuditor());
        return dto;
    }


    /**
     * 加密获取令牌
     *
     * @param openId   openId
     * @return 令牌
     */
    private String getToken(Long userId,String openId) {
        try {
            Map info = new HashMap();
            info.put("id",userId);
            info.put("openId", openId);
            String infoStr = objectMapper.writeValueAsString(info);
            return aesSecretComponent.encrypt(infoStr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
