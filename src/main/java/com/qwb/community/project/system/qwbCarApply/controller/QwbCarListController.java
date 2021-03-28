package com.qwb.community.project.system.qwbCarApply.controller;

import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.project.system.qwbCarApply.domain.QwbCarApply;
import com.qwb.community.project.system.qwbCarApply.service.IQwbCarApplyService;
import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;
import com.qwb.community.project.system.qwbCarRent.service.IQwbCarRentService;
import com.qwb.community.common.utils.poi.ExcelUtil;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.framework.web.page.TableDataInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * 车位申请信息操作处理
 原来前台的车位显示改成现在服务人员的申请列表显示
 * @date 2019-04-28
 */
@Controller
@RequestMapping("/system/qwbCarList")
public class QwbCarListController extends BaseController
{
    private String prefix = "system/qwbCarApply";
	
	@Autowired
	private IQwbCarApplyService qwbCarApplyService;

	@Autowired
	private IQwbCarRentService qwbCarRentService;
	
	@RequiresPermissions("system:qwbCarList:view")
	@GetMapping()
	public String qwbCarApply()
	{
	    return prefix + "/qwbCarApply";
	}
	
	/**
	 * 查询车位申请列表
	 */
	@RequiresPermissions("system:qwbCarList:list")
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
	@RequiresPermissions("system:qwbCarList:export")
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
	 * 新增保存车位申请
	 */
	@RequiresPermissions("system:qwbCarList:add")
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
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存车位申请
	 */
	@RequiresPermissions("system:qwbCarList:edit")
	@Log(title = "车位申请", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbCarApply qwbCarApply)
	{
qwbCarApply.setAgreeTime(new Date());
/*在此处注入审核*/
QwbCarRent qwbCarRent=new QwbCarRent();
/*用户视角好像也可以改变*/
qwbCarRent.setDescribe(1);
qwbCarRent.setId(qwbCarApply.getCId());
System.out.println(qwbCarApply.getCId()+"车位");
qwbCarRentService.updateQwbCarRent(qwbCarRent);
		return toAjax(qwbCarApplyService.updateQwbCarApply(qwbCarApply));
	}
	
	/**
	 * 删除车位申请
	 */
	@RequiresPermissions("system:qwbCarList:remove")
	@Log(title = "车位申请", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbCarApplyService.deleteQwbCarApplyByIds(ids));
	}
	
}
