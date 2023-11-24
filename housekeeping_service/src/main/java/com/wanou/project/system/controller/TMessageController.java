package com.wanou.project.system.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.wanou.framework.aspectj.lang.annotation.Log;
import com.wanou.framework.aspectj.lang.enums.BusinessType;
import com.wanou.project.system.domain.TMessage;
import com.wanou.project.system.service.ITMessageService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 *
 * @author ruoyi
 * @date 2023-11-13
 */
@RestController
@RequestMapping("/system/message")
public class TMessageController extends BaseController
{
    @Autowired
    private ITMessageService tMessageService;

    /**
     * 查询【请填写功能名称】列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TMessage tMessage)
    {
        startPage();
        List<TMessage> list = tMessageService.selectTMessageList(tMessage);
        return getDataTable(list);
    }

    @GetMapping("/getMessageInfo")
    public AjaxResult getMessageInfo(Long acceptId){

        return AjaxResult.success(tMessageService.getMessageListInfo(acceptId));
    }

    @GetMapping("/getMessage")
    public AjaxResult getMessage(){

        return AjaxResult.success(tMessageService.getMessageList());
    }


    @GetMapping("/readMessage")
    public AjaxResult readMessage(Long acceptId){
        tMessageService.readMessage(acceptId);
        return AjaxResult.success();
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TMessage tMessage)
    {
        List<TMessage> list = tMessageService.selectTMessageList(tMessage);
        ExcelUtil<TMessage> util = new ExcelUtil<TMessage>(TMessage.class);
        return util.exportExcel(list, "【请填写功能名称】数据");
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tMessageService.selectTMessageById(id));
    }

    /**
     * 新增【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TMessage tMessage)
    {
        return toAjax(tMessageService.insertTMessage(tMessage));
    }

    /**
     * 修改【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TMessage tMessage)
    {
        return toAjax(tMessageService.updateTMessage(tMessage));
    }

    /**
     * 删除【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tMessageService.deleteTMessageByIds(ids));
    }
}
