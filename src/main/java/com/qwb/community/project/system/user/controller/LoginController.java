package com.qwb.community.project.system.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.domain.AjaxResult;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.qwb.community.common.utils.ServletUtils;
import com.qwb.community.common.utils.StringUtils;

/**
 * 登录验证

 */
@Controller
public class LoginController extends BaseController
{
    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response)
    {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest(request))
        {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }

        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe)
    {
        //2、封装用户数据
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
        /*1、获取subject*/
        Subject subject = SecurityUtils.getSubject();

        //3、执行登录方法
        try
        {
    /*(黑马程序员视频)集成了shiro框架，会跳转到UserRealm.java类中，并且先进行登录认证，后进行授权 */
            subject.login(token);
     /////////////只要执行了login方法，就一定会跳到UserRealm.java，加載這個類裡面的登錄認證和授權認證的兩個方法/////////////////////////////////////
            return success();
        }
        catch (AuthenticationException e)
        {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage()))
            {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }

    @GetMapping("/unauth")
    public String unauth()
    {
        return "/error/unauth";
    }
}
