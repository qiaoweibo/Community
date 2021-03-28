package com.qwb.community.project.system.qwbCarApply.mapper;

import com.qwb.community.project.system.qwbCarApply.domain.QwbCarApply;

import java.util.List;

/**
 * 车位申请 数据层
 * 
 * @author qwb
 * @date 2019-04-28
 */
public interface QwbCarApplyMapper 
{
	/**
     * 查询车位申请信息
     * 
     * @param id 车位申请ID
     * @return 车位申请信息
     */
	public QwbCarApply selectQwbCarApplyById(Integer id);
	
	/**
     * 查询车位申请列表
     * 
     * @param qwbCarApply 车位申请信息
     * @return 车位申请集合
     */
	public List<QwbCarApply> selectQwbCarApplyList(QwbCarApply qwbCarApply);
	
	/**
     * 新增车位申请
     * 
     * @param qwbCarApply 车位申请信息
     * @return 结果
     */
	public int insertQwbCarApply(QwbCarApply qwbCarApply);
	
	/**
     * 修改车位申请
     * 
     * @param qwbCarApply 车位申请信息
     * @return 结果
     */
	public int updateQwbCarApply(QwbCarApply qwbCarApply);
	
	/**
     * 删除车位申请
     * 
     * @param id 车位申请ID
     * @return 结果
     */
	public int deleteQwbCarApplyById(Integer id);
	
	/**
     * 批量删除车位申请
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbCarApplyByIds(String[] ids);
	
}