package com.qwb.community.project.system.qwbHouseRent.service;

import java.util.List;

import com.qwb.community.project.system.qwbHouseRent.domain.QwbHouseRent;
import com.qwb.community.project.system.qwbHouseRent.mapper.QwbHouseRentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.common.utils.text.Convert;

/**
 * 租房 服务层实现
 * 
 * @author qwb
 * @date 2019-05-04
 */
@Service
public class QwbHouseRentServiceImpl implements IQwbHouseRentService 
{
	@Autowired
	private QwbHouseRentMapper qwbHouseRentMapper;

	/**
     * 查询租房信息
     * 
     * @param id 租房ID
     * @return 租房信息
     */
    @Override
	public QwbHouseRent selectQwbHouseRentById(Integer id)
	{
	    return qwbHouseRentMapper.selectQwbHouseRentById(id);
	}
	
	/**
     * 查询租房列表
     * 
     * @param qwbHouseRent 租房信息
     * @return 租房集合
     */
	@Override
	public List<QwbHouseRent> selectQwbHouseRentList(QwbHouseRent qwbHouseRent)
	{
	    return qwbHouseRentMapper.selectQwbHouseRentList(qwbHouseRent);
	}
	
    /**
     * 新增租房
     * 
     * @param qwbHouseRent 租房信息
     * @return 结果
     */
	@Override
	public int insertQwbHouseRent(QwbHouseRent qwbHouseRent)
	{
	    return qwbHouseRentMapper.insertQwbHouseRent(qwbHouseRent);
	}
	
	/**
     * 修改租房
     * 
     * @param qwbHouseRent 租房信息
     * @return 结果
     */
	@Override
	public int updateQwbHouseRent(QwbHouseRent qwbHouseRent)
	{
	    return qwbHouseRentMapper.updateQwbHouseRent(qwbHouseRent);
	}

	/**
     * 删除租房对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteQwbHouseRentByIds(String ids)
	{
		return qwbHouseRentMapper.deleteQwbHouseRentByIds(Convert.toStrArray(ids));
	}
	
}
