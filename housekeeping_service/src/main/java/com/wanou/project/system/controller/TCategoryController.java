package com.wanou.project.system.controller;

import java.util.List;
import org.springframework.security.access.prepost.PreAuthorize;
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
import com.wanou.project.system.domain.TCategory;
import com.wanou.project.system.service.ITCategoryService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 分类Controller
 *
 * @author ruoyi
 * @date 2023-10-29
 */
@RestController
@RequestMapping("/system/category")
public class TCategoryController extends BaseController
{
    @Autowired
    private ITCategoryService tCategoryService;

    /**
     * 查询分类列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TCategory tCategory)
    {
        startPage();
        List<TCategory> list = tCategoryService.selectTCategoryList(tCategory);
        return getDataTable(list);
    }

    /**
     * 导出分类列表
     */
    @Log(title = "分类", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TCategory tCategory)
    {
        List<TCategory> list = tCategoryService.selectTCategoryList(tCategory);
        ExcelUtil<TCategory> util = new ExcelUtil<TCategory>(TCategory.class);
        return util.exportExcel(list, "分类数据");
    }

    /**
     * 获取分类详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tCategoryService.selectTCategoryById(id));
    }

    /**
     * 新增分类
     */
    @Log(title = "分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TCategory tCategory)
    {
        return toAjax(tCategoryService.insertTCategory(tCategory));
    }

    /**
     * 修改分类
     */
    @Log(title = "分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TCategory tCategory)
    {
        return toAjax(tCategoryService.updateTCategory(tCategory));
    }

    /**
     * 删除分类
     */
    @Log(title = "分类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tCategoryService.deleteTCategoryByIds(ids));
    }
}
