package com.qwb.community.project.system.qwbRepair.service;

import com.qwb.community.project.system.qwbRepair.domain.QwbRepair;
import java.util.List;

/**
 * 維修 服务层
 * 
 * @author qwb
 * @date 2019-04-23
 */
public interface IQwbRepairService 
{
	/**
     * 查询維修信息
     * 
     * @param id 維修ID
     * @return 維修信息
     */
	public QwbRepair selectQwbRepairById(Integer id);
	
	/**
     * 查询維修列表
     * 
     * @param qwbRepair 維修信息
     * @return 維修集合
     */
	public List<QwbRepair> selectQwbRepairList(QwbRepair qwbRepair);
	
	/**
     * 新增維修
     * 
     * @param qwbRepair 維修信息
     * @return 结果
     */
	public int insertQwbRepair(QwbRepair qwbRepair);
	
	/**
     * 修改維修
     * 
     * @param qwbRepair 維修信息
     * @return 结果
     */
	public int updateQwbRepair(QwbRepair qwbRepair);
		
	/**
     * 删除維修信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbRepairByIds(String ids);
	
}
