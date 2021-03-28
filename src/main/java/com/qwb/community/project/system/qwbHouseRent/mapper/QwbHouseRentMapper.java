package com.qwb.community.project.system.qwbHouseRent.mapper;

import com.qwb.community.project.system.qwbHouseRent.domain.QwbHouseRent;

import java.util.List;

/**
 * 租房 数据层
 * 
 * @author qwb
 * @date 2019-05-04
 */
public interface QwbHouseRentMapper 
{
	/**
     * 查询租房信息
     * 
     * @param id 租房ID
     * @return 租房信息
     */
	public QwbHouseRent selectQwbHouseRentById(Integer id);
	
	/**
     * 查询租房列表
     * 
     * @param qwbHouseRent 租房信息
     * @return 租房集合
     */
	public List<QwbHouseRent> selectQwbHouseRentList(QwbHouseRent qwbHouseRent);
	
	/**
     * 新增租房
     * 
     * @param qwbHouseRent 租房信息
     * @return 结果
     */
	public int insertQwbHouseRent(QwbHouseRent qwbHouseRent);
	
	/**
     * 修改租房
     * 
     * @param qwbHouseRent 租房信息
     * @return 结果
     */
	public int updateQwbHouseRent(QwbHouseRent qwbHouseRent);
	
	/**
     * 删除租房
     * 
     * @param id 租房ID
     * @return 结果
     */
	public int deleteQwbHouseRentById(Integer id);
	
	/**
     * 批量删除租房
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbHouseRentByIds(String[] ids);
	
}