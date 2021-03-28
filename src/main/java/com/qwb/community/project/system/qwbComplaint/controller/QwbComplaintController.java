package com.qwb.community.project.system.qwbComplaint.controller;

import java.util.Date;
import java.util.List;

import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.common.utils.security.ShiroUtils;
import com.qwb.community.project.system.user.domain.User;
import com.qwb.community.project.system.user.domain.UserRole;
import com.qwb.community.project.system.user.service.IUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.qwb.community.project.system.qwbComplaint.domain.QwbComplaint;
import com.qwb.community.project.system.qwbComplaint.service.IQwbComplaintService;
import com.qwb.community.common.utils.poi.ExcelUtil;

/**
 * 投訴信息操作处理
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/qwbComplaint")
public class QwbComplaintController extends BaseController
{
    private String prefix = "system/qwbComplaint";
	
	@Autowired
	private IQwbComplaintService qwbComplaintService;

/////////////////////////////////////
	@Autowired
	private IUserService userService;
/////////////////////////////////////////////
	
	@RequiresPermissions("system:qwbComplaint:view")
	@GetMapping()
	public String qwbComplaint()
	{
		/**
		 * 获取登录的信息
		 */
////////////////////////////////////实现管理员和用户在进入缴费界面时的分离效果/////////////////////////////////////////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()==2){
			return prefix + "/qwbComplaintUser";
		}
		else if(userRole.getRoleId()==3){
			return prefix + "/qwbComplaint";
		}
		return prefix + "/qwbComplaintAdmin";
/////////////////////////////////////////////////////////////////////////////////
	    /*return prefix + "/qwbComplaint";*/
	}
	
	/**
	 * 查询投訴列表
	 */
	@RequiresPermissions("system:qwbComplaint:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbComplaint qwbComplaint)
	{
		startPage();
        List<QwbComplaint> list = qwbComplaintService.selectQwbComplaintList(qwbComplaint);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出投訴列表
	 */
	@RequiresPermissions("system:qwbComplaint:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbComplaint qwbComplaint)
    {
    	List<QwbComplaint> list = qwbComplaintService.selectQwbComplaintList(qwbComplaint);
        ExcelUtil<QwbComplaint> util = new ExcelUtil<QwbComplaint>(QwbComplaint.class);
        return util.exportExcel(list, "qwbComplaint");
    }
	
	/**
	 * 新增投訴
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存投訴
	 */
	@RequiresPermissions("system:qwbComplaint:add")
	@Log(title = "投訴", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbComplaint qwbComplaint)
	{
		qwbComplaint.setCreationTime(new Date());
		return toAjax(qwbComplaintService.insertQwbComplaint(qwbComplaint));
	}

	/**
	 * 修改投訴
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbComplaint qwbComplaint = qwbComplaintService.selectQwbComplaintById(id);
		mmap.put("qwbComplaint", qwbComplaint);
		/////////////////////////实现编辑页面的分离操作/////////////////////////////////////////////////////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()==2){
			return prefix + "/editUser";
		}
		return prefix + "/edit";
		/* return prefix + "/edit";*/
	}
	
	/**
	 * 修改保存投訴(在此处来控制前台用户和服务人员的编辑保存的不同之处)
	 */
	@RequiresPermissions("system:qwbComplaint:edit")
	@Log(title = "投訴", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbComplaint qwbComplaint)
	{
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()==1){
			qwbComplaint.setCompleteTime(new Date());
		}
		/*qwbComplaint.setCompleteTime(new Date());*/
		return toAjax(qwbComplaintService.updateQwbComplaint(qwbComplaint));
	}
	
	/**
	 * 删除投訴
	 */
	@RequiresPermissions("system:qwbComplaint:remove")
	@Log(title = "投訴", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbComplaintService.deleteQwbComplaintByIds(ids));
	}
	
}
