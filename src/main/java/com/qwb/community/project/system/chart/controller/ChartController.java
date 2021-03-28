package com.qwb.community.project.system.chart.controller;


import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.project.system.qwbCost.domain.QwbCost;
import com.qwb.community.project.system.qwbCost.mapper.QwbCostMapper;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**

 * @date 2019-05-04
 */
@Controller
@RequestMapping("/system/chart")
public class ChartController extends BaseController {
    private String prefix = "system/chart";

    @Autowired
    QwbCostMapper qwbCostMapper;

    @RequiresPermissions("system:chart:view")
    @GetMapping()
    public String chart() {
        return prefix + "/chart";
    }

    @GetMapping("/getl")
    @ResponseBody
    public   List<Map>  getl() {
        List<Map> result = qwbCostMapper.selectNoElectricity();//未交电费
        result.addAll(qwbCostMapper.selectElectricity());//已缴费
        return result;
    }


    @GetMapping("/get2")
    @ResponseBody
    public   List<Map>  get2() {
        List<Map> result = qwbCostMapper.selectNoWater();//未交水费
        result.addAll(qwbCostMapper.selectWater());//已缴水费
        return result;
    }

    @GetMapping("/get3")
    @ResponseBody
    public   List<Map>  get3() {
        List<Map> result = qwbCostMapper.selectNoGas();
        result.addAll(qwbCostMapper.selectGas());
        return result;
    }

    @GetMapping("/get4")
    @ResponseBody
    public   List<Map>  get4() {
        List<Map> result = qwbCostMapper.selectNoProperty();//未交水费
        result.addAll(qwbCostMapper.selectProperty());//已缴水费
        return result;
    }

    @GetMapping("/get5")
    @ResponseBody
    public   List<Map>  get5() {
        List<Map> result = qwbCostMapper.selectNoTotal();//未交水费
        result.addAll(qwbCostMapper.selectTotal());//已缴水费
        return result;
    }



}
