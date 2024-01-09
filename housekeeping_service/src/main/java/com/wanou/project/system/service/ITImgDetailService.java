package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TImgDetail;
import com.wanou.project.system.domain.vo.TImgDetailVO;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2023-10-28
 */
public interface ITImgDetailService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TImgDetailVO selectTImgDetailById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tImgDetail 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TImgDetail> selectTImgDetailList(TImgDetail tImgDetail);

    public List<TImgDetail> selectHotDetailList();

    public List<TImgDetail> selectByCollectId();

    /**
     * 新增【请填写功能名称】
     *
     * @param tImgDetail 【请填写功能名称】
     * @return 结果
     */
    public int insertTImgDetail(TImgDetail tImgDetail);

    /**
     * 修改【请填写功能名称】
     *
     * @param tImgDetail 【请填写功能名称】
     * @return 结果
     */
    public int updateTImgDetail(TImgDetail tImgDetail);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTImgDetailByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTImgDetailById(Long id);

    int count(Long userId);
}
