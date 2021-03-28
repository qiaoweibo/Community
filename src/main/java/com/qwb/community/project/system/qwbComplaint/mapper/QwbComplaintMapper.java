package com.qwb.community.project.system.qwbComplaint.mapper;

import com.qwb.community.project.system.qwbComplaint.domain.QwbComplaint;
import java.util.List;	

/**
 * 投訴 数据层
 * 
 * @author qwb
 * @date 2019-04-23
 */
public interface QwbComplaintMapper 
{
	/**
     * 查询投訴信息
     * 
     * @param id 投訴ID
     * @return 投訴信息
     */
	public QwbComplaint selectQwbComplaintById(Integer id);
	
	/**
     * 查询投訴列表
     * 
     * @param qwbComplaint 投訴信息
     * @return 投訴集合
     */
	public List<QwbComplaint> selectQwbComplaintList(QwbComplaint qwbComplaint);
	
	/**
     * 新增投訴
     * 
     * @param qwbComplaint 投訴信息
     * @return 结果
     */
	public int insertQwbComplaint(QwbComplaint qwbComplaint);
	
	/**
     * 修改投訴
     * 
     * @param qwbComplaint 投訴信息
     * @return 结果
     */
	public int updateQwbComplaint(QwbComplaint qwbComplaint);
	
	/**
     * 删除投訴
     * 
     * @param id 投訴ID
     * @return 结果
     */
	public int deleteQwbComplaintById(Integer id);
	
	/**
     * 批量删除投訴
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbComplaintByIds(String[] ids);
	
}