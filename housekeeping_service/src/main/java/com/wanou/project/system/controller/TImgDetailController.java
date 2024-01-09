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
import com.wanou.project.system.domain.TImgDetail;
import com.wanou.project.system.service.ITImgDetailService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 *
 * @author ruoyi
 * @date 2023-10-28
 */
@RestController
@RequestMapping("/system/detail")
public class TImgDetailController extends BaseController
{
    @Autowired
    private ITImgDetailService tImgDetailService;

    /**
     * 查询【请填写功能名称】列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TImgDetail tImgDetail)
    {
        startPage();
        List<TImgDetail> list = tImgDetailService.selectTImgDetailList(tImgDetail);
        return getDataTable(list);
    }

    @GetMapping("/getImgByCollect")
    public AjaxResult getImgByCollect(){
        return AjaxResult.success(tImgDetailService.selectByCollectId());
    }

    @GetMapping("/getHotList")
    public AjaxResult getHotList() {
        return AjaxResult.success(tImgDetailService.selectHotDetailList());
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TImgDetail tImgDetail)
    {
        List<TImgDetail> list = tImgDetailService.selectTImgDetailList(tImgDetail);
        ExcelUtil<TImgDetail> util = new ExcelUtil<TImgDetail>(TImgDetail.class);
        return util.exportExcel(list, "【请填写功能名称】数据");
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tImgDetailService.selectTImgDetailById(id));
    }

    /**
     * 新增【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TImgDetail tImgDetail)
    {
        return toAjax(tImgDetailService.insertTImgDetail(tImgDetail));
    }

    /**
     * 修改【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TImgDetail tImgDetail)
    {
        return toAjax(tImgDetailService.updateTImgDetail(tImgDetail));
    }

    /**
     * 删除【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tImgDetailService.deleteTImgDetailByIds(ids));
    }
}
