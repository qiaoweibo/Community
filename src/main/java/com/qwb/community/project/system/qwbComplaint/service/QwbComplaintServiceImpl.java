package com.qwb.community.project.system.qwbComplaint.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.project.system.qwbComplaint.mapper.QwbComplaintMapper;
import com.qwb.community.project.system.qwbComplaint.domain.QwbComplaint;
import com.qwb.community.common.utils.text.Convert;

/**
 * 投訴 服务层实现
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Service
public class QwbComplaintServiceImpl implements IQwbComplaintService 
{
	@Autowired
	private QwbComplaintMapper qwbComplaintMapper;

	/**
     * 查询投訴信息
     * 
     * @param id 投訴ID
     * @return 投訴信息
     */
    @Override
	public QwbComplaint selectQwbComplaintById(Integer id)
	{
	    return qwbComplaintMapper.selectQwbComplaintById(id);
	}
	
	/**
     * 查询投訴列表
     * 
     * @param qwbComplaint 投訴信息
     * @return 投訴集合
     */
	@Override
	public List<QwbComplaint> selectQwbComplaintList(QwbComplaint qwbComplaint)
	{
	    return qwbComplaintMapper.selectQwbComplaintList(qwbComplaint);
	}
	
    /**
     * 新增投訴
     * 
     * @param qwbComplaint 投訴信息
     * @return 结果
     */
	@Override
	public int insertQwbComplaint(QwbComplaint qwbComplaint)
	{
	    return qwbComplaintMapper.insertQwbComplaint(qwbComplaint);
	}
	
	/**
     * 修改投訴
     * 
     * @param qwbComplaint 投訴信息
     * @return 结果
     */
	@Override
	public int updateQwbComplaint(QwbComplaint qwbComplaint)
	{
	    return qwbComplaintMapper.updateQwbComplaint(qwbComplaint);
	}

	/**
     * 删除投訴对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteQwbComplaintByIds(String ids)
	{
		return qwbComplaintMapper.deleteQwbComplaintByIds(Convert.toStrArray(ids));
	}
	
}
