package com.wanou.project.system.service;

import java.util.List;
import com.wanou.project.system.domain.TFocus;
import com.wanou.project.system.domain.vo.TFocusDetailVO;
import com.wanou.project.system.domain.vo.ThumbsVo;

/**
 * 关注Service接口
 *
 * @author ruoyi
 * @date 2023-11-02
 */
public interface ITFocusService
{
    /**
     * 查询关注
     *
     * @param id 关注主键
     * @return 关注
     */
    public TFocus selectTFocusById(Long id);

    /**
     * 查询关注列表
     *
     * @param tFocus 关注
     * @return 关注集合
     */
    public List<TFocus> selectTFocusList(TFocus tFocus);


    List<TFocusDetailVO> getFocus(Long userId);

    List<ThumbsVo> getFocusMy();

    Boolean isFollow(Long userId,Long fUserId);

    /**
     * 新增关注
     *
     * @param tFocus 关注
     * @return 结果
     */
    public int insertTFocus(TFocus tFocus);

    /**
     * 修改关注
     *
     * @param tFocus 关注
     * @return 结果
     */
    public int updateTFocus(TFocus tFocus);

    /**
     * 批量删除关注
     *
     * @param ids 需要删除的关注主键集合
     * @return 结果
     */
    public int deleteTFocusByIds(Long[] ids);

    /**
     * 删除关注信息
     *
     * @param id 关注主键
     * @return 结果
     */
    public int deleteTFocusById(Long id);

    /**
     * 查询关注多少人
     * @param userId
     * @return int
     */
    int focus(Long userId);

    /**
     * @param userId
     * @return int
     */
    int focusQuiltUserId(Long userId);
}
