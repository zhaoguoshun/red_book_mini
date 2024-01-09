package com.wanou.project.system.controller;

import java.util.List;

import com.wanou.common.utils.SecurityUtils;
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
import com.wanou.project.system.domain.TComment;
import com.wanou.project.system.service.ITCommentService;
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
@RequestMapping("/system/comment")
public class TCommentController extends BaseController
{
    @Autowired
    private ITCommentService tCommentService;

    /**
     * 查询【请填写功能名称】列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TComment tComment)
    {
        startPage();
        List<TComment> list = tCommentService.selectTCommentList(tComment);
        return getDataTable(list);
    }


    @GetMapping("/getCommentMyMessage")
    public AjaxResult getCommentMy() {
        return AjaxResult.success(tCommentService.getCommentMy());
    }

    @GetMapping("/getUserList/{detailId}")
    public AjaxResult getUserList(@PathVariable Long detailId){
        Long userId = SecurityUtils.getUserId();
        TComment tComment = new TComment();
        tComment.setUid(userId);
        tComment.setMid(detailId);
        return AjaxResult.success(tComment);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TComment tComment)
    {
        List<TComment> list = tCommentService.selectTCommentList(tComment);
        ExcelUtil<TComment> util = new ExcelUtil<TComment>(TComment.class);
        return util.exportExcel(list, "【请填写功能名称】数据");
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tCommentService.selectTCommentById(id));
    }

    /**
     * 新增【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TComment tComment)
    {
        return toAjax(tCommentService.insertTComment(tComment));
    }

    /**
     * 修改【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TComment tComment)
    {
        return toAjax(tCommentService.updateTComment(tComment));
    }

    /**
     * 删除【请填写功能名称】
     */
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable List<Long> ids)
    {
        return toAjax(tCommentService.deleteTCommentByIds(ids));
    }
}
