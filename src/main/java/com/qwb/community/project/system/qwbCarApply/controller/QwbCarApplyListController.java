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
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * 车位申请信息操作处理
 * 
 原来的申请列表改成现在的车位列表（界面该名字）
 */
@Controller
@RequestMapping("/system/qwbCarApplyList")
public class QwbCarApplyListController extends BaseController
{
    private String prefix = "system/qwbCarApply";
	@Autowired
	private IQwbCarRentService qwbCarRentService;
	@Autowired
	private IQwbCarApplyService qwbCarApplyService;


	/*view表示查看,在用户视图下点击车位列表，可以看到服务人员发布的车位信息(return prefix + "/qwbCarRentUser";)*/
	/*在该视图下点击申请，进行车位的申请操作*/
@RequiresPermissions("system:qwbCarApplyList:view")
@GetMapping()
public String qwbCarApply()
{
	return prefix + "/qwbCarRentUser";
}


	/**
	 * 查询并获取服务人员发布的车位列表
	 */
	@RequiresPermissions("system:qwbCarApplyList:list")
	@PostMapping("/Carlist")
	@ResponseBody
	public TableDataInfo Carlist(QwbCarRent qwbCarRent)
	{
		startPage();
		List<QwbCarRent> list = qwbCarRentService.selectQwbCarRentList(qwbCarRent);
		return getDataTable(list);
	}

	
	/**
	 * 查询车位申请列表
	 */
	@RequiresPermissions("system:qwbCarApplyList:list")
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
	@RequiresPermissions("system:qwbCarApplyList:export")
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
	public String add(@RequestParam("id")Integer id, Model model)
	{
/*获取到车位id*/
model.addAttribute("carId",id);
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存车位申请
	 */
	@RequiresPermissions("system:qwbCarApplyList:add")
	@Log(title = "车位申请", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbCarApply qwbCarApply)
	{
/*自动获取申请时间*/
qwbCarApply.setApplyTime(new Date());
		QwbCarRent qwbCarRent=new QwbCarRent();
		qwbCarRent.setState(1);
		qwbCarRent.setId(qwbCarApply.getCId());
		System.out.println(qwbCarApply.getCId()+"车位");
		qwbCarRentService.updateQwbCarRent(qwbCarRent);
/*qwbCarApply.setState(1);*/
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
	@RequiresPermissions("system:qwbCarApplyList:edit")
	@Log(title = "车位申请", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbCarApply qwbCarApply)
	{		
		return toAjax(qwbCarApplyService.updateQwbCarApply(qwbCarApply));
	}
	
	/**
	 * 删除车位申请
	 */
	@RequiresPermissions("system:qwbCarApplyList:remove")
	@Log(title = "车位申请", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
/*QwbCarRent qwbCarRent=new QwbCarRent();
qwbCarRent.setState(0);*/
		/*申请列表中删除申请信息，车位列表中的已申请就变成未申请*/
		/*QwbCarRent qwbCarRent=new QwbCarRent();
		qwbCarRent.setState(0);
qwbCarRentService.updateQwbCarRent(qwbCarRent);*/
		return toAjax(qwbCarApplyService.deleteQwbCarApplyByIds(ids));
	}
	
}
