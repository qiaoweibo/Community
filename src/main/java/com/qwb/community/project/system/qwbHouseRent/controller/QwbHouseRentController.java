package com.qwb.community.project.system.qwbHouseRent.controller;

import java.util.Date;
import java.util.List;

import com.qwb.community.project.system.qwbHouseRent.domain.QwbHouseRent;
import com.qwb.community.project.system.qwbHouseRent.service.IQwbHouseRentService;
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
 * 租房信息操作处理
 * 
 * @author qwb
 * @date 2019-05-04
 */
@Controller
@RequestMapping("/system/qwbHouseRent")
public class QwbHouseRentController extends BaseController
{
    private String prefix = "system/qwbHouseRent";
	
	@Autowired
	private IQwbHouseRentService qwbHouseRentService;
	
	@RequiresPermissions("system:qwbHouseRent:view")
	@GetMapping()
	public String qwbHouseRent()
	{
	    return prefix + "/qwbHouseRent";
	}
	
	/**
	 * 查询租房列表
	 */
	@RequiresPermissions("system:qwbHouseRent:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbHouseRent qwbHouseRent)
	{
		startPage();
        List<QwbHouseRent> list = qwbHouseRentService.selectQwbHouseRentList(qwbHouseRent);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出租房列表
	 */
	@RequiresPermissions("system:qwbHouseRent:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbHouseRent qwbHouseRent)
    {
    	List<QwbHouseRent> list = qwbHouseRentService.selectQwbHouseRentList(qwbHouseRent);
        ExcelUtil<QwbHouseRent> util = new ExcelUtil<QwbHouseRent>(QwbHouseRent.class);
        return util.exportExcel(list, "qwbHouseRent");
    }
	
	/**
	 * 新增租房
	 */
	@GetMapping("/add")
	public String add()
	{

		return prefix + "/add";
	}
	
	/**
	 * 新增保存租房
	 */
	@RequiresPermissions("system:qwbHouseRent:add")
	@Log(title = "租房", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbHouseRent qwbHouseRent)
	{
/*添加时发布时间的自动注入*/
qwbHouseRent.setTime(new Date());
		return toAjax(qwbHouseRentService.insertQwbHouseRent(qwbHouseRent));
	}

	/**
	 * 修改租房
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbHouseRent qwbHouseRent = qwbHouseRentService.selectQwbHouseRentById(id);
		mmap.put("qwbHouseRent", qwbHouseRent);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存租房
	 */
	@RequiresPermissions("system:qwbHouseRent:edit")
	@Log(title = "租房", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbHouseRent qwbHouseRent)
	{
/*编辑时发布时间的自动注入*/
		qwbHouseRent.setTime(new Date());
		return toAjax(qwbHouseRentService.updateQwbHouseRent(qwbHouseRent));
	}
	
	/**
	 * 删除租房
	 */
	@RequiresPermissions("system:qwbHouseRent:remove")
	@Log(title = "租房", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbHouseRentService.deleteQwbHouseRentByIds(ids));
	}
	
}
