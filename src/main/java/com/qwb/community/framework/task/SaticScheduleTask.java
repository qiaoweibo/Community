package com.qwb.community.framework.task;

import com.qwb.community.project.system.qwbCarApply.domain.QwbCarApply;
import com.qwb.community.project.system.qwbCarApply.service.IQwbCarApplyService;
import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;
import com.qwb.community.project.system.qwbCarRent.service.IQwbCarRentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Component
public class SaticScheduleTask {
//    IQwbCarRentService qwbCarRentService = RuoYiApplication.applicationContext.getBean(QwbCarRentServiceImpl.class);
    @Autowired
    private IQwbCarRentService qwbCarRentService;

    @Autowired
    private IQwbCarApplyService qwbCarApplyService;

/*申请年数+批准时间若小于当前时间(实时时间),则表明车位到期,进入续租模式，给用户20天的续租时间，一旦超过20天就进入到未租用状态*/
/*由于我的申请年数是Int 类型的，  不好执行相加操作，所以使用定时器注入状态来把抽象问题具体化 */
    //3.添加定时任务  下面五个字段分别对应 秒  分  时  日  月(没达到这么多的时间就会更新一次数据库)
    //因为租车都是按年计算，时间太长，在这里用秒来代替年
    // (注意因为每个住户租车的时长不同，还要分对象考虑(这里是for循环遍历数据库中的每一个对象))
//    @Scheduled(cron = "0/5 * * * * ?")
    //@Scheduled(cron = "0/14 * * * * ?")
    //或直接指定时间间隔，例如：每隔指定时间就会执行下面的  方法   一次
    /*还有一个简单的操作,加上一个到期时间字段,直接拿到期时间和系统当前时间进行比较
    这样还需要再加一个字段，到期后20天的一个(续租到期)字段*/
    //@Scheduled(fixedRate=5000)
    public void configureTasks() {
        List<QwbCarRent> qwbCarRentList= qwbCarRentService.selectQwbCarRentList(new QwbCarRent());

        List<QwbCarApply> qwbCarApplyList= qwbCarApplyService.selectQwbCarApplyList(new QwbCarApply());

       /* Date curren=new Date();
        System.out.println(curren.getTime());
        long currnInt=curren.getTime();
        long reutn=  currnInt+10*1000;
        System.out.println(currnInt);
实际中真正想要实现的话，先把一年转化成多少秒,再把多少秒*1000(转换成毫秒)加上批准时间
然后和当前的系统时间进行比较(记得把相加后的值转化成long类型)
        */

        for(QwbCarApply qwbCarApply:qwbCarApplyList)
        {
            for(QwbCarRent qwbCarRent:qwbCarRentList){
                //1到期
                Date agreetime = qwbCarApply.getAgreeTime();
/*时间类型和int类型不能简单相加,应当把他们都转换成long类型时间戳*/
                /*qwbCarApply.getRentTime()得到多少年*/
               /* 1、long currnInt=agreetime.getTime();
                  2、long totalDate= currnInt +qwbCarApply.getRentTime()*一年有多少秒*1000
                  3、long currentTime = currentDate.getTime()将系统的当前时间也转换成long
                  if(totalDate<currentTime)状态改变
               */
                Date currentDate=new Date();

                if(agreetime.getTime()<currentDate.getTime())
                {
                    //2 改变车位的租用状态和审核状态
                    /*qwbCarRent.setState();*/
                    qwbCarRent.setDescribe(2);
                    qwbCarApply.setState(0);
                    qwbCarApply.setAgreeTime(null);
                }
                /*下面可以在加一个续租以后的状态*/

//更新车位表
                qwbCarRentService.updateQwbCarRent(qwbCarRent);
                //更新申请表
                qwbCarApplyService.updateQwbCarApply(qwbCarApply);
            }
        }


        /*for(QwbCarRent qwbCarRent:qwbCarRentList){
            //1到期
            Date ptime=qwbCarRent.getPTime();
            *//*Date agretime = QwbCarApply.*//*
            Date currentDate=new Date();
            if(ptime.getTime()>currentDate.getTime())
            {
                //2 改状态
                *//*qwbCarRent.setState();*//*
                qwbCarRent.setDescribe(2);
            }

            qwbCarRentService.updateQwbCarRent(qwbCarRent);
        }*/
        System.err.println("执行静态定时任务时间: " +qwbCarRentList.size()+ LocalDateTime.now());
    }


    /*@Scheduled(cron = "0/30 0/2 * * * ?")*/
//    @Scheduled(cron = "0/11 * * * * ?")
    //或直接指定时间间隔，例如：10秒
    //@Scheduled(fixedRate=5000)
    public void configureTaskstwo() {
        List<QwbCarRent> qwbCarRentList= qwbCarRentService.selectQwbCarRentList(new QwbCarRent());

        List<QwbCarApply> qwbCarApplyList= qwbCarApplyService.selectQwbCarApplyList(new QwbCarApply());

        for(QwbCarApply qwbCarApply:qwbCarApplyList)
        {
            for(QwbCarRent qwbCarRent:qwbCarRentList){
                //1到期
                Date agreetime = qwbCarApply.getAgreeTime();
                Date currentDate=new Date();
                if(agreetime.getTime()<currentDate.getTime())
                {
                    //1续租变为未租用状态   已申请变成未申请状态
                    qwbCarRent.setDescribe(0);
                    qwbCarRent.setState(0);
                    //2已审核变成未审核
                    qwbCarApply.setState(0);
                    qwbCarApply.setAgreeTime(null);
                }
                /*下面可以在加一个续租以后的状态*/


                qwbCarRentService.updateQwbCarRent(qwbCarRent);
                qwbCarApplyService.updateQwbCarApply(qwbCarApply);
            }
        }


        /*for(QwbCarRent qwbCarRent:qwbCarRentList){
            //1到期
            Date ptime=qwbCarRent.getPTime();
            *//*Date agretime = QwbCarApply.*//*
            Date currentDate=new Date();
            if(ptime.getTime()>currentDate.getTime())
            {
                //2 改状态
                *//*qwbCarRent.setState();*//*
                qwbCarRent.setDescribe(2);
            }

            qwbCarRentService.updateQwbCarRent(qwbCarRent);
        }*/
        System.err.println("执行静态定时任务时间: " +qwbCarRentList.size()+ LocalDateTime.now());
    }
}