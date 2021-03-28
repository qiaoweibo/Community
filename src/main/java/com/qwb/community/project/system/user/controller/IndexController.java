package com.qwb.community.project.system.user.controller;

import java.util.*;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.Product;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.qwb.community.common.utils.mail.MailBean;
import com.qwb.community.common.utils.mail.MailUtil;
import com.qwb.community.framework.config.AlipayConfig;
import com.qwb.community.framework.config.RuoYiConfig;
import com.qwb.community.framework.config.RuoYiConfig;
import com.qwb.community.framework.web.controller.BaseController;
import com.qwb.community.framework.web.page.TableDataInfo;
import com.qwb.community.project.system.notice.domain.Notice;
import com.qwb.community.project.system.notice.service.INoticeService;
import com.qwb.community.project.system.qwbHouseRent.domain.QwbHouseRent;
import com.qwb.community.project.system.qwbHouseRent.service.IQwbHouseRentService;
import com.qwb.community.common.utils.security.ShiroUtils;
import com.qwb.community.project.system.qwbCost.domain.QwbCost;
import com.qwb.community.project.system.qwbCost.service.IQwbCostService;
import com.qwb.community.project.system.user.service.IUserService;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.qwb.community.project.system.menu.domain.Menu;
import com.qwb.community.project.system.menu.service.IMenuService;
import com.qwb.community.project.system.user.domain.User;
import org.springframework.web.servlet.ModelAndView;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.servlet.http.HttpServletRequest;

/**
 * 首页 业务处理

 */
@Controller
public class IndexController extends BaseController
{
    @Autowired
    private IMenuService menuService;
   @Autowired
    private IUserService userService;

    @Autowired
    private INoticeService noticeService;

    @Autowired
    private IQwbHouseRentService qwbHouseRentService;

    @Autowired
    private IQwbCostService qwbCostService;

    @Autowired
    private RuoYiConfig ruoYiConfig;

    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap)
    {
        // 取身份信息
        /*通過用戶和角色表關聯查詢獲得用戶的角色id和信息*/
        User user = getSysUser();
        // 根据用户id取出菜单
        List<Menu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus", menus);
        mmap.put("user", user);
        mmap.put("copyrightYear", ruoYiConfig.getCopyrightYear());
        Session session=ShiroUtils.getSession();
        session.setAttribute("user",user);
        return "index";
    }


    // 小区主页
    @GetMapping("/index1")
    public String index1(ModelMap mmap)
    {
        return "index1";
    }

    // 小区主页跳转到小区简介页面
    @GetMapping("/communityInformation")
    public String communityInformation(ModelMap mmap)
    {
        return "communityInformation";
    }


    // 小区主页跳转到小区公告页面页面
    @GetMapping("/noticeUser")
    public String noticeUser(ModelMap mmap)
    {
////////////此处是控制公告通知的显示
        Notice notice = new Notice();
        List<Notice> menus = noticeService.selectNoticeList(notice);
        mmap.put("notice", menus);
//////////////////////
        return "noticeUser";
    }


//////////顯示公告數據////////////
/*@PostMapping ("/houseRentList")
@ResponseBody
public TableDataInfo houseRentList(QwbHouseRent qwbHouseRent)
{
    startPage();
    List<QwbHouseRent> list = qwbHouseRentService.selectQwbHouseRentList(qwbHouseRent);
    return getDataTable(list);
} */
@PostMapping("/noticeUserList")
    @ResponseBody
    public TableDataInfo noticeUserList(Notice notice)
    {
        startPage();
        List<Notice> list = noticeService.selectNoticeList(notice);
        return getDataTable(list);
    }

    // 通告通知查看详情后跳转到article页面
    @GetMapping("/article")
    public String article(@RequestParam("id")Long id, ModelMap mmap)
    {
        Notice notice = new Notice();
        notice=noticeService.selectNoticeById(id);
        mmap.put("notice", notice);
        return "article";
    }


    // 先搜索到目标(然后再解析出来)
    @RequestMapping("/search")
    @ResponseBody
    public Object search(@RequestParam("queryText")String queryText)
    {
        Map<String,Object> mmap =new HashMap<>();
        Notice notice = new Notice();
        notice.setNoticeTitle(queryText);
        List<Notice> list=noticeService.selectNoticeList(notice);
        mmap.put("queryText", list);
        return mmap;
    }

    // 小区主页跳转到小区租房页面页面
    @GetMapping("/houseRent")
    public String houseRent(ModelMap mmap)
    {
////////////此处是控制租房信息的显示
        QwbHouseRent qwbHouseRent = new QwbHouseRent();
        List<QwbHouseRent> menus = qwbHouseRentService.selectQwbHouseRentList(qwbHouseRent);
        mmap.put("qwbHouseRent", menus);
//////////////////////
        return "houseRent";
    }

    @PostMapping ("/houseRentList")
    @ResponseBody
    public TableDataInfo houseRentList(QwbHouseRent qwbHouseRent)
    {
        startPage();
        List<QwbHouseRent> list = qwbHouseRentService.selectQwbHouseRentList(qwbHouseRent);
        return getDataTable(list);
    }

    // 打印发票页面的跳转
    @GetMapping("/invoice_print")
    public String invoice_print(@RequestParam("id")Integer id,ModelMap mmap)
    {
        ////////////此处是控制租房信息的显示
        QwbCost qwbCost = new QwbCost();
        qwbCost = qwbCostService.selectQwbCostById(id);
        mmap.put("qwbCost", qwbCost);
//////////////////////
        return "invoice_print";
    }


    /*// 小区主页跳转到登录页面
    @GetMapping("/login")
    public String login(ModelMap mmap)
    {
        return "login";
    }*/


    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap)
    {
        mmap.put("version", ruoYiConfig.getVersion());
        return "main";
    }
    // 注入模板引擎
    @Autowired
    TemplateEngine templateEngine;
    @Autowired
    MailUtil mailUtil;

/*通过邮箱找回密码*/
    @RequestMapping("/findPwd")
    public String findPwd() throws Exception {
        return "findPwd";
    }

    @RequestMapping("/findPwdBody")
    @ResponseBody
    public String findPwdBody(@RequestParam("email")String email) throws Exception {
        User user=userService.selectUserByEmail(email);
        user.setPassword("111111");
        userService.resetUserPwd(user);
        MailBean mailBean = MailBean.getMailBean();
        Context context = new Context();

        context.setVariable("user", user.getUserName());
        context.setVariable("passwd", "111111");
        context.setVariable("loginName", user.getLoginName());
        String content = templateEngine.process("email/emailTemplate", context);
//        String content = "hello";
        mailBean.setToUserName(user.getEmail());
        mailBean.setSubject("重置密码");
        mailBean.setText(content);
        mailUtil.sendMailTemplate(mailBean);
        return "client/findPwd";
    }





 /* 扫码支付的控制类代码
 @RequestParam("id")是拿到window.open("/pay?id="+$("#id").val()"里面的+$("#id").val()
 * */
    @GetMapping("/pay")
    @ResponseBody
    public String pay(ModelMap mmap,@RequestParam("id")String id,@RequestParam("total")String total) throws AlipayApiException {
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = new String(id);
        //付款金额，必填
        String total_amount = new String(total);
        //订单名称，必填
        String subject = new String("交费");
        //商品描述，可空
        String body = new String("交费");

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        String result = alipayClient.pageExecute(alipayRequest).getBody();

        //输出
//        out.println(result);
        return result;
    }

    /**
     * @Description: 支付宝同步通知页面
     */
    @RequestMapping(value = "alipayReturnNotice")
    public ModelAndView alipayReturnNotice(HttpServletRequest request, HttpServletRequest response) throws Exception {
        System.out.println("支付成功, 进入同步通知接口...");
        //获取支付宝GET过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        //调用SDK验证签名
        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type);
        ModelAndView mv = new ModelAndView("paySuccess");
        //——请在这里编写您的程序（以下代码仅作参考）——
        if(signVerified) {
            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //付款金额
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
            QwbCost qwbCost = new QwbCost();
            qwbCost.setId(Integer.valueOf(out_trade_no));
/////////////////////插入数据////////////////////
            qwbCost.setPaymentTime(new Date());
            qwbCost.setState(1);
            qwbCostService.updateQwbCost(qwbCost);
//////////////////////////////////////////////////////////
            // 修改订单状态为支付成功，已付款; 同时新增支付流水
//            orderService.updateOrderStatus(out_trade_no, trade_no, total_amount);
//
//            Order order = orderService.getOrderById(out_trade_no);
//            Product product = productService.getProductById(order.getProductId());
//            log.info("********************** 支付成功(支付宝同步通知) **********************");
//            log.info("* 订单号: {}", out_trade_no);
//            log.info("* 支付宝交易号: {}", trade_no);
//            log.info("* 实付金额: {}", total_amount);
//            log.info("* 购买产品: {}", product.getName());
//            log.info("***************************************************************");
//            mv.addObject("out_trade_no", out_trade_no);
//            mv.addObject("trade_no", trade_no);
//            mv.addObject("total_amount", total_amount);
//            mv.addObject("productName", product.getName());
        }else {
            mv.addObject("result", "支付, 验签失败...");
//            System.out.println();
            return mv;
        }
        mv.addObject("result", "支付成功");
        return mv;
    }





    /**
     * @Description: 支付宝异步 通知页面
     */
    @RequestMapping(value = "alipayNotifyNotice")
    public void alipayNotifyNotice(HttpServletRequest request, HttpServletRequest response) throws Exception {

        System.out.println("支付成功, 进入异步通知接口...");

        //获取支付宝POST过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            /*valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");*/
            params.put(name, valueStr);
        }

        //调用SDK验证签名
        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type);

        //——请在这里编写您的程序（以下代码仅作参考）——

   /* 实际验证过程建议商户务必添加以下校验：
   1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
   2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
   3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）
   4、验证app_id是否为该商户本身。
   */
        //验证成功
        if(signVerified) {
            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //交易状态
            String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");

            //付款金额
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");

            if(trade_status.equals("TRADE_FINISHED")){
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //如果有做过处理，不执行商户的业务程序

                //注意： 尚自习的订单没有退款功能, 这个条件判断是进不来的, 所以此处不必写代码
                //退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
            }else if (trade_status.equals("TRADE_SUCCESS")){
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //如果有做过处理，不执行商户的业务程序
                QwbCost qwbCost = new QwbCost();
                qwbCost.setId(Integer.valueOf(out_trade_no));
                qwbCost.setState(1);
                qwbCostService.updateQwbCost(qwbCost);
                //注意：
                //付款完成后，支付宝系统发送该交易状态通知

                // 修改叮当状态，改为 支付成功，已付款; 同时新增支付流水
                System.out.println(out_trade_no+"交易Id");
            }
            System.out.println("支付成功...");
        }else {//验证失败
            System.out.println("支付, 验签失败...");
//            return "fail";
        }
//        return "success";
    }

}
