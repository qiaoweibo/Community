package com.qwb.community.project.system.qwbCarRent.controller;

import java.util.Date;
import java.util.List;

import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;
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
import com.qwb.community.project.system.qwbCarRent.service.IQwbCarRentService;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;

/**
 * 车位信息操作处理

 */
@Controller
@RequestMapping("/system/qwbCarRent")
public class QwbCarRentController extends BaseController
{
    private String prefix = "system/qwbCarRent";
	
	@Autowired
	private IQwbCarRentService qwbCarRentService;
	
	@RequiresPermissions("system:qwbCarRent:view")
	@GetMapping()
	public String qwbCarRent()
	{
	    return prefix + "/qwbCarRent";
	}
	
	/**
	 * 查询车位列表
	 */
	@RequiresPermissions("system:qwbCarRent:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbCarRent qwbCarRent)
	{
		startPage();
        List<QwbCarRent> list = qwbCarRentService.selectQwbCarRentList(qwbCarRent);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出车位列表
	 */
	@RequiresPermissions("system:qwbCarRent:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbCarRent qwbCarRent)
    {
    	List<QwbCarRent> list = qwbCarRentService.selectQwbCarRentList(qwbCarRent);
        ExcelUtil<QwbCarRent> util = new ExcelUtil<QwbCarRent>(QwbCarRent.class);
        return util.exportExcel(list, "qwbCarRent");
    }
	
	/**
	 * 新增车位
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存车位
	 */
	@RequiresPermissions("system:qwbCarRent:add")
	@Log(title = "车位", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbCarRent qwbCarRent)
	{		
/*自动获取发布车位的时间qwbComplaint.setCreationTime(new Date());*/
qwbCarRent.setPTime(new Date());
		return toAjax(qwbCarRentService.insertQwbCarRent(qwbCarRent));
	}

	/**
	 * 修改车位
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbCarRent qwbCarRent = qwbCarRentService.selectQwbCarRentById(id);
		mmap.put("qwbCarRent", qwbCarRent);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存车位
	 */
	@RequiresPermissions("system:qwbCarRent:edit")
	@Log(title = "车位", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbCarRent qwbCarRent)
	{
qwbCarRent.setPTime(new Date());
		return toAjax(qwbCarRentService.updateQwbCarRent(qwbCarRent));
	}
	
	/**
	 * 删除车位
	 */
	@RequiresPermissions("system:qwbCarRent:remove")
	@Log(title = "车位", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbCarRentService.deleteQwbCarRentByIds(ids));
	}




	/*费用从表格中的导入操作*/
	@Log(title = "用户管理", businessType = BusinessType.IMPORT)
	@PostMapping("/importData")
	@ResponseBody
	public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
	{
		ExcelUtil<QwbCarRent> util = new ExcelUtil<QwbCarRent>(QwbCarRent.class);
		List<QwbCarRent> qwbCarRents = util.importExcel(file.getInputStream());
		String message = qwbCarRentService.importCarRent(qwbCarRents, updateSupport);
////////////////////////////////////
		/*自動獲取時間操作	*/
		/*QwbCost qwbCost;*/
		/*qwbCost.setCreateDate(new Date());*/
////////////////////////////////////
		return AjaxResult.success(message);
	}

	@GetMapping("/importTemplate")
	@ResponseBody
	public AjaxResult importTemplate()
	{
		ExcelUtil<QwbCarRent> util = new ExcelUtil<QwbCarRent>(QwbCarRent.class);
		return util.importTemplateExcel("车位租用表");
	}

}
	

