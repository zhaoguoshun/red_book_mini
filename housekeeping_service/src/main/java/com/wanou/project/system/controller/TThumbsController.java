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
import com.wanou.project.system.domain.TThumbs;
import com.wanou.project.system.service.ITThumbsService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 点赞Controller
 *
 * @author ruoyi
 * @date 2023-10-29
 */
@RestController
@RequestMapping("/system/thumbs")
public class TThumbsController extends BaseController
{
    @Autowired
    private ITThumbsService tThumbsService;

    /**
     * 查询点赞列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TThumbs tThumbs)
    {
        startPage();
        List<TThumbs> list = tThumbsService.selectTThumbsList(tThumbs);
        return getDataTable(list);
    }

    @GetMapping("/isThumbs")
    public AjaxResult isThumbs(Long detailId,Long userId){
        return AjaxResult.success(tThumbsService.isThumbs(detailId,userId));
    }


    @GetMapping("/thumbsMyList")
    public AjaxResult thumbsMyList() {
        return AjaxResult.success(tThumbsService.thumbsMyList());
    }

    /**
     * 导出点赞列表
     */
    @Log(title = "点赞", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TThumbs tThumbs)
    {
        List<TThumbs> list = tThumbsService.selectTThumbsList(tThumbs);
        ExcelUtil<TThumbs> util = new ExcelUtil<TThumbs>(TThumbs.class);
        return util.exportExcel(list, "点赞数据");
    }

    /**
     * 获取点赞详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tThumbsService.selectTThumbsById(id));
    }

    /**
     * 新增点赞
     */
    @Log(title = "点赞", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TThumbs tThumbs)
    {
        return toAjax(tThumbsService.insertTThumbs(tThumbs));
    }

    /**
     * 修改点赞
     */
    @Log(title = "点赞", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TThumbs tThumbs)
    {
        return toAjax(tThumbsService.updateTThumbs(tThumbs));
    }

    /**
     * 删除点赞
     */
    @Log(title = "点赞", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tThumbsService.deleteTThumbsByIds(ids));
    }
}
