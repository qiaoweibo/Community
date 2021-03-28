package com.qwb.community.project.system.notice.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.qwb.community.framework.aspectj.lang.annotation.Log;
import com.qwb.community.framework.aspectj.lang.enums.BusinessType;
import com.qwb.community.framework.config.RuoYiConfig;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.common.utils.file.FileUploadUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.qwb.community.project.system.notice.domain.Notice;
import com.qwb.community.project.system.notice.service.INoticeService;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 公告 信息操作处理
 * 
 * @author qwb
 */
@Controller
@RequestMapping("/system/notice")
public class NoticeController extends BaseController
{
    private String prefix = "system/notice";

    @Autowired
    private INoticeService noticeService;

    @RequiresPermissions("system:notice:view")
    @GetMapping()
    public String notice()
    {
        return prefix + "/notice";
    }

    /**
     * 查询公告列表
     */
    @RequiresPermissions("system:notice:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Notice notice)
    {
        startPage();
        List<Notice> list = noticeService.selectNoticeList(notice);
        return getDataTable(list);
    }

    /**
     * 新增公告
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存公告
     */
    @RequiresPermissions("system:notice:add")
    @Log(title = "通知公告", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Notice notice)
    {
        return toAjax(noticeService.insertNotice(notice));
    }

    /**
     * 修改公告
     */
    @GetMapping("/edit/{noticeId}")
    public String edit(@PathVariable("noticeId") Long noticeId, ModelMap mmap)
    {
        mmap.put("notice", noticeService.selectNoticeById(noticeId));
        return prefix + "/edit";
    }

    /**
     * 修改保存公告
     */
    @RequiresPermissions("system:notice:edit")
    @Log(title = "通知公告", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Notice notice)
    {
        return toAjax(noticeService.updateNotice(notice));
    }

    /**
     * 删除公告
     */
    @RequiresPermissions("system:notice:remove")
    @Log(title = "通知公告", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(noticeService.deleteNoticeByIds(ids));
    }

    @PostMapping("/uploadFile")
    @ResponseBody
    public Object uploadFile(HttpServletRequest request, HttpServletResponse response
            , @RequestParam("file") MultipartFile file) throws Exception {
        Map<String, Object> ruseltMap = new HashMap<>();
        if (!file.isEmpty()) {
            try {
                File fileDir = new File(RuoYiConfig.getFile() );
                if (!fileDir.exists()) {//如果文件夹不存在
                    fileDir.mkdir();//创建文件夹
                }
                String uploadFileName = file.getOriginalFilename();

                String fileName = FileUploadUtils.uploadFile(RuoYiConfig.getFile(), file);
                //上传文件，随机名称，";"分号隔开
                System.out.println(fileName+"----");
//				ruseltMap.put("RealfileName", RuoYiConfig.getVideoFile() + fileName);
                ruseltMap.put("fileName", RuoYiConfig.getFileUrl() + fileName);
                return ruseltMap;
            } catch (Exception e) {
                return ruseltMap.put("fileName", "fail");
            }
        } else {
            return ruseltMap.put("fileName", "nofile");
        }
    }


    /*文件上传控制器*/
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
