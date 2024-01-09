package com.wanou.project.system.converter;

import com.wanou.project.system.domain.vo.TxDevicesVo;
import com.wanou.project.system.domain.vo.TxDevicesVoPage;
import org.springframework.stereotype.Component;

/**
 * @program: wanou
 * @description: guoshun
 * @author: guoshun
 * @create: 2021/09/02 14:41
 **/
@Component
public class TxDevicesConverter {


    public TxDevicesVo converter(TxDevicesVoPage txDevicesVoPage){
        TxDevicesVo txDevicesVo = new TxDevicesVo();
        txDevicesVo.setDeptId(txDevicesVoPage.getDeptId());
        txDevicesVo.setLocation(txDevicesVoPage.getLocation());
        txDevicesVo.setStats(txDevicesVoPage.getStats());
        return txDevicesVo;
    }

}
