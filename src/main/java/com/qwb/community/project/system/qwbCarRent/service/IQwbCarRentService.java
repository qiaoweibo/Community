package com.qwb.community.project.system.qwbCarRent.service;

import com.qwb.community.project.system.qwbCarRent.domain.QwbCarRent;

import java.util.List;

/**
 * 车位 服务层
 * 
 * @author qwb
 * @date 2019-04-28
 */
public interface IQwbCarRentService 
{
	/**
     * 查询车位信息
     * 
     * @param id 车位ID
     * @return 车位信息
     */
	public QwbCarRent selectQwbCarRentById(Integer id);
	
	/**
     * 查询车位列表
     * 
     * @param qwbCarRent 车位信息
     * @return 车位集合
     */
	public List<QwbCarRent> selectQwbCarRentList(QwbCarRent qwbCarRent);
	
	/**
     * 新增车位
     * 
     * @param qwbCarRent 车位信息
     * @return 结果
     */
	public int insertQwbCarRent(QwbCarRent qwbCarRent);
	
	/**
     * 修改车位
     * 
     * @param qwbCarRent 车位信息
     * @return 结果
     */
	public int updateQwbCarRent(QwbCarRent qwbCarRent);
		
	/**
     * 删除车位信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbCarRentByIds(String ids);


	/**
	 * 导入可租用车位信息
	 *
	 * @param userList 用户数据列表
	 * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
	 * @return 结果
	 */
	public String importCarRent(List<QwbCarRent> qwbCarRentList, Boolean isUpdateSupport);
	
}
