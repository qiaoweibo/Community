package com.qwb.community.framework.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 读取项目相关配置
 * 
 * @author ruoyi
 */
@Component
@ConfigurationProperties(prefix = "ruoyi")
public class RuoYiConfig
{
    /** 项目名称 */
    private String name;
    /** 版本 */
    private String version;
    /** 版权年份 */
    private String copyrightYear;
    private static String imageFile;
    private static String imageFileUrl;
    private static String file;
    private static String fileUrl;

    public static String getFile() {
        return file;
    }

    public  void setFile(String file) {
        RuoYiConfig.file = file;
    }

    public static String getFileUrl() {
        return fileUrl;
    }

    public  void setFileUrl(String fileUrl) {
        RuoYiConfig.fileUrl = fileUrl;
    }

    public static String getImageFile() {
        return imageFile;
    }

    public  void setImageFile(String imageFile) {
        RuoYiConfig.imageFile = imageFile;
    }

    public static String getImageFileUrl() {
        return imageFileUrl;
    }

    public  void setImageFileUrl(String imageFileUrl) {
        RuoYiConfig.imageFileUrl = imageFileUrl;
    }

    /** 上传路径 */
    private static String profile;
    /** 获取地址开关 */
    private static boolean addressEnabled;

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getVersion()
    {
        return version;
    }

    public void setVersion(String version)
    {
        this.version = version;
    }

    public String getCopyrightYear()
    {
        return copyrightYear;
    }

    public void setCopyrightYear(String copyrightYear)
    {
        this.copyrightYear = copyrightYear;
    }

    public static String getProfile()
    {
        return profile;
    }

    public void setProfile(String profile)
    {
        RuoYiConfig.profile = profile;
    }

    public static boolean isAddressEnabled()
    {
        return addressEnabled;
    }

    public void setAddressEnabled(boolean addressEnabled)
    {
        RuoYiConfig.addressEnabled = addressEnabled;
    }

    public static String getAvatarPath()
    {
        return profile + "avatar/";
    }

    public static String getDownloadPath()
    {
        return profile + "download/";
    }
    
    public static String getUploadPath()
    {
        return profile + "upload/";
    }
}
