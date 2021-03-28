package com.qwb.community.project.system.qwbExchange.controller;

import java.util.List;

import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.framework.web.page.TableDataInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.qwb.community.project.system.qwbExchange.domain.QwbExchange;
import com.qwb.community.project.system.qwbExchange.service.IQwbExchangeService;
import com.qwb.community.common.utils.poi.ExcelUtil;

/**
 * 社區交流信息操作处理
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/qwbExchange")
public class QwbExchangeController extends BaseController
{
    private String prefix = "system/qwbExchange";
	
	@Autowired
	private IQwbExchangeService qwbExchangeService;
	
	@RequiresPermissions("system:qwbExchange:view")
	@GetMapping()
	public String qwbExchange()
	{
	    return prefix + "/qwbExchange";
	}
	
	/**
	 * 查询社區交流列表
	 */
	@RequiresPermissions("system:qwbExchange:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbExchange qwbExchange)
	{
		startPage();
        List<QwbExchange> list = qwbExchangeService.selectQwbExchangeList(qwbExchange);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出社區交流列表
	 */
	@RequiresPermissions("system:qwbExchange:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbExchange qwbExchange)
    {
    	List<QwbExchange> list = qwbExchangeService.selectQwbExchangeList(qwbExchange);
        ExcelUtil<QwbExchange> util = new ExcelUtil<QwbExchange>(QwbExchange.class);
        return util.exportExcel(list, "qwbExchange");
    }
	
	/**
	 * 新增社區交流
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存社區交流
	 */
	@RequiresPermissions("system:qwbExchange:add")
	@Log(title = "社區交流", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbExchange qwbExchange)
	{		
		return toAjax(qwbExchangeService.insertQwbExchange(qwbExchange));
	}

	/**
	 * 修改社區交流
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbExchange qwbExchange = qwbExchangeService.selectQwbExchangeById(id);
		mmap.put("qwbExchange", qwbExchange);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存社區交流
	 */
	@RequiresPermissions("system:qwbExchange:edit")
	@Log(title = "社區交流", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbExchange qwbExchange)
	{		
		return toAjax(qwbExchangeService.updateQwbExchange(qwbExchange));
	}
	
	/**
	 * 删除社區交流
	 */
	@RequiresPermissions("system:qwbExchange:remove")
	@Log(title = "社區交流", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbExchangeService.deleteQwbExchangeByIds(ids));
	}
	
}
