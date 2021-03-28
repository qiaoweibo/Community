package com.qwb.community.project.system.qwbExchange.mapper;

import com.qwb.community.project.system.qwbExchange.domain.QwbExchange;
import java.util.List;	

/**
 * 社區交流 数据层
 * 
 * @author qwb
 * @date 2019-04-23
 */
public interface QwbExchangeMapper 
{
	/**
     * 查询社區交流信息
     * 
     * @param id 社區交流ID
     * @return 社區交流信息
     */
	public QwbExchange selectQwbExchangeById(Integer id);
	
	/**
     * 查询社區交流列表
     * 
     * @param qwbExchange 社區交流信息
     * @return 社區交流集合
     */
	public List<QwbExchange> selectQwbExchangeList(QwbExchange qwbExchange);
	
	/**
     * 新增社區交流
     * 
     * @param qwbExchange 社區交流信息
     * @return 结果
     */
	public int insertQwbExchange(QwbExchange qwbExchange);
	
	/**
     * 修改社區交流
     * 
     * @param qwbExchange 社區交流信息
     * @return 结果
     */
	public int updateQwbExchange(QwbExchange qwbExchange);
	
	/**
     * 删除社區交流
     * 
     * @param id 社區交流ID
     * @return 结果
     */
	public int deleteQwbExchangeById(Integer id);
	
	/**
     * 批量删除社區交流
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteQwbExchangeByIds(String[] ids);
	
}