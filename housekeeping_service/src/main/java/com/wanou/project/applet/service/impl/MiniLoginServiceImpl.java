package com.wanou.project.applet.service.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.wanou.common.component.OSS.OSSComponent;
import com.wanou.common.component.mini.WeChatComponent;
import com.wanou.common.constant.Constants;
import com.wanou.common.exception.MiniUserLoginException;
import com.wanou.common.exception.OpenIdException;
import com.wanou.common.utils.image.ImageUtil;
import com.wanou.common.utils.sign.Base64;
import com.wanou.framework.redis.RedisCache;
import com.wanou.project.applet.domain.MiniUser;
import com.wanou.project.applet.domain.dto.MiniUserDto;
import com.wanou.project.applet.factory.MiniUserFactory;
import com.wanou.project.applet.service.MiniLoginService;
import com.wanou.project.system.mapper.MiniUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author txh
 * @date 2021/8/20 16:09
 */
@Service
public class MiniLoginServiceImpl implements MiniLoginService {
    @Resource
    private WeChatComponent weChatComponent;
    @Autowired
    private MiniUserMapper miniUserMapper;
    @Resource
    private MiniUserFactory miniUserFactory;
    @Autowired
    private OSSComponent ossComponent;
    @Value("${mini.oss-head-image-prefix}")
    private String miniHeadImgPre;  //小程序用户头像oss前缀
    @Autowired
    private RedisCache redisCache;

    @Override
    public MiniUserDto weChatLogin(String code) {
        String openId = weChatComponent.getOpenIdByCode(code);
        if(StrUtil.isBlank(openId)){
            throw new OpenIdException();
        }
        MiniUser miniUserInDB = miniUserMapper.selectUserByOpenId(openId);
        if(miniUserInDB == null){
            //用户不存在 新增用户
            miniUserInDB = new MiniUser();
            miniUserInDB.setOpenId(openId);
            miniUserInDB.setRegTime(DateUtil.date());
            int insertCount = miniUserMapper.insertUser(miniUserInDB);
            if(insertCount < 1){
                return null;
            }
        }
        MiniUserDto miniUserDto = miniUserFactory.transFromMiniUser(miniUserInDB);
        //保存redis缓存
        redisCache.setObjectBoundExpire(Constants.MINI_USER_LOGIN + miniUserDto.getMiniToken(),miniUserDto,60*60*24*3); //3天过期
        return miniUserDto;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public MiniUserDto weChatRegister(MiniUser registerUser) {
        MiniUser miniUserInDB = miniUserMapper.selectUserByOpenId(registerUser.getOpenId());
        if(miniUserInDB == null){
            throw new MiniUserLoginException();
        }
        if(StrUtil.isNotBlank(miniUserInDB.getIdCard()) && StrUtil.isNotBlank(miniUserInDB.getPortrait())
        && StrUtil.isNotBlank(miniUserInDB.getPhone())){
            //已实名
            return miniUserFactory.transFromMiniUser(miniUserInDB);
        }
        //未实名

        miniUserInDB.setMName(registerUser.getMName());
        miniUserInDB.setPhone(registerUser.getPhone());
        miniUserInDB.setIdCard(registerUser.getIdCard());
        miniUserInDB.setCompanyName(registerUser.getCompanyName());
        miniUserInDB.setPosition(registerUser.getPosition());
        //上传头像数据到OSS
        String objName = miniHeadImgPre + registerUser.getOpenId() + "." + ImageUtil.checkImageBase64Format(registerUser.getPortrait());
        String[] portraitSplitArr = registerUser.getPortrait().split(",");
        if(portraitSplitArr.length > 1){
            miniUserInDB.setPortrait(portraitSplitArr[1]);
        }else {
            return null;
        }
        byte[] decode = Base64.decode(miniUserInDB.getPortrait());
        ossComponent.uploadByte(objName,decode);
        miniUserInDB.setPortrait(objName);

        int updateCount = miniUserMapper.updateMiniUser(miniUserInDB);

        if(updateCount > 0){
            MiniUserDto miniUserDto = miniUserFactory.transFromMiniUser(miniUserInDB);
            //保存redis缓存
            redisCache.setObjectBoundExpire(Constants.MINI_USER_LOGIN + miniUserDto.getMiniToken(),miniUserDto,60*60*24*3); //三天过期
            return miniUserDto;
        }
        return null;
    }
}
