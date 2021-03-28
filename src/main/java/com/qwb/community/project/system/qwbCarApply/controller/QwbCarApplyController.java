package com.qwb.community.project.system.qwbCarApply.controller;

import java.util.Date;
import java.util.List;

import com.qwb.community.project.system.qwbCarApply.domain.QwbCarApply;
import com.qwb.community.project.system.qwbCarApply.service.IQwbCarApplyService;
import com.qwb.community.project.system.qwbCarRent.service.IQwbCarRentService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.common.utils.poi.ExcelUtil;

/**
 * 车位申请信息操作处理
 * @date 2019-04-28
 */
@Controller
@RequestMapping("/system/qwbCarApply")
public class QwbCarApplyController extends BaseController
{
    private String prefix = "system/qwbCarApply";

	@Autowired
	private IQwbCarRentService qwbCarRentService;

	
	@Autowired
	private IQwbCarApplyService qwbCarApplyService;
	
	@RequiresPermissions("system:qwbCarApply:view")
	@GetMapping()
	public String qwbCarApply()
	{
/*利用QwbCarApplyController和下面的路径来控制进入用户的申请页面*/
		return prefix + "/qwbCarApplyUser";
	}
	
	/**
	 * 查询车位申请列表
	 */
	@RequiresPermissions("system:qwbCarApply:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbCarApply qwbCarApply)
	{
		startPage();
        List<QwbCarApply> list = qwbCarApplyService.selectQwbCarApplyList(qwbCarApply);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出车位申请列表
	 */
	@RequiresPermissions("system:qwbCarApply:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbCarApply qwbCarApply)
    {
    	List<QwbCarApply> list = qwbCarApplyService.selectQwbCarApplyList(qwbCarApply);
        ExcelUtil<QwbCarApply> util = new ExcelUtil<QwbCarApply>(QwbCarApply.class);
        return util.exportExcel(list, "qwbCarApply");
    }
	
	/**
	 * 新增车位申请
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存车位申请F
	 */
	@RequiresPermissions("system:qwbCarApply:add")
	@Log(title = "车位申请", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbCarApply qwbCarApply)
	{		
		return toAjax(qwbCarApplyService.insertQwbCarApply(qwbCarApply));
	}

	/**
	 * 修改车位申请
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbCarApply qwbCarApply = qwbCarApplyService.selectQwbCarApplyById(id);
		mmap.put("qwbCarApply", qwbCarApply);
/*跳转到用户视角的编辑页面*/
	    return prefix + "/editUser";
	}
	
	/**
	 * 修改保存车位申请
	 */
	@RequiresPermissions("system:qwbCarApply:edit")
	@Log(title = "车位申请", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbCarApply qwbCarApply)
	{
qwbCarApply.setApplyTime(new Date());
		return toAjax(qwbCarApplyService.updateQwbCarApply(qwbCarApply));
	}
	
	/**
	 * 删除车位申请
	 */
	@RequiresPermissions("system:qwbCarApply:remove")
	@Log(title = "车位申请", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
/*申请列表中删除申请信息，车位列表中的已申请就变成未申请*/

		return toAjax(qwbCarApplyService.deleteQwbCarApplyByIds(ids));
	}
	
}
