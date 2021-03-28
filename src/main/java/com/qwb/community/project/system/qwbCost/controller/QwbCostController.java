package com.qwb.community.project.system.qwbCost.controller;

import java.util.Date;
import java.util.List;

import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.project.system.user.domain.User;
import com.qwb.community.project.system.user.domain.UserRole;
import com.qwb.community.project.system.user.service.IUserService;
import com.qwb.community.common.utils.security.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.qwb.community.project.system.qwbCost.domain.QwbCost;
import com.qwb.community.project.system.qwbCost.service.IQwbCostService;
import com.qwb.community.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;

/**
 * 費用信息操作处理
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/qwbCost")
public class QwbCostController extends BaseController
{
    private String prefix = "system/qwbCost";
	
	@Autowired
	private IQwbCostService qwbCostService;
//////////////////////////////////////////////////////
	@Autowired
	private IUserService userService;
//////////////////////////////////////////////////////////

	@RequiresPermissions("system:qwbCost:view")
	@GetMapping("/noticeCostDeal")
	public String noticeCostDeal(Model model)
	{
/**
 * 用户和服务人员在后台系统界面上方的“闹铃”点击通知消息显示的不一样，一个是待缴费，另外一个是已缴费
 */
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		model.addAttribute("userRole",userRole);
		if(userRole.getRoleId()==2){
			return prefix + "/qwbNoCostUser";
		}
		return prefix + "/qwbCost";
////////////////////////通知跳转/////////////////////////////////////////////////////////
	}

	@RequiresPermissions("system:qwbCost:view")
	@GetMapping()
	public String qwbCost(Model model)
	{
/**
 * 获取登录的信息
 */
//////////////实现管理员和用户和服务人员在进入缴费界面时的分离效果/////////////////////////////////////////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		model.addAttribute("userRole",userRole);
		if(userRole.getRoleId()==2){
			return prefix + "/qwbCostUser";
		}
		else if(userRole.getRoleId()==1||userRole.getRoleId()==4){
			return prefix + "/qwbCostAdmin";
		}
	    return prefix + "/qwbCost";
/////////////////////////////////////////////////////////////////////////////////
	}





	@RequiresPermissions("system:qwbCost:view")
	@GetMapping("/noCostDeal")
	public String noCostDeal(Model model)
	{
/**
 *
 */
////////////////////////////////////实现管理员和用在进入缴费界面时的分离效果/////////////////////////////////////////
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		model.addAttribute("userRole",userRole);
		if(userRole.getRoleId()==2){
			return prefix + "/qwbNoCostUser";
		}
	    return prefix + "/qwbNoCost";
/////////////////////////////////////////////////////////////////////////////////
	}





	
	/**
	 * 查询費用列表
	 */
	@RequiresPermissions("system:qwbCost:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(QwbCost qwbCost)
	{
		startPage();
        List<QwbCost> list = qwbCostService.selectQwbCostList(qwbCost);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出費用列表
	 */
	@RequiresPermissions("system:qwbCost:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(QwbCost qwbCost)
    {
    	List<QwbCost> list = qwbCostService.selectQwbCostList(qwbCost);
        ExcelUtil<QwbCost> util = new ExcelUtil<QwbCost>(QwbCost.class);
        return util.exportExcel(list, "qwbCost");
    }
	
	/**
	 * 新增費用
	 */
	@GetMapping("/add")
	public String add()
	{

		return prefix + "/add";
	}
	
	/**
	 * 新增保存費用
	 */
	@RequiresPermissions("system:qwbCost:add")
	@Log(title = "費用", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(QwbCost qwbCost)
	{
/*自動獲取時間操作	*/
qwbCost.setCreateDate(new Date());
		return toAjax(qwbCostService.insertQwbCost(qwbCost));
	}

	/**
	 * 修改費用
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		QwbCost qwbCost = qwbCostService.selectQwbCostById(id);
		mmap.put("qwbCost", qwbCost);
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
	 * 修改保存費用
	 */
	@RequiresPermissions("system:qwbCost:edit")
	@Log(title = "費用", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(QwbCost qwbCost)
	{

/*自動獲取時間操作(现在出问题了)	*/
		User currentUser= ShiroUtils.getSysUser();
		UserRole userRole=userService.selectUserByIdRole(currentUser.getUserId());
		if(userRole.getRoleId()==2){
			qwbCost.setPaymentTime(new Date());
		}

		return toAjax(qwbCostService.updateQwbCost(qwbCost));
	}
	
	/**
	 * 删除費用
	 */
	@RequiresPermissions("system:qwbCost:remove")
	@Log(title = "費用", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(qwbCostService.deleteQwbCostByIds(ids));
	}




/////////////////输入用户姓名的时候显示其所在的房间号///////////////////////
	@RequestMapping("/room")
	@ResponseBody
	public Object getRoom(@RequestParam(value = "name") String name)
	{
		System.out.println(name);
		return userService.getUserRoomByName(name);
	}
/////////////////输入用户姓名的时候显示其所在的房间号///////////////////////





/*费用从表格中的导入操作*/
	@Log(title = "用户管理", businessType = BusinessType.IMPORT)
//	@RequiresPermissions("system:qwbCost:import")
	@PostMapping("/importData")
	@ResponseBody
	public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
	{
		ExcelUtil<QwbCost> util = new ExcelUtil<QwbCost>(QwbCost.class);
		List<QwbCost> qwbCosts = util.importExcel(file.getInputStream());
		String message = qwbCostService.importCost(qwbCosts, updateSupport);
////////////////////////////////////
		/*自動獲取時間操作	*/
		/*QwbCost qwbCost;*/
		/*qwbCost.setCreateDate(new Date());*/
////////////////////////////////////
		return AjaxResult.success(message);
	}
//	@RequiresPermissions("system:qwbCost:remove")
	@GetMapping("/importTemplate")
	@ResponseBody
	public AjaxResult importTemplate()
	{
		ExcelUtil<QwbCost> util = new ExcelUtil<QwbCost>(QwbCost.class);
		return util.importTemplateExcel("费用");
	}


	/*显示支付状态*/
	@RequestMapping("/showPayStat")
	@ResponseBody
	public Object showPayStat(@RequestParam(value = "id") Integer id)
	{
		return qwbCostService.selectQwbCostById(id);
	}
}
