package com.wanou.project.system.service.impl;

import java.util.List;

import cn.hutool.core.bean.BeanUtil;
import com.alibaba.fastjson.JSON;
import com.wanou.common.utils.SecurityUtils;
import com.wanou.project.system.domain.SysUser;
import com.wanou.project.system.domain.TDetailCollect;
import com.wanou.project.system.domain.TThumbs;
import com.wanou.project.system.domain.vo.TImgDetailVO;
import com.wanou.project.system.mapper.SysUserMapper;
import com.wanou.project.system.mapper.TDetailCollectMapper;
import com.wanou.project.system.mapper.TThumbsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wanou.project.system.mapper.TImgDetailMapper;
import com.wanou.project.system.domain.TImgDetail;
import com.wanou.project.system.service.ITImgDetailService;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2023-10-28
 */
@Service
public class TImgDetailServiceImpl implements ITImgDetailService {
    @Autowired
    private TImgDetailMapper tImgDetailMapper;

    @Autowired
    private TDetailCollectMapper tDetailCollectMapper;

    @Autowired
    private TThumbsMapper thumbsMapper;

    @Autowired
    private SysUserMapper userMapper;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TImgDetailVO selectTImgDetailById(Long id) {
        TImgDetail tImgDetail = tImgDetailMapper.selectTImgDetailById(id);
        TImgDetailVO tImgDetailVO = BeanUtil.copyProperties(tImgDetail, TImgDetailVO.class);

        List<String> imgList = JSON.parseArray(tImgDetail.getImgsUrl(), String.class);
        tImgDetailVO.setImgsUrl(imgList);

        //浏览量增加1
        tImgDetail.setViewCount(tImgDetail.getViewCount() + 1);
        updateTImgDetail(tImgDetail);

        //查询收藏的数量
        TDetailCollect tDetailCollect = new TDetailCollect();
        tDetailCollect.setDetailId(id);
        List<TDetailCollect> tDetailCollects = tDetailCollectMapper.selectTDetailCollectList(tDetailCollect);
        tImgDetailVO.setCollectionCount((long) tDetailCollects.size());

        TThumbs tThumbs = new TThumbs();
        tThumbs.setDetailId(id);
        List<TThumbs> tThumbs1 = thumbsMapper.selectTThumbsList(tThumbs);
        tImgDetailVO.setAgreeCount((long) tThumbs1.size());

        SysUser sysUser = userMapper.selectUserById(tImgDetail.getUserId());
        if (sysUser != null) {
            tImgDetailVO.setUser(sysUser);
            tImgDetailVO.setUsername(sysUser.getNickName());
            tImgDetailVO.setAvatar("http://localhost:8083" + sysUser.getAvatar());
        }

        return tImgDetailVO;
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tImgDetail 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TImgDetail> selectTImgDetailList(TImgDetail tImgDetail) {
        List<TImgDetail> tImgDetails = tImgDetailMapper.selectTImgDetailList(tImgDetail);
        for (TImgDetail imgDetail : tImgDetails) {
            TDetailCollect tDetailCollect = new TDetailCollect();
            tDetailCollect.setDetailId(imgDetail.getId());
            List<TDetailCollect> tDetailCollects = tDetailCollectMapper.selectTDetailCollectList(tDetailCollect);
            imgDetail.setAgreeCount((long) tDetailCollects.size());
            SysUser sysUser = userMapper.selectUserById(imgDetail.getUserId());
            if (sysUser != null) {
                imgDetail.setUsername(sysUser.getNickName());
                imgDetail.setAvatar("http://localhost:8083" + sysUser.getAvatar());
            }
        }
        return tImgDetails;
    }

    public List<TImgDetail> selectHotDetailList() {
        List<TImgDetail> tImgDetails = tImgDetailMapper.selectTImgDetailHostList();
        for (TImgDetail imgDetail : tImgDetails) {
            TDetailCollect tDetailCollect = new TDetailCollect();
            tDetailCollect.setDetailId(imgDetail.getId());
            List<TDetailCollect> tDetailCollects = tDetailCollectMapper.selectTDetailCollectList(tDetailCollect);
            imgDetail.setAgreeCount((long) tDetailCollects.size());
        }
        return tImgDetails;
    }

    @Override
    public List<TImgDetail> selectByCollectId() {
        Long userId = SecurityUtils.getUserId();

        return tImgDetailMapper.selectCollectByUserId(userId);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param tImgDetail 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTImgDetail(TImgDetail tImgDetail) {
        tImgDetail.setUserId(SecurityUtils.getUserId());
        return tImgDetailMapper.insertTImgDetail(tImgDetail);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param tImgDetail 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTImgDetail(TImgDetail tImgDetail) {
        return tImgDetailMapper.updateTImgDetail(tImgDetail);
    }

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTImgDetailByIds(Long[] ids) {
        return tImgDetailMapper.deleteTImgDetailByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTImgDetailById(Long id) {
        return tImgDetailMapper.deleteTImgDetailById(id);
    }

    @Override
    public int count(Long userId) {
        return tImgDetailMapper.detailCount(userId);
    }
}
