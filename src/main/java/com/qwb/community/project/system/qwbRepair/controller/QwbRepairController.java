package com.qwb.community.project.system.qwbRepair.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.framework.config.RuoYiConfig;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.project.system.user.service.IUserService;
import com.qwb.community.common.utils.file.FileUploadUtils;
import com.qwb.community.common.utils.security.ShiroUtils;
import com.qwb.community.project.system.user.domain.User;
import com.qwb.community.project.system.user.domain.UserRole;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.qwb.community.project.system.qwbRepair.domain.QwbRepair;
import com.qwb.community.project.system.qwbRepair.service.IQwbRepairService;
import com.qwb.community.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 維修信息操作处理
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/qwbRepair")
public class QwbRepairController extends BaseController
{
    private String prefix = "system/qwbRepair";
	
	@Autowired
	private IQwbRepairService qwbRepairService;

/////////////////////////////////////
	@Autowired
	private IUserService userService;
/////////////////////////////////////////////
	
	@RequiresPermissions("system:qwbRepair:view")
	@GetMapping()
	public String qwbRepair()
	{
		/**
		 * 获取登录的信息
		 */
////////////////////////////////////实现管理员和用在进入缴费界面时的分离效果/////////////////////////////////////////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()==2){
			return prefix + "/qwbRepairUser";
		}
		else if(userRole.getRoleId()==3){
			return prefix + "/qwbRepair";
		}
		return prefix + "/qwbRepairAdmin";
/////////////////////////////////////////////////////////////////////////////////

	    /*return prefix + "/qwbRepair";*/
	}
	
	/**
	 * 查询維修列表
	 */
	@RequiresPermissions("system:qwbRepair:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbRepair qwbRepair)
	{
		startPage();
        List<QwbRepair> list = qwbRepairService.selectQwbRepairList(qwbRepair);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出維修列表
	 */
	@RequiresPermissions("system:qwbRepair:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbRepair qwbRepair)
    {
    	List<QwbRepair> list = qwbRepairService.selectQwbRepairList(qwbRepair);
        ExcelUtil<QwbRepair> util = new ExcelUtil<QwbRepair>(QwbRepair.class);
        return util.exportExcel(list, "qwbRepair");
    }
	
	/**
	 * 新增維修
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存維修
	 */
	@RequiresPermissions("system:qwbRepair:add")
	@Log(title = "維修", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbRepair qwbRepair)
	{
qwbRepair.setCreationTime(new Date());
		return toAjax(qwbRepairService.insertQwbRepair(qwbRepair));
	}

	/**
	 * 修改維修
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbRepair qwbRepair = qwbRepairService.selectQwbRepairById(id);
		mmap.put("qwbRepair", qwbRepair);
		/////////////////////////实现编辑页面的分离操作/////////////////////////////////////////////////////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()==2){
			return prefix + "/editUser";
		}
		return prefix + "/edit";
/*
	    return prefix + "/edit";
*/
	}
	
	/**
	 * 修改保存維修
	 */
	@RequiresPermissions("system:qwbRepair:edit")
	@Log(title = "維修", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbRepair qwbRepair)
	{
//////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()!=2){
			qwbRepair.setCompleteTime(new Date());
		}
qwbRepair.setCreationTime(new Date());
		/*qwbRepair.setCompleteTime(new Date());*/
		return toAjax(qwbRepairService.updateQwbRepair(qwbRepair));
	}
	
	/**
	 * 删除維修
	 */
	@RequiresPermissions("system:qwbRepair:remove")
	@Log(title = "維修", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbRepairService.deleteQwbRepairByIds(ids));
	}





/*图片上传控制器*/
	@PostMapping("/upload")
	@ResponseBody
	public Object upload(HttpServletRequest request, HttpServletResponse response
			, @RequestParam("file") MultipartFile file) throws Exception {
		Map<String ,Object> ruseltMap=new HashMap<>();
		if (!file.isEmpty()) {
			try {
				System.out.println(file.getName());
				String fileName = FileUploadUtils.upload(RuoYiConfig.getProfile() + "file/", file);
				//上传文件，随机名称，";"分号隔开
				System.out.println(fileName);
/*
ruseltMap.put("fileName", "/profile/file/" + fileName);中的	"/profile/file/" + fileName是图片路径
*/
				ruseltMap.put("fileName", "/profile/file/" + fileName);
				return ruseltMap;
			} catch (Exception e) {
				return ruseltMap.put("fileName","fail");
			}
		} else {
			return ruseltMap.put("fileName","nofile");
		}

	}


}
