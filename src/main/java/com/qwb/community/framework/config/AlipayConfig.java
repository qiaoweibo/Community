package com.qwb.community.framework.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id ="2016092900622710";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC2f0fSxI/rvxqL1/8b7pC5PYCP6aIxXBjgaF77G/aJ44jJQGVDdh1XkyZRQoRmw20w+KoiV5YGZu8Pn/JW9vtif4VddgOvTFNwDSsQzM4R/qfuxNKhHkcFRiWZR7deW9K0+PYAtxRkirsgc8WGjELNZDEgx/J+gjA5NhFRy1zOTHD04BuLtaXisnxXnIxTwx1zvJNzypiinioAqZlbuM3b/1sehjYkHKi8qM8JWAkys2/7Zhj548ThT9c08gJXH3U6kD8kPehr372eI2qJIN09X+rLoscnof7yl/1jAxtPF36noWFZWVT+RJHJyo2rtM43Qq4aa8WT61I9vgbmIAsDAgMBAAECggEAe+LRlgG7lZSoZ7BcTNDZS/a1NHysjwdvF7+iYqKr7RUaAUyGsZIX/yA0Tcty5/PYRvs3O5LrlDMCLEAvGdwV8NqSZUy82Z5dsd4ukvwFE/AkfhD8z0UnfywMUA6AKzz4P8QV84xU+p+2wiP1Pg4vNxDBzPgO5NRp+hx7C2Sa/qt8ExlmV/vDGAyltdIo66pauS61h0adKXHfS3nkkegnqRLTjZSTKPqqZsAYQu2c7EGgtSXsk7UJUIjMOmK7QONgPLe1lduoGiAVgqBE+VSp00c/8TG6w6G3GOhpd1HXd5QetssSGLzQUipco2stMNcflh+NLPNCBUdwsBejjONdmQKBgQDz6wQUFeTI9Ab3uIU8qmVrJBbK0+tBK6Ob2j6+H5gniR47XiHmmVcrJO3ecuJogMAlQiI1GuORffFnGDM3aGFytNstJx39miB4m23sF00AdFmXzRQaF1CiSA9crYS3qgl9GGrty2sg3/PGifF03eUPiX9dY+Aj5SAHOSu23i9cBwKBgQC/iWwcz9z8msw87UHdfi3NREBxG8WPaDUZrrMVTsdRWAy1bxtZOqCk4VRqpXedINTLb4Vl2wVljN4mElAnBQ2zETx4qfx0RCJqxYIa7XErtHJ3y75ckNMGDMRawxbU4T2XhtX1lXmMN0AhfUUPXe4f7fq4l2DGM6mURZwXU2bSJQKBgFdFBriI/MpJRRTsl/8UmCS1TNJU8B7pFih09W3gr/e1P3POQiLXSjDNja3BPPBW4Gh0OPj3HeS4Qt638dspJXR88M4+6KQLuQJt2e5Wh95ZwpRlc4PCQ79MOPLXwlxUIgD384oQ9ctVVUr7n8BIg+QDNeacDV3KZKMw+Ur8Q8WRAoGARQLBllv6lnU701P04FY/MG8//MDx3KrCPx+n3KyGujNMWO7QXsT17pJVdRtrTozuvuHOoZVZi25G+Fau1HBIsFUsgZlVoZqPAANrzkHw/btFZw5c50MzFUHyWXVjO45wP7FQU+zoX3HkxGw7Pr8sNgrrxCiesKsalZbDF9BwApUCgYEAvb1Y0Uf63Faqix5oZG+HtXJEyLqDr06UFbXCiY/4ctVS2BdwhThX+j/5BAI72a0AgSQH+mSLX0RKosZT8iR0zar5bz1sdPMWE0KtMJEYgWAjnNg0+JesHYPG01ktPsUpNzGqBxg7UQeS2gUXVLQrRCPNWMyIFGlTrQAMDLkbTvs=";// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgAwvUWNMpGcCuSUxr3G8mHsx3rjNhKu7hi8Sz10VfqyXMg52ag8zzMVjvahmvh8129zEr8omPYukJG/HkVJCiSu/r0dGKaqrEQNT3wFEJGVgBFLYQaCr3cPSG4ERdrKLuQy7vn0Ckgol732hJ3sgxnswDAG+0jhj5GPlmV05xC9j8fMo8cY22PupnYiPpc76U/M+BxU8ZJ8oHHFYByRFmWa16Z87RMIizLszTgvQi85QTASqSmZl8cc/r/WL/SrybqWPr5VmvKRlvFsggkHK9Wkl5LVMFWeEKO+NqaWkABtC/s8owHZJPCMXKtyCxqS8ybBbqxxxM9m4F8LZ12RtiwIDAQAB"; // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	/*192.168.43.66*/
    public static String notify_url = "http://10.34.25.100:80/alipayNotifyNotice";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://10.34.25.100:80/alipayReturnNotice";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

