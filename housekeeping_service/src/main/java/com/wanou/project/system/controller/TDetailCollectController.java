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
import com.wanou.project.system.domain.TDetailCollect;
import com.wanou.project.system.service.ITDetailCollectService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 作品收藏Controller
 *
 * @author ruoyi
 * @date 2023-10-29
 */
@RestController
@RequestMapping("/system/collect")
public class TDetailCollectController extends BaseController
{
    @Autowired
    private ITDetailCollectService tDetailCollectService;

    /**
     * 查询作品收藏列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TDetailCollect tDetailCollect)
    {
        startPage();
        List<TDetailCollect> list = tDetailCollectService.selectTDetailCollectList(tDetailCollect);
        return getDataTable(list);
    }


    @GetMapping("/isCollect")
    public AjaxResult isCollect(Long detailId, Long userId) {
        return AjaxResult.success(tDetailCollectService.isCollect(detailId, userId));
    }

    /**
     * 导出作品收藏列表
     */
    @Log(title = "作品收藏", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TDetailCollect tDetailCollect)
    {
        List<TDetailCollect> list = tDetailCollectService.selectTDetailCollectList(tDetailCollect);
        ExcelUtil<TDetailCollect> util = new ExcelUtil<TDetailCollect>(TDetailCollect.class);
        return util.exportExcel(list, "作品收藏数据");
    }

    /**
     * 获取作品收藏详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tDetailCollectService.selectTDetailCollectById(id));
    }

    /**
     * 新增作品收藏
     */
    @Log(title = "作品收藏", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TDetailCollect tDetailCollect)
    {
        return toAjax(tDetailCollectService.insertTDetailCollect(tDetailCollect));
    }

    /**
     * 修改作品收藏
     */
    @Log(title = "作品收藏", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TDetailCollect tDetailCollect)
    {
        return toAjax(tDetailCollectService.updateTDetailCollect(tDetailCollect));
    }

    /**
     * 删除作品收藏
     */
    @Log(title = "作品收藏", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tDetailCollectService.deleteTDetailCollectByIds(ids));
    }
}
