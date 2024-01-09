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
import com.wanou.project.system.domain.TbSchool;
import com.wanou.project.system.service.ITbSchoolService;
import com.wanou.framework.web.controller.BaseController;
import com.wanou.framework.web.domain.AjaxResult;
import com.wanou.common.utils.poi.ExcelUtil;
import com.wanou.framework.web.page.TableDataInfo;

/**
 * 学校Controller
 *
 * @author ruoyi
 * @date 2023-12-23
 */
@RestController
@RequestMapping("/system/school")
public class TbSchoolController extends BaseController
{
    @Autowired
    private ITbSchoolService tbSchoolService;

    /**
     * 查询学校列表
     */
    @GetMapping("/list")
    public TableDataInfo list(TbSchool tbSchool)
    {
        startPage();
        List<TbSchool> list = tbSchoolService.selectTbSchoolList(tbSchool);
        return getDataTable(list);
    }

    /**
     * 导出学校列表
     */
    @Log(title = "学校", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TbSchool tbSchool)
    {
        List<TbSchool> list = tbSchoolService.selectTbSchoolList(tbSchool);
        ExcelUtil<TbSchool> util = new ExcelUtil<TbSchool>(TbSchool.class);
        return util.exportExcel(list, "学校数据");
    }

    /**
     * 获取学校详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(tbSchoolService.selectTbSchoolById(id));
    }

    /**
     * 新增学校
     */
    @Log(title = "学校", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TbSchool tbSchool)
    {
        return toAjax(tbSchoolService.insertTbSchool(tbSchool));
    }

    /**
     * 修改学校
     */
    @Log(title = "学校", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TbSchool tbSchool)
    {
        return toAjax(tbSchoolService.updateTbSchool(tbSchool));
    }

    /**
     * 删除学校
     */
    @Log(title = "学校", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tbSchoolService.deleteTbSchoolByIds(ids));
    }
}
