package com.qwb.community.project.system.qwbCost.service;

import com.qwb.community.project.system.qwbCost.domain.QwbCost;

import java.util.List;

/**
 * 費用 服务层
 * 
 * @author qwb
 * @date 2019-04-23
 */
public interface IQwbCostService 
{
	/**
     * 查询費用信息
     * 
     * @param id 費用ID
     * @return 費用信息
     */
	public QwbCost selectQwbCostById(Integer id);
	
	/**
     * 查询費用列表
     * 
     * @param qwbCost 費用信息
     * @return 費用集合
     */
	public List<QwbCost> selectQwbCostList(QwbCost qwbCost);
	
	/**
     * 新增費用
     * 
     * @param qwbCost 費用信息
     * @return 结果
     */
	public int insertQwbCost(QwbCost qwbCost);
	
	/**
     * 修改費用
     * 
     * @param qwbCost 費用信息
     * @return 结果
     */
	public int updateQwbCost(QwbCost qwbCost);

		
	/**
     * 删除費用信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbCostByIds(String ids);



	/**
	 * 导入费用数据
	 *
	 * @param userList 用户数据列表
	 * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
	 * @return 结果
	 */
	public String importCost(List<QwbCost> qwbCostList, Boolean isUpdateSupport);

}
