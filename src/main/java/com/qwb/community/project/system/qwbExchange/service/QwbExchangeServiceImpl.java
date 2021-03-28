package com.qwb.community.project.system.qwbExchange.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qwb.community.project.system.qwbExchange.mapper.QwbExchangeMapper;
import com.qwb.community.project.system.qwbExchange.domain.QwbExchange;
import com.qwb.community.common.utils.text.Convert;

/**
 * 社區交流 服务层实现
 * 
 * @author qwb
 * @date 2019-04-23
 */
@Service
public class QwbExchangeServiceImpl implements IQwbExchangeService 
{
	@Autowired
	private QwbExchangeMapper qwbExchangeMapper;

	/**
     * 查询社區交流信息
     * 
     * @param id 社區交流ID
     * @return 社區交流信息
     */
    @Override
	public QwbExchange selectQwbExchangeById(Integer id)
	{
	    return qwbExchangeMapper.selectQwbExchangeById(id);
	}
	
	/**
     * 查询社區交流列表
     * 
     * @param qwbExchange 社區交流信息
     * @return 社區交流集合
     */
	@Override
	public List<QwbExchange> selectQwbExchangeList(QwbExchange qwbExchange)
	{
	    return qwbExchangeMapper.selectQwbExchangeList(qwbExchange);
	}
	
    /**
     * 新增社區交流
     * 
     * @param qwbExchange 社區交流信息
     * @return 结果
     */
	@Override
	public int insertQwbExchange(QwbExchange qwbExchange)
	{
	    return qwbExchangeMapper.insertQwbExchange(qwbExchange);
	}
	
	/**
     * 修改社區交流
     * 
     * @param qwbExchange 社區交流信息
     * @return 结果
     */
	@Override
	public int updateQwbExchange(QwbExchange qwbExchange)
	{
	    return qwbExchangeMapper.updateQwbExchange(qwbExchange);
	}

	/**
     * 删除社區交流对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteQwbExchangeByIds(String ids)
	{
		return qwbExchangeMapper.deleteQwbExchangeByIds(Convert.toStrArray(ids));
	}
	
}
