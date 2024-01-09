package com.wanou.project.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.lang.UUID;
import cn.hutool.http.HttpRequest;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wanou.framework.redis.RedisCache;
import com.wanou.project.system.domain.SysDept;
import com.wanou.project.system.service.*;
import com.wanou.project.system.service.impl.SysUserServiceImpl;
import jdk.nashorn.internal.parser.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.wanou.common.constant.Constants;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.common.utils.ServletUtils;
import com.wanou.framework.security.LoginBody;
import com.wanou.framework.security.LoginUser;
import com.wanou.framework.security.service.SysLoginService;
import com.wanou.framework.security.service.SysPermissionService;
import com.wanou.framework.security.service.TokenService;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.project.system.domain.SysMenu;
import com.wanou.project.system.domain.SysUser;

/**
 * 登录验证
 *
 * @author HuangXiLiang
 */
@RestController
public class SysLoginController
{
    @Autowired
    private SysLoginService loginService;

    @Autowired
    private ISysMenuService menuService;

    @Autowired
    private SysPermissionService permissionService;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private RedisCache redisCache;

    @Autowired
    private ISysDeptService sysDeptService;

    @Autowired
    private ITImgDetailService detailService;

    @Autowired
    private ITFocusService focusService;

    @Autowired
    private ISysUserService userService;

    /**
     * 登录方法
     *
     * @param loginBody 登录信息
     * @return 结果
     */
    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginBody loginBody)
    {
        AjaxResult ajax = AjaxResult.success();
        // 生成令牌
        return loginService.login(loginBody.getUsername(), loginBody.getPassword(), loginBody.getCode(),
                loginBody.getUuid());
    }

    /**
     * 获取用户信息
     *
     * @return 用户信息
     */
    @GetMapping("getInfo")
    public AjaxResult getInfo()
    {
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        SysUser user = loginUser.getUser();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        AjaxResult ajax = AjaxResult.success();
        //获取部门(公司名称)
        SysDept dept = sysDeptService.selectDeptById(user.getDeptId());
        String ancestors = dept.getAncestors();
        String[] ancestorsSplit = ancestors.split(",");
        String enterpriseName = null;
        if(ancestorsSplit.length < 3){
            Object deptCacheObj = redisCache.getCacheMapBound(Constants.SYS_DEPT_CACHE, String.valueOf(dept.getDeptId()));
            SysDept sysDeptInCache = BeanUtil.toBean(deptCacheObj, SysDept.class);
            enterpriseName = sysDeptInCache.getDeptName();
        }else {
            Object deptCacheObj = redisCache.getCacheMapBound(Constants.SYS_DEPT_CACHE, ancestorsSplit[2]);
            SysDept sysDeptInCache = BeanUtil.toBean(deptCacheObj, SysDept.class);
            enterpriseName = sysDeptInCache.getDeptName();
        }

        ajax.put("enterprise",enterpriseName);
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        int count = detailService.count(user.getUserId());
        int focusUserCount = focusService.focus(user.getUserId());
        int quiltUserCount = focusService.focusQuiltUserId(user.getUserId());
        ajax.put("detailCount", count);
        ajax.put("focusUserCount", focusUserCount);
        ajax.put("quiltUserCount", quiltUserCount);
        return ajax;
    }

    @GetMapping("/getRevitInfo")
    public AjaxResult getRevitInfo(Long userId)
    {
        SysUser user = userService.selectUserById(userId);
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        AjaxResult ajax = AjaxResult.success();
        //获取部门(公司名称)
        SysDept dept = sysDeptService.selectDeptById(user.getDeptId());
        String ancestors = dept.getAncestors();
        String[] ancestorsSplit = ancestors.split(",");
        String enterpriseName = null;
        if(ancestorsSplit.length < 3){
            Object deptCacheObj = redisCache.getCacheMapBound(Constants.SYS_DEPT_CACHE, String.valueOf(dept.getDeptId()));
            SysDept sysDeptInCache = BeanUtil.toBean(deptCacheObj, SysDept.class);
            enterpriseName = sysDeptInCache.getDeptName();
        }else {
            Object deptCacheObj = redisCache.getCacheMapBound(Constants.SYS_DEPT_CACHE, ancestorsSplit[2]);
            SysDept sysDeptInCache = BeanUtil.toBean(deptCacheObj, SysDept.class);
            enterpriseName = sysDeptInCache.getDeptName();
        }

        ajax.put("enterprise",enterpriseName);
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        int count = detailService.count(user.getUserId());
        int focusUserCount = focusService.focus(user.getUserId());
        int quiltUserCount = focusService.focusQuiltUserId(user.getUserId());
        ajax.put("detailCount", count);
        ajax.put("focusUserCount", focusUserCount);
        ajax.put("quiltUserCount", quiltUserCount);
        return ajax;
    }


//    @GetMapping("/weiXinLogin")
//    public AjaxResult weiXinLogin(String code, String nickname, String avatar) {
//        String body = HttpRequest.get("https://api.weixin.qq.com/sns/jscode2session?appid=wx5bcc920a88f2c774&secret=d72512f44f3f279feb062a3eb6af4f32&js_code=" + code + "&grant_type=authorization_code").execute().body();
//        JSONObject jsonObject = JSON.parseObject(body);
//        String openid = (String) jsonObject.get("openid");
//        SysUser user = userService.getUserByOpenId(openid);
//
//        if (user == null) {
//            SysUser sysUser = new SysUser();
//            sysUser.setUserName(UUID.randomUUID().toString());
//            sysUser.setNickName(nickname);
//            sysUser.setAvatar(avatar);
//            sysUser.setPassword(SecurityUtils.encryptPassword("123456"));
//            sysUser.setOpenId(openid);
//            userService.insertUser(sysUser);
//            user = sysUser;
//        }
//        return loginService.login(user.getUserName(), "123456", null, null);
//    }






    /**
     * 获取路由信息
     *
     * @return 路由信息
     */
    @GetMapping("getRouters")
    public AjaxResult getRouters()
    {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuTreeByUserId(userId);
        return AjaxResult.success(menuService.buildMenus(menus));
    }

    @GetMapping("/isAdmin")
    public AjaxResult isAdmin(){
        Long userId = SecurityUtils.getUserId();

        if (userId == null){
            return AjaxResult.success(false);
        }
        return AjaxResult.success(true);
    }
}
