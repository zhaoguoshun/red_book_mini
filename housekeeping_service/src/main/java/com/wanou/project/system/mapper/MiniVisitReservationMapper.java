package com.wanou.project.system.mapper;

import com.wanou.project.system.domain.MiniVisitReservation;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MiniVisitReservationMapper {
    //获取信息列表
    List<MiniVisitReservation> selectMiniVisitReservationListByVisitDeptId(@Param("visitDeptId") long visitDeptId);

    //修改用户信息
    int updateMiniVisitReservation(MiniVisitReservation miniVisitReservation);




    /**
     *
     *
     * 小程序查询接口
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     *
     * */


    /**
     * Description: 查询个人预约记录
     * @param userId: userId
     * @return:
     * @date: 2021/8/20 10:53
     */
    List<MiniVisitReservation> selectMiniVisitReservationByUserId(Long userId);




    /**
     * Description: 增加预约
     * @param miniVisitReservation: 预约信息
     * @return:
     * @date: 2021/8/20 10:55
     */
    int insertMiniVisitReservation(MiniVisitReservation miniVisitReservation);

    /**
     * 查询当前小程序用户权限下的等待审核的访客记录
     * @param userId
     * @return
     */
    List<MiniVisitReservation> selectWaitAuditByMiniUserId(Long userId);
}
