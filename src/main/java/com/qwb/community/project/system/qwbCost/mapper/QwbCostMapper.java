package com.qwb.community.project.system.qwbCost.mapper;

import com.qwb.community.project.system.qwbCost.domain.QwbCost;
import java.util.List;
import java.util.Map;

/**
 * 費用 数据层
 * 
 * @author qwb
 * @date 2019-04-23
 */
public interface QwbCostMapper 
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
     * 删除費用
     * 
     * @param id 費用ID
     * @return 结果
     */
	public int deleteQwbCostById(Integer id);
	
	/**
     * 批量删除費用
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbCostByIds(String[] ids);

	/*统计图表操作*/
	public List<Map> selectNoElectricity();
	public List<Map> selectElectricity();

	public List<Map> selectNoGas();
	public List<Map> selectGas();

	public List<Map> selectNoWater();
	public List<Map> selectWater();

	public List<Map> selectNoProperty();
	public List<Map> selectProperty();

	public List<Map> selectNoTotal();
	public List<Map> selectTotal();
}