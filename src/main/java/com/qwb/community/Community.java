package com.qwb.community;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * 启动程序

 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@MapperScan("com.qwb.community.project.*.*.mapper")
@EnableScheduling
public class Community
{
    public static ConfigurableApplicationContext applicationContext;
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        applicationContext=SpringApplication.run(Community.class, args);
        System.out.println("居民小区服务系统启动成功");
    }
}