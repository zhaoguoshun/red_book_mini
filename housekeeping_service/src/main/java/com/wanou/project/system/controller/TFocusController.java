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
import com.wanou.project.system.domain.TFocus;
import com.wanou.project.system.service.ITFocusService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 关注Controller
 *
 * @author ruoyi
 * @date 2023-11-02
 */
@RestController
@RequestMapping("/system/focus")
public class TFocusController extends BaseController
{
    @Autowired
    private ITFocusService tFocusService;

    /**
     * 查询关注列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TFocus tFocus)
    {
        startPage();
        List<TFocus> list = tFocusService.selectTFocusList(tFocus);
        return getDataTable(list);
    }

    @GetMapping("/getFocus")
    public AjaxResult getFocus(Long userId){
        return AjaxResult.success(tFocusService.getFocus(userId));
    }


    @GetMapping("/getFocusMy")
    public AjaxResult getFocusMy() {
        return AjaxResult.success(tFocusService.getFocusMy());
    }


    @GetMapping("/isFollow")
    public AjaxResult isFollow(Long userId,Long fUserId){
        return AjaxResult.success(tFocusService.isFollow(userId,fUserId));
    }


    /**
     * 导出关注列表
     */
    @Log(title = "关注", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TFocus tFocus)
    {
        List<TFocus> list = tFocusService.selectTFocusList(tFocus);
        ExcelUtil<TFocus> util = new ExcelUtil<TFocus>(TFocus.class);
        return util.exportExcel(list, "关注数据");
    }

    /**
     * 获取关注详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tFocusService.selectTFocusById(id));
    }

    /**
     * 新增关注
     */
    @Log(title = "关注", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TFocus tFocus)
    {
        return toAjax(tFocusService.insertTFocus(tFocus));
    }

    /**
     * 修改关注
     */
    @Log(title = "关注", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TFocus tFocus)
    {
        return toAjax(tFocusService.updateTFocus(tFocus));
    }

    /**
     * 删除关注
     */
    @Log(title = "关注", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tFocusService.deleteTFocusByIds(ids));
    }
}
